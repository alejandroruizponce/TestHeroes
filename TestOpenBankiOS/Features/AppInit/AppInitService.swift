import Foundation
import UIKit

final class AppInitService: NSObject, ApplicationService {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)

        let vc = AppModules.createMainModule()

        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}
