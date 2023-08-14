import SwiftUI

final class Coordinator: ObservableObject {

    var featureScene: some View {
        PlacesScene()
    }

    func featureDetailScene(with feature: Feature) -> some View {
        PlaceDetailView(state: PlacesDetailViewState(feature: feature))
    }
    
    var favoritesScene: some View {
        Text("Zatím tady nic není")
    }
}
