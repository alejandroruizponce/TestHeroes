import AlamofireNetworkActivityIndicator

final class AppDependenciesService: NSObject, ApplicationService {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        /* NetworkActivityIndicatorManager */
        //To show activity indicator in action bar.
        //The indicator will display if the request is taking at least 1 second to complete
        NetworkActivityIndicatorManager.shared.isEnabled = true

        return true
    }

}
