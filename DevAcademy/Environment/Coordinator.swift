import SwiftUI

final class Coordinator: ObservableObject {

    var featuresScene: some View {
        FeaturesView()
    }

    func featureDetailScene(with feature: Feature) -> some View {
        FeatureDetailView(state: FeatureDetailViewState(feature: feature))
    }
    
    var favoritesScene: some View {
        Text("Nothing here yet")
    }
}
