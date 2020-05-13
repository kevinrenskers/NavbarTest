import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationController?.navigationBar.shadowImage = UIImage()
    navigationController?.navigationBar.isTranslucent = true
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    transitionCoordinator?.animate(alongsideTransition: { [weak self] (context) in
      self?.navigationController?.navigationBar.tintColor = .black
      self?.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    }, completion: nil)
  }
}
