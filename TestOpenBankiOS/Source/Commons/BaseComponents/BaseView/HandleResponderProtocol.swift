import UIKit

protocol HandleResponderProtocol: class {
    
    func setBecomeFirstResponder(id: String)
    func setResignFirstResponder(id: String)
    var viewsField: [String: UIView] {get set}
}

extension HandleResponderProtocol {
    
    func setBecomeFirstResponder(id: String) {
        
    }
    
    func setResignFirstResponder(id: String) {
        
    }
}
