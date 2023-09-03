import SwiftUI

struct FeaturesViewState: DynamicProperty {
    @EnvironmentObject private var featuresObject: FeaturesObservableObject
    
    @State var showFavorites = false
    
    var features: [Feature] {
        featuresObject.features
    }
    
    var featuresAreLoaded: Bool {
        !features.isEmpty
    }
    
    func fetchFeaturesWithAsync() async {
        await featuresObject.fetchFeaturesWithAsync()
    }
    
    func favoritesPressed() {
        showFavorites = true
    }
}
