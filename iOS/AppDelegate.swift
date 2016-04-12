import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        guard let window = self.window else { fatalError("Window not found") }

        window.rootViewController = RootController()
        window.makeKeyAndVisible()

        if TestCheck.isTesting {
            print("Testing mode")
        } else {
            print("Not testing mode")
        }

        return true
    }
}