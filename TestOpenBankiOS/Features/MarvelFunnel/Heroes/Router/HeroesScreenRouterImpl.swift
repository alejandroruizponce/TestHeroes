import Foundation

class HeroesScreenRouterImpl: BaseRouter {

    var mainRouter: Router

    init(mainRouter: Router) {
        self.mainRouter = mainRouter
    }

}

extension HeroesScreenRouterImpl: HeroesScreenRouter {
    func createHeroesScreen() {
        self.mainRouter.createHeroesScreen()
    }
    
    func goToDetailScreen(_ hero: Hero) {
        self.mainRouter.createHeroesDetailScreen(hero)
    }
    
    
}
