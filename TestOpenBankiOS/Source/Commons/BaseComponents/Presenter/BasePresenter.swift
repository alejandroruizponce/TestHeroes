import Foundation

class BasePresenter {
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func isConnected() -> Bool {
        return NetworkManager.isConnected()
    }
}
