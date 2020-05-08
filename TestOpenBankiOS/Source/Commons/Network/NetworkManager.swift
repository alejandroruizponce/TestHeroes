import Foundation
import Alamofire

// swiftlint:disable force_unwrapping

class NetworkManager {

    static let shared = NetworkManager()
    static let urlForCheck: String = "www.google.com"

    let reachabilityManager = Alamofire.NetworkReachabilityManager(host: NetworkManager.urlForCheck)

    static func isConnected() -> Bool {
        // isReachable checks for wwan, ethernet, and wifi, if
        // you only want 1 or 2 of these, change the .isReachable
        // at the end to one of the other options
        return NetworkReachabilityManager(host: NetworkManager.urlForCheck)!.isReachable
    }

    func startNetworkReachabilityObserver() {
        reachabilityManager?.listener = { status in
            switch status {

            case .notReachable:
//                print("NETWORK - The network is not reachable")
                NotificationCenter.default.post(name: .networkIsNotReachableChange, object: nil)
            case .unknown :
//                print("NETWORK - It is unknown whether the network is reachable")
                NotificationCenter.default.post(name: .networkIsNotReachableChange, object: nil)
            case .reachable(.ethernetOrWiFi):
//                print("NETWORK - The network is reachable over the WiFi connection")
                NotificationCenter.default.post(name: .networkIsReachableChange, object: nil)
            case .reachable(.wwan):
//                print("NETWORK - The network is reachable over the WWAN connection")
                NotificationCenter.default.post(name: .networkIsReachableChange, object: nil)
            }
        }

        reachabilityManager?.startListening()
    }

    func stopNetworkReachabilityObserver() {
        reachabilityManager?.stopListening()
    }
    
}

extension Notification.Name {
    static let networkIsReachableChange = Notification.Name("networkIsReachableChange")
    static let networkIsNotReachableChange = Notification.Name("networkIsNotReachableChange")
}
