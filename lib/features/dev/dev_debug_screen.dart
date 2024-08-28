import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/navigation/route_generator.dart';
import 'package:kebo_app/core/network/app_client.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:intl/intl.dart';
import 'package:shake/shake.dart';

int shakeCounter = 0;
ShakeDetector shake = ShakeDetector.autoStart(onPhoneShake: () {
  shakeCounter++;
  // if (shakeCounter.isOdd) return;
  rootNavigatorKey.currentState
      ?.push(MaterialPageRoute(builder: (context) => const DevDebugScreen()));
});

class DevDebugScreen extends StatefulWidget {
  const DevDebugScreen({super.key});

  @override
  State<DevDebugScreen> createState() => _DevDebugScreenState();
}

class _DevDebugScreenState extends State<DevDebugScreen> {
  String? appVersion;
  String? buildNumber;
  String? deviceName;
  String? token;

  @override
  void initState() {
    super.initState();
    // on widget build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getAppVersion();
      getDeviceName();
      getToken();
    });
  }

  void getAppVersion() {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        appVersion = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    });
  }

  void getDeviceName() {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      deviceInfo.androidInfo.then((AndroidDeviceInfo androidInfo) {
        setState(() {
          deviceName = 'Android ${androidInfo.model}';
        });
      });
    } else if (Platform.isIOS) {
      deviceInfo.iosInfo.then((IosDeviceInfo iosInfo) {
        setState(() {
          deviceName = 'Ios ${iosInfo.utsname.machine}';
        });
      });
    }
  }

  void getToken() async {
    final _token = await LocalDataHelper.instance.getToken();
    setState(() {
      token = _token ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    final copyText = '''
App version: $appVersion
Build number: $buildNumber
Device name: $deviceName
Token: $token
''';
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: const Text(
            'Debug mode',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: copyText));
              },
              icon: const Icon(Icons.copy),
            )
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildText("App version", appVersion ?? ""),
              const Divider(),
              _buildText("Build number", buildNumber ?? ""),
              const Divider(),
              _buildText("Device name", deviceName ?? ""),
              const Divider(),
              _buildText("Token", token ?? ""),
              const Divider(),
              Center(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue.withOpacity(0.3))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ApiDebugScreen()));
                    },
                    child: const Text('View API logs')),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(String title, String value) {
    return Text.rich(
      TextSpan(
        text: "$title: ",
        style: const TextStyle(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: value,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Clipboard.setData(ClipboardData(text: value));
                })
        ],
      ),
    );
  }
}

class ApiDebugScreen extends StatefulWidget {
  const ApiDebugScreen();

  @override
  State<ApiDebugScreen> createState() => _ApiDebugScreenState();
}

class _ApiDebugScreenState extends State<ApiDebugScreen> {
  List<LogModel> get apiLogger => AppClient.apiLogger;

  @override
  Widget build(BuildContext context) {
    // build list view of expansion api logger
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text(
          'API logs',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: apiLogger.length,
        itemBuilder: (context, index) {
          final log = apiLogger[index];
          return ExpansionTile(
            backgroundColor: Colors.blue[50],
            childrenPadding: const EdgeInsets.all(15),
            title: Text("${log.method} ${log.path}",
                style: TextStyle(
                    fontSize: 12,
                    color: log.error != null ? Colors.red : Colors.blue)),
            subtitle: Text(
              log.time == null
                  ? "null"
                  : DateFormat("hh:mm:ss").format(log.time!),
              style: const TextStyle(fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: log.text));
              },
              icon: const Icon(Icons.copy),
            ),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Method: ${log.method}"),
                  const Divider(),
                  // Text("Full path: ${log.baseUrl}${log.path}"),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: "Full path: "),
                        TextSpan(
                            text: "${log.baseUrl}${log.path}",
                            style: const TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  const Divider(),
                  Text("Data: ${log.data ?? "No data"}"),
                  const Divider(),
                  Text("Response: ${log.response}"),
                  const Divider(),
                  Text("Error: ${log.error}"),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
