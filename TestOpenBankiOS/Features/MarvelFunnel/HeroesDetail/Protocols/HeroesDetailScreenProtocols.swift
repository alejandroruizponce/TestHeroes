import Foundation

// MARK: - View
protocol HeroesDetailScreenView: BaseView {
    
    var presenter: HeroesDetailScreenPresenter? { get set }
    
}

// MARK: - Presenter
protocol HeroesDetailScreenPresenter: class {
    
    var view: HeroesDetailScreenView? { get set }
    var interactor: HeroesDetailScreenInteractor? { get set }
    var router: HeroesDetailScreenRouter? { get set }
    
    func viewWillAppear()
    func viewDidLoad()
    
    
}

// MARK: - Interactor
protocol HeroesDetailScreenInteractorCallback: class {

}

protocol HeroesDetailScreenInteractor: class {
    var presenter: HeroesDetailScreenInteractorCallback? { get set }

}

// MARK: - Router
protocol HeroesDetailScreenRouter: class {

}
