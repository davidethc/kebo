import UIKit
import Flutter
import Firebase
import FirebaseAuth

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    GeneratedPluginRegistrant.register(with: self)
   
      
let controller = window.rootViewController as! FlutterViewController
        let flavorChannel = FlutterMethodChannel(
                name: "flavor",
        binaryMessenger: controller.binaryMessenger)
        flavorChannel.setMethodCallHandler({(call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in

                if call.method == "getFlavor" {
                    let flavor = Bundle.main.infoDictionary?["FLAVOR"] as? String
                    result(flavor)
                } else {
                    result(FlutterMethodNotImplemented)
                }
        })

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

   override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    let firebaseAuth = Auth.auth()
    firebaseAuth.setAPNSToken(deviceToken, type: AuthAPNSTokenType.unknown)

}

  override func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
      let firebaseAuth = Auth.auth()
      if (firebaseAuth.canHandleNotification(userInfo)){
          print(userInfo)
          return
      }
  }
}
