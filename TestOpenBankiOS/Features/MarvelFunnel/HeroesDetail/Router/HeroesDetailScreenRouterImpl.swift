import Foundation

class HeroesDetailScreenRouterImpl: BaseRouter {

    var mainRouter: Router

    init(mainRouter: Router) {
        self.mainRouter = mainRouter
    }

}

extension HeroesDetailScreenRouterImpl: HeroesDetailScreenRouter {
 
}
