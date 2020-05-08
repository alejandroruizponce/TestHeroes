import Foundation
import UIKit

// swiftlint:disable type_body_length file_length

class RouterImpl: BaseRouter, Router {
    
    weak var parentVC: UIViewController?

    init(parentVC: UIViewController) {
        self.parentVC = parentVC
    }
    
    // MARK: - Heroes View
    func createHeroesScreen() {
        let module = AppModules.createMainModule()
        self.parentVC?.present(module, animated: true, completion: nil)
     }
    
    // MARK: - Heroes View
    func createHeroesDetailScreen(_ hero: Hero) {
        let module = AppModules.createHeroesDetailModule(hero)
        self.parentVC?.navigationController?.pushViewController(module, animated: true)
     }

}
