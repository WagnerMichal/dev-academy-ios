import SwiftUI

struct PlacesDetailViewState: DynamicProperty {
    private let feature : Feature
    
    init(feature: Feature) {
        self.feature = feature
    }
    
    var title : String {
        feature.properties.nazev
    }
    
    var link : URL {
        feature.properties.obrId
    }
    
    var type : String {
        feature.properties.druh.rawValue
    }
}
