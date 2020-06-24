// import Cocoa
// import FlutterMacOS

// @NSApplicationMain
// class AppDelegate: FlutterAppDelegate {
//   override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
//     return true
//   }
// }
@import UIKit;
@import Firebase;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [FIRApp configure];
  return YES;
}