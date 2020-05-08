import Foundation

// MARK: - View
protocol HeroesScreenView: BaseView {
    
    var presenter: HeroesScreenPresenter? { get set }
    
    func fetchHeroes(_ listHeroes: [Hero])
    
}

// MARK: - Presenter
protocol HeroesScreenPresenter: class {
    
    var view: HeroesScreenView? { get set }
    var interactor: HeroesScreenInteractor? { get set }
    var router: HeroesScreenRouter? { get set }
    
    func viewWillAppear()
    func viewDidLoad()
    
    func goToDetailScreen(_ hero: Hero)

}

// MARK: - Interactor
protocol HeroesScreenInteractorCallback: class {
    func fetchHeroes(_ listHeroes: [Hero])
}

protocol HeroesScreenInteractor: class {
    var presenter: HeroesScreenInteractorCallback? { get set }
    
    func getHeroes()
}

// MARK: - Router
protocol HeroesScreenRouter: class {
    func createHeroesScreen()
    func goToDetailScreen(_ hero: Hero)
}
