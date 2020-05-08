import UIKit

struct Constants {
    static let path = Bundle.main.path(forResource: "MarvelResources", ofType: "plist")
    static let keys = NSDictionary(contentsOfFile: path!)
    static let urlAPI = keys!["MarvelURL"] as! String

}

public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}
struct ConstantsAccessibility {
    // Accessibility
}

struct FTPConstants {

}
