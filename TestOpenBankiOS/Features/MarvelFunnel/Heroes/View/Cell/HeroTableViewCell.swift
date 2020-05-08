
import UIKit

class HeroTableViewCell: UITableViewCell {
    
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
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
