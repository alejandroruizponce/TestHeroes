    import Foundation

    class HeroesScreenPresenterImpl: BasePresenter {
        // MARK: - Properties
        weak var view: HeroesScreenView?
        var interactor: HeroesScreenInteractor?
        var router: HeroesScreenRouter?
        
    }

    extension HeroesScreenPresenterImpl: HeroesScreenPresenter {
        func viewDidLoad() {
            interactor?.getHeroes()
        }
        
        func viewWillAppear() {
            
        }
        
        func goToDetailScreen(_ hero: Hero) {
            router?.goToDetailScreen(hero)
        }
        
    }

    extension HeroesScreenPresenterImpl: HeroesScreenInteractorCallback {
        func fetchHeroes(_ listHeroes: [Hero]) {
            view?.fetchHeroes(listHeroes)
    }
}


