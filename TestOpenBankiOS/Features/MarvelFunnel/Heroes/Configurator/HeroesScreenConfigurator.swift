import UIKit

class HeroesScreenConfigurator {

    class func createModule() -> UIViewController {

        let view = HeroesScreenViewController()
        let interactor: HeroesScreenInteractorImpl = HeroesScreenInteractorImpl()
        let router: HeroesScreenRouterImpl = HeroesScreenRouterImpl(mainRouter: RouterImpl(parentVC: view))
        let presenter: HeroesScreenPresenterImpl = HeroesScreenPresenterImpl()
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
   
}
