import Foundation

class HeroesDetailScreenPresenterImpl: BasePresenter {
    // MARK: - Properties
    weak var view: HeroesDetailScreenView?
    var interactor: HeroesDetailScreenInteractor?
    var router: HeroesDetailScreenRouter?
        
}

extension HeroesDetailScreenPresenterImpl: HeroesDetailScreenPresenter {
    func viewDidLoad() {

    }
        
    func viewWillAppear() {
    
    }
        
}

extension HeroesDetailScreenPresenterImpl: HeroesDetailScreenInteractorCallback {

}


