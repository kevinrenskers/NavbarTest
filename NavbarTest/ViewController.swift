import UIKit

class ColorTransitionNavigationController: UINavigationController {
  func setBarTintColor(color: UIColor, animated: Bool, transitionCoordinator: UIViewControllerTransitionCoordinator?) {
    guard let transitionCoordinator = transitionCoordinator, animated else {
      return
    }

    transitionCoordinator.animateAlongsideTransition(in: view, animation: { [weak self] (context) in
      self?.navigationBar.tintColor = color
      self?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: color]
    }, completion:nil)
  }
}

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationController?.navigationBar.shadowImage = UIImage()
    navigationController?.navigationBar.isTranslucent = true

    navigationController?.navigationBar.tintColor = .black
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    guard let navigationController = navigationController as? ColorTransitionNavigationController else { return }
    navigationController.setBarTintColor(color: UIColor.black, animated: animated, transitionCoordinator: transitionCoordinator)
  }
}
