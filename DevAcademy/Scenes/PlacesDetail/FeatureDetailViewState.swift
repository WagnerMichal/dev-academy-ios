import SwiftUI
import MapKit

struct FeatureDetailViewState: DynamicProperty {
    private let feature: Feature
    
    init(feature: Feature) {
        self.feature = feature
    }
    
    var featureTitle: String {
        feature.attributes.name
    }
    
    var featureType: String {
        feature.attributes.type.rawValue
    }
    
    var featureImageUrl: URL? {
        feature.attributes.imageUrl
    }
    
    var featureCoordinate: CLLocationCoordinate2D? {
        guard let latitude = feature.geometry?.latitude, let longitude = feature.geometry?.longitude else {
            return nil
        }
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

