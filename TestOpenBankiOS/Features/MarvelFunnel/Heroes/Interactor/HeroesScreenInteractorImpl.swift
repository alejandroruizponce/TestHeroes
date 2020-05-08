import Foundation

class HeroesScreenInteractorImpl: BaseInteractor {
    // MARK: - Properties
    weak var presenter: HeroesScreenInteractorCallback?
}

extension HeroesScreenInteractorImpl: HeroesScreenInteractor {
    func getHeroes() {
        var listHeroes: [Hero] = []
        MarvelAPI.getHeroes { (response) in
            if let data = response.object(forKey: "data") as? NSDictionary {
                if let results = data.object(forKey: "results") as? NSArray {
                    for result in results {
                        if let resultDict = result as? NSDictionary {
                            var hero: Hero = Hero()
                            if let name = resultDict.object(forKey: "name") as? String, let description = resultDict.object(forKey: "description") as? String, let id = resultDict.object(forKey: "id") as? Int {
                                if let thumbnail = resultDict.object(forKey: "thumbnail") as? NSDictionary {
                                    if let ext = thumbnail.object(forKey: "extension") as? String, let path = thumbnail.object(forKey: "path") as? String {
                                        hero.image = path + "." + ext
                                    }
                                }
                                hero.name = name
                                hero.description = description
                                hero.id = id
                                listHeroes.append(hero)
                            }
                        }
                    }
                }
            }
            self.presenter?.fetchHeroes(listHeroes)
        }
    }
}
