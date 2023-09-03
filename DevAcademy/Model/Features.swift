import Foundation

struct Features: Decodable {
    var features: [Feature]
    
    enum CodingKeys: String, CodingKey {
        case features = "features"
    }
}

extension Features {
    static let mock: Features = Features(
        features: [
            Feature(
                geometry: Point(latitude: 49.1913, longitude: 16.6115),
                attributes: Properties(
                    ogcFid: 1,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.divadlo),
                    name: "Národní divadlo Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2006, longitude: 16.6097),
                attributes: Properties(
                    ogcFid: 2,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.kino),
                    name: "Kino Art Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2019, longitude: 16.6151),
                attributes: Properties(
                    ogcFid: 3,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.muzeum),
                    name: "Moravské zemské muzeum"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2079, longitude: 16.5938),
                attributes: Properties(
                    ogcFid: 4,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.kulturniCentrum),
                    name: "BOUFOU Prostějovská Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2072, longitude: 16.6061),
                attributes: Properties(
                    ogcFid: 5,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.hudebniKlub),
                    name: "Kabinet múz"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1894, longitude: 165602),
                attributes: Properties(
                    ogcFid: 6,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.knihovna),
                    name: "Moravská zemská knihovna"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1914, longitude: 16.6126),
                attributes: Properties(
                    ogcFid: 7,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.koncertniHala),
                    name: "Janáčkovo divadlo"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.2182, longitude: 16.5893),
                attributes: Properties(
                    ogcFid: 8,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.kulturniPamátka),
                    name: "Špilberk Brno"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1920, longitude: 16.6071),
                attributes: Properties(
                    ogcFid: 9,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.letniKino),
                    name: "Letní kino Lužánky"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longitude: 16.6112),
                attributes: Properties(
                    ogcFid: 10,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.podnikSLulturnimProgramem),
                    name: "Bar, který neexistuje"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longitude: 16.6112),
                attributes: Properties(
                    ogcFid: 11,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.kino),
                    name: "Cinema City"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longitude: 16.6112),
                attributes: Properties(
                    ogcFid: 12,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.kino),
                    name: "Univerzitní kino Scala"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longitude: 16.6112),
                attributes: Properties(
                    ogcFid: 13,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.hub),
                    name: "Impact Hub"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longitude: 16.6112),
                attributes: Properties(
                    ogcFid: 14,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.kulturniPamátka),
                    name: "Villa Tugendhat"
                )
            ),
            Feature(
                geometry: Point(latitude: 49.1925, longitude: 16.6112),
                attributes: Properties(
                    ogcFid: 15,
                    imageUrl: URL(string: "https://picsum.photos/200")!,
                    type: .kind(.vystaviste),
                    name: "Brněnské výstaviště"
                )
            )
        ]
    )
}
