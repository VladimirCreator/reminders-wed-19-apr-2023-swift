import UIKit

final class RemindersViewController: UIViewController {
    private var tableView: UITableView!

    final public override func loadView() {
        self.tableView = UITableView(frame: .infinite, style: .plain)

        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view = tableView
    }
    
    // MARK: Life Cycle
    
    final public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let indexPath = self.tableView.indexPathForSelectedRow {
            self.tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    final public override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Reminders"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension RemindersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: nil)

        cell.textLabel?.text = "The method is not implemented."
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0x01
    }
}

extension RemindersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("The method is not implemented.")
    }
}

// MARK: `UINavigationControllerDelegate`

extension RemindersViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("The method is not implemented.")
    }
}
