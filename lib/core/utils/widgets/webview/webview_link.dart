import 'package:flutter/material.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class WebviewLink extends StatefulWidget {
  final String url;
  const WebviewLink({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<WebviewLink> createState() => _WebviewLinkState();
}

class _WebviewLinkState extends State<WebviewLink> {
  late final WebViewController _controller;
  late final PlatformWebViewControllerCreationParams params;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    _controller = WebViewController.fromPlatformCreationParams(params);
    _controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            isLoading = true;
            setState(() {});
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            isLoading = false;
            setState(() {});
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('Page error: ${error.description}');
          },
          onNavigationRequest: (NavigationRequest request) =>
              NavigationDecision.navigate,
          onUrlChange: (UrlChange change) async {},
        ),
      )
      ..addJavaScriptChannel('Toaster', onMessageReceived: (message) {
        debugPrint('JavaScript message received: ${message.message}');
      })
      ..loadRequest(Uri.parse(widget.url));

    if (_controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (_controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 30,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close, color: Colors.black)),
        title: Text(
          S.current.close,
          style:
              context.theme.textTheme.titleSmall?.copyWith(color: Colors.black),
        ),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor))
          : WebViewWidget(controller: _controller),
    );
  }
}
