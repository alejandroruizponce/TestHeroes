import UIKit

class BaseViewController: UIViewController {
    
    

    // MARK: - Init and Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = R.string.titleNavigationBar^
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)


    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

  
}
