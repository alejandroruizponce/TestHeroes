import UIKit
import Nuke

class HeroesScreenViewController: BaseViewController {

    // MARK: - IBOutlets
    @IBOutlet var heroesTableView: UITableView!
    
    // MARK: - Properties
	var presenter: HeroesScreenPresenter?
    var listHeroes: [Hero] = []
    
    // MARK: - Life Cycle
	override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
        
        heroesTableView.register(UINib(nibName: HeroTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: HeroTableViewCell.identifier)
        heroesTableView.delegate = self
        heroesTableView.dataSource = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.presenter?.viewWillAppear()
    }
}

extension HeroesScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHeroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = heroesTableView.dequeueReusableCell(withIdentifier: HeroTableViewCell.identifier, for: indexPath) as! HeroTableViewCell
        
        cell.nameHero.text = listHeroes[indexPath.row].name
        cell.descriptionHero.text = listHeroes[indexPath.row].description
        cell.selectionStyle = .none
        
        let options = ImageLoadingOptions(
            placeholder: UIImage(named: "placeholder"),
            transition: .fadeIn(duration: 0.33)
        )

        if let imageURL = URL(string: listHeroes[indexPath.row].image) {
            Nuke.loadImage(with: imageURL, options: options, into: cell.imageHero)
        }
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presenter?.goToDetailScreen(listHeroes[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
           
        UIView.animate(withDuration: 0.8, delay: 0.0, animations: {
                cell.alpha = 1
        })
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }

}

extension HeroesScreenViewController: HeroesScreenView {
    func fetchHeroes(_ listHeroes: [Hero]) {
        self.listHeroes = listHeroes
        heroesTableView.reloadData()
    }
    
}
