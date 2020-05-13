import UIKit

class WhiteTitleViewController: UIViewController {
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    guard let navigationController = navigationController as? ColorTransitionNavigationController else { return }
    navigationController.setBarTintColor(color: UIColor.white, animated: animated, transitionCoordinator: transitionCoordinator)
  }
}
