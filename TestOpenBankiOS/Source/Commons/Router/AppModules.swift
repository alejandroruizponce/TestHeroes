import Foundation
import UIKit

class AppModules {
    
    class func createMainModule() -> UIViewController {
        return createHeroesModule()
    }

    // MARK: - Heroes Screen
    class func createHeroesModule() -> UIViewController {
         return UINavigationController(rootViewController: HeroesScreenConfigurator.createModule())
    }
    
    // MARK: - Heroes Detail Screen
    class func createHeroesDetailModule(_ hero: Hero) -> UIViewController {
         return HeroesDetailScreenConfigurator.createModule(hero)
    }
    
    

}
