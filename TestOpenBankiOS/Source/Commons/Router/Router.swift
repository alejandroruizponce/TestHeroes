import Foundation
import UIKit

protocol Router {

    // MARK: - Heroes Screen
    func createHeroesScreen()
    
    // MARK: - Heroes Detail Screen
    func createHeroesDetailScreen(_ hero: Hero)

}
