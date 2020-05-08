import Foundation
import Alamofire

struct MarvelAPI {

    static func getHeroes(completion: @escaping (_ result: NSDictionary) -> ()) {

        let headers: HTTPHeaders = [
            "Content-Type": "application/json"
        ]
        
        Alamofire.request(Constants.urlAPI, method: .get, parameters : nil, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            switch response.result {
            case .success(let result):
                print("GET Heroes request successed! Response: \(result)")
                if let JSON = result as? NSDictionary {
                    completion(JSON)
                    
                }
            case .failure(let error):
                print("GET Heroes request ERROR!: \(error)")
            }
        }
    }
}

