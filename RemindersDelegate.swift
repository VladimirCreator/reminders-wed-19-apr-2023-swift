import UIKit

// MARK:- `UIApplicationDelegate`

@main
internal final class RemindersDelegate: UIResponder, UIApplicationDelegate {

    // MARK:- ...

    var windows: UIWindow?

    // MARK:- `UIApplicationDelegate`

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window?.rootViewController = UINavigationController(rootViewController: RemindersViewController())
        return true
    }
}
