import UIKit

// MARK:- `UICollectionViewDelegate`

extension RemindersViewController: UICollectionViewDelegate {

    // MARK:- `UICollectionViewDelegate`

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // ...
    }
}

// MARK:- `UINavigationControllerDelegate`

extension RemindersViewController: UINavigationControllerDelegate {

    // MARK:- `UINavigationControllerDelegate`

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        // ...
    }
}

// MARK: `-UITabBarDelegate`

extension RemindersViewController: UITabBarDelegate {

    // MARK: `-UITabBarDelegate`

}
