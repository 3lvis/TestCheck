import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        if TestCheck.isTesting() {
            print("Testing mode")
        } else {
            print("Not testing mode")
        }

        return true
    }
}

