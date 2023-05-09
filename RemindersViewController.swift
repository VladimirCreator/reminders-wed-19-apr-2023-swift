import UIKit

// MARK:- `UIReminderTableViewController`

internal final class UIReminderTableViewController: UIViewController {

    // MARK:- ...

    private final var collectionView: UICollectionView!
    private final var segmentedControl: UISegmentedControl!

    // MARK:- `UIViewController`

    // MARK: Life Cycle

    // MARK: `loadView`
    public final override func loadView() {
        let collectionViewLayout = {
            let collectionViewLayoutConfiguration = UICollectionLayoutListConfiguration(appearance: .plain)
            let collectionViewLayout = UICollectionViewCompositionalLayout.list(using: viewLayoutConfiguration)

            return collectionViewLayout
        }()
        self.collectionView = UICollectionView(frame: .null, collectionViewLayout: collectionViewLayout)
        self.segmentedControl = UISegmentedControl(frame: .null)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.view = collectionView
    }

    // MARK: `viewDidLoad`
    public final override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.delegate = self
        self.navigationController?.navigationBar.prefersLargeTitles = true

        self.title = "Reminder View Controller"
    }

    // MARK: `viewWillAppear`
    public final override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        collectionView.indexPathsForSelectedItems?.forEach { indexPath in
            self.collectionView.deselectItem(at: indexPath, animated: true)
        }
    }

    // MARK: `viewDidAppear`
    public final override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.collectionView.flashScrollIndicators()
    }
}
