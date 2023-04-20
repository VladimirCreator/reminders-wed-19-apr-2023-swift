import UIKit

final class RemindersDelegate: UIResponder, UIApplicationDelegate {
    var windows: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window?.rootViewController = UINavigationController(rootViewController: RemindersViewController())
        return true
    }
}
