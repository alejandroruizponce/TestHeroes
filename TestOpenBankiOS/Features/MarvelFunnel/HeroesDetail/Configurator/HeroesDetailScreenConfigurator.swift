import UIKit

class HeroesDetailScreenConfigurator {

    class func createModule(_ hero: Hero) -> UIViewController {

        let view = HeroesDetailScreenViewController()
        let interactor: HeroesDetailScreenInteractorImpl = HeroesDetailScreenInteractorImpl()
        let router: HeroesDetailScreenRouterImpl = HeroesDetailScreenRouterImpl(mainRouter: RouterImpl(parentVC: view))
        let presenter: HeroesDetailScreenPresenterImpl = HeroesDetailScreenPresenterImpl()
        view.presenter = presenter
        
        presenter.view = view
        view.heroInfo = hero
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
   
}
