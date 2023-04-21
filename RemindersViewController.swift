import UIKit

final class RemindersViewController: UIViewController {
    private var collectionView: UICollectionView!

    final public override func loadView() {
        self.tableView = UITableView(frame: .infinite, style: .plain)

        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.view = tableView
    }
    
    // MARK: Life Cycle
    
    final public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let indexPath = self.tableView.indexPathForSelectedRow {
            self.tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    final public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.tableView.flashScrollIndicators()
    }

    final public override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Reminders"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: `UICollectionViewDataSource`

extension RemindersViewController: UICollectionViewDataSource= {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Int> { cell, indexPath, itemIdentifier in
            var contentConfiguration = cell.defaultContentConfiguration()
            contentConfiguration.text = "This closue is not implemented."

            cell.contentConfiguration = contentConfiguration
        }
        return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: 0)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0x01
    }
}

// MARK: `UICollectionViewDelegate`

extension RemindersViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // ...
    }
}

// MARK: `UINavigationControllerDelegate`

extension RemindersViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("The method is not implemented.")
    }
}
