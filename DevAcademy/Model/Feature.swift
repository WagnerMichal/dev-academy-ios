import Foundation

struct Feature: Equatable, Decodable {
    static func == (lhs: Feature, rhs: Feature) -> Bool {
        lhs.attributes.ogcFid == rhs.attributes.ogcFid
    }
    
    let geometry: Point?
    let attributes: Properties
}
