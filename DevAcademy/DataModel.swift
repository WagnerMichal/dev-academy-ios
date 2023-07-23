import Foundation

enum Kind: String{
    case divadlo = "Divadlo"
    case galerie = "Galerie"
    case hub = "Hub"
    case hudebniKlub = "Hudebni klub"
    case kino = "Kino"
    case knihovna = "Knihovna"
    case koncertniHala = "Koncertní hala"
    case kulturniCentrum = "Kulturní centrum"
    case kulturniPamátka = "Kulturní památka"
    case letniKino = "Letní kino"
    case muzeum = "Muzeum"
    case podnikSLulturnimProgramem = "Podnik s kulturním programem"
    case vystaviste = "Výstaviště"
    case ostatni = "Ostatní"
}

enum PossibleKind: RawRepresentable {
    var rawValue: String{
        get{
            switch self{
            case .kind(let raw):
                return raw.rawValue
            case .unknown(let string):
                return string
            }
        }
    }
    init?(rawValue: String){
        if let p = Kind(rawValue: rawValue){
            self = .kind(p)
        }
        else{
            self = .unknown(rawValue)
        }
    }
    case kind(Kind)
    case unknown(String)
}
struct Properties{
    let ogcFid: Int
    let obrId: URL
    let druh: PossibleKind
    let nazev: String
}

struct Point{
    let latitude: Float
    let longtitude: Float
}

struct Feature{
    let geometry: Point
    let properties: Properties
}

struct Features{
    let feature: [Feature]
}

class DataService{
    
    private init(){}
    var data: Result<Features, Error>?
    static let shared: DataService = DataService.init()
    
    func fetchData(_ handle: @escaping(Result<Features, Error>) -> Void){
        if let data = data {
            handle(data)
            return
        }
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { [weak self] _ in
            let result = DataService.mockData
            self?.data = .success(result)
            handle(.success(result))
        }
    }
    
}
extension DataService{
    private static var mockData: Features = Features(feature: [])
}
