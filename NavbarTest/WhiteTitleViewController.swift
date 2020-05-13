import UIKit

class WhiteTitleViewController: UIViewController {
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    transitionCoordinator?.animate(alongsideTransition: { [weak self] (context) in
      self?.navigationController?.navigationBar.tintColor = .white
      self?.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }, completion: nil)
  }
}
