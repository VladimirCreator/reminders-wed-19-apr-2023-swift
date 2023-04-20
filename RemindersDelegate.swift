import UIKit

final class RemindersDelegate: UIResponder, UIApplicationDelegate {
    var windows: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        window?.rootViewController = UINavigationController(rootViewController: RemindersViewController())
    }
}
