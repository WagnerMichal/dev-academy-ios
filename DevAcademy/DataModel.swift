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

struct Feature: Equatable{
    static func == (lhs: Feature, rhs: Feature) -> Bool {
        lhs.properties.ogcFid == rhs.properties.ogcFid
    }
    
    let geometry: Point
    let properties: Properties
}

struct Features{
    let feature: [Feature]
}

extension Features {
    static let mock: Features = Features(
        feature: [
            Feature(
                geometry: Point(latitude: 49.1913, longtitude: 16.6115),
                properties: Properties(
                    ogcFid: 1,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.divadlo),
                    nazev: "Národní divadlo Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2006, longtitude: 16.6097),
                properties: Properties(
                    ogcFid: 2,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.kino),
                    nazev: "Kino Art Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2019, longtitude: 16.6151),
                properties: Properties(
                    ogcFid: 3,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.muzeum),
                    nazev: "Moravské zemské muzeum"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2079, longtitude: 16.5938),
                properties: Properties(
                    ogcFid: 4,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.kulturniCentrum),
                    nazev: "BOUFOU Prostějovská Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2072, longtitude: 16.6061),
                properties: Properties(
                    ogcFid: 5,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.hudebniKlub),
                    nazev: "Kabinet múz"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1894, longtitude: 165602),
                properties: Properties(
                    ogcFid: 6,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.knihovna),
                    nazev: "Moravská zemská knihovna"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1914, longtitude: 16.6126),
                properties: Properties(
                    ogcFid: 7,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.koncertniHala),
                    nazev: "Janáčkovo divadlo"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2182, longtitude: 16.5893),
                properties: Properties(
                    ogcFid: 8,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.kulturniPamátka),
                    nazev: "Špilberk Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1920, longtitude: 16.6071),
                properties: Properties(
                    ogcFid: 9,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.letniKino),
                    nazev: "Letní kino Lužánky"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longtitude: 16.6112),
                properties: Properties(
                    ogcFid: 10,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.podnikSLulturnimProgramem),
                    nazev: "Bar, který neexistuje"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longtitude: 16.6112),
                properties: Properties(
                    ogcFid: 11,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.kino),
                    nazev: "Cinema City"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longtitude: 16.6112),
                properties: Properties(
                    ogcFid: 12,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.kino),
                    nazev: "Univerzitní kino Scala"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longtitude: 16.6112),
                properties: Properties(
                    ogcFid: 13,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.hub),
                    nazev: "Impact Hub"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longtitude: 16.6112),
                properties: Properties(
                    ogcFid: 14,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.kulturniPamátka),
                    nazev: "Villa Tugendhat"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longtitude: 16.6112),
                properties: Properties(
                    ogcFid: 15,
                    obrId: URL(string: "https://picsum.photos/200")!,
                    druh: .kind(.vystaviste),
                    nazev: "Brněnské výstaviště"
                )
            )
        ]
    )
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
    private static var mockData: Features = Features.mock
}
