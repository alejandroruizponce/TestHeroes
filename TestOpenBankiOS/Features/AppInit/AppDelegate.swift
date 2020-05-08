import UIKit

@UIApplicationMain
class AppDelegate: BaseApplicationDelegate {

    override var services: [ApplicationService] {
        return [
            AppDependenciesService(),
            AppInitService()
        ]
    }
}
