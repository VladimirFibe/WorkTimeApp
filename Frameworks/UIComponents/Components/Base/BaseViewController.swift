import UIKit

open class BaseViewController: UIViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

@objc extension BaseViewController {
    open func setupViews() {
        print(#function)
    }
}
