import UIKit

extension RemindersViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Int> { cell, indexPath, itemIdentifier in
            var contentConfiguration = cell.defaultContentConfiguration()
            contentConfiguration.text = "This closue is not implemented."

            cell.contentConfiguration = contentConfiguration
        }
        return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: 0)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0x00
    }
}
