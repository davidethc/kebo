import 'dart:io';

import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: constant_identifier_names
const String SUPPORT_EMAIL = 'contact@join-worldwide.com';

extension ExtensionOnContext on BuildContext {
  Size get size => MediaQuery.sizeOf(this);

  double get w => size.width;

  double get h => size.height;

  ThemeData get theme => Theme.of(this);

  Future<void> copyClip(String content) =>
      Clipboard.setData(ClipboardData(text: content));

  void launchSupportMail({String subject = 'Support'}) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri rocketUri = Uri(
        scheme: 'mailto',
        path: SUPPORT_EMAIL,
        query: encodeQueryParameters(
            {'subject': subject, 'body': '<user-id: >\n\nHello!\n'}));
    launchUrl(rocketUri);
  }

  void launchSupportCall({String phone = '+84123456789'}) {
    final Uri rocketUri = Uri(
      scheme: 'tel',
      path: phone,
    );
    launchUrl(rocketUri);
  }

  Future<void> launchWhatsapp() async {
    final Uri uri = Uri.parse(
        'https://wa.me/?text=Hey buddy, try this super cool new app!');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      LoggerUtils.d('cannot launch url');
    }
  }

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      LoggerUtils.d('cannot launch url');
    }
  }

  Future<void> launchMapsDirection(double lat, double lng) async {
    late String url;
    if (Platform.isAndroid) {
      url = 'google.navigation:q=$lat,$lng';
    } else {
      url = 'comgooglemaps://?daddr=$lat,$lng';
    }
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      LoggerUtils.d('cannot launch url');
    }
  }

  void navigate(String routeName,
      {bool offCurrentScreen = false,
      bool clearStack = false,
      Object? arguments}) {
    if (offCurrentScreen) {
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
    } else if (clearStack) {
      Navigator.of(this).popUntil((r) => r.isFirst);
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
    }
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pop() => Navigator.of(this).maybePop();
}
