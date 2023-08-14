import SwiftUI

struct PlacesViewState: DynamicProperty {
    @EnvironmentObject private var featuresObject : FeaturesObservableObject
    @State var showFavorites = false
    
    var features: [Feature] {
        featuresObject.features
    }
    
    var featuresLoaded: Bool {
        !features.isEmpty
    }
    
    func fetch() {
        featuresObject.fetchPlaces()
    }
    
    func favoritePressed() {
        showFavorites = true
    }
}
