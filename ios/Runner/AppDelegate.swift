<<<<<<< HEAD
import Flutter
import UIKit

@main
=======
import UIKit
import Flutter

@UIApplicationMain
>>>>>>> 3dd199c (Initial commit to Flightpages branch)
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
