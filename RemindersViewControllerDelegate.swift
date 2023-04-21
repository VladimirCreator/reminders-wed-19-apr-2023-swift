import UIKit

// MARK: `UINavigationControllerDelegate`

extension RemindersViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        // ...
    }
}

// MARK: `UICollectionViewDelegate`

extension RemindersViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // ...
    }
}

// MARK: `UITabBarDelegate`

extension RemindersViewController: UITabBarDelegate {
    // ...
}
