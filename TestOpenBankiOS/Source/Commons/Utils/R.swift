// Used: https://github.com/SteveKChiu/ios-res-tool
import Foundation

struct R {

    enum string : String {
        // General
        case titleNavigationBar

    }

   
    // MARK: arrays
    enum array : String {
        case example

        subscript(index: Int) -> String {
            return values.count>index ? values[index] : ""
        }
        var values : [String] {
            return R.arrays[self.rawValue] ?? []
        }
    }

    fileprivate static var arrays: [String : [String]] = {
        let path = Bundle.main.path(forResource: "LocalizableArray", ofType: "strings")!
        let dict = NSDictionary(contentsOfFile: path)!
        var map = [String : [String]]()
        for (k, v) in dict {
            let list = v as! [String]
            map[k as! String] = list
        }
        return map
    }()

}

postfix operator ^

postfix func ^ (key: R.string) -> String {
    return NSLocalizedString(key.rawValue, comment: "")
}
postfix func ^ (key: R.array) -> [String] {
    return R.arrays[key.rawValue]!
}
func localize(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, arguments: args)
}

