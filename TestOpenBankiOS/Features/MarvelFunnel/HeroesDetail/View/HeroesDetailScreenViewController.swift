import UIKit
import Nuke

class HeroesDetailScreenViewController: BaseViewController {

    // MARK: - IBOutlets
    @IBOutlet var imageHero: UIImageView!{
        didSet {
            let radius = imageHero.frame.width / 2
            imageHero.layer.cornerRadius = radius
            imageHero.layer.masksToBounds = true
        }
    }
    @IBOutlet var nameHero: UILabel!
    @IBOutlet var descriptionHero: UILabel!
    
    // MARK: - Properties
	var presenter: HeroesDetailScreenPresenter?
    var heroInfo: Hero = Hero()
    
    // MARK: - Life Cycle
	override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.presenter?.viewWillAppear()
        self.setupData()
    }
    
    func setupData() {
        nameHero.text = heroInfo.name
        descriptionHero.text = heroInfo.description
        
        let options = ImageLoadingOptions(
            placeholder: UIImage(named: "placeholder"),
            transition: .fadeIn(duration: 0.33)
        )

        if let imageURL = URL(string: heroInfo.image) {
            Nuke.loadImage(with: imageURL, options: options, into: imageHero)
        }
        
    }
}



extension HeroesDetailScreenViewController: HeroesDetailScreenView {


}
