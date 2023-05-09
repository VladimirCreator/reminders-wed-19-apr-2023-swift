import UIKit

internal final class RemindersViewController: UIViewController {
    private var collectionView: UICollectionView!
    private var segmentedControl: UISegmentedControl!

    final public override func loadView() {
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
    
    // MARK: Life Cycle
    
    final public override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.delegate = self
        self.navigationController?.navigationBar.prefersLargeTitles = true

        self.title = "Reminders"
    }

    final public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        collectionView.indexPathsForSelectedItems?.forEach { indexPath in
            self.collectionView.deselectItem(at: indexPath, animated: true)
        }
    }

    final public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.collectionView.flashScrollIndicators()
    }
}
