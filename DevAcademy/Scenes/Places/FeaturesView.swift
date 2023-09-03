import SwiftUI
import ActivityIndicatorView

struct FeaturesView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    let state = FeaturesViewState()

    var body: some View {
        NavigationStack {
            Group {
                if state.featuresAreLoaded {
                    List(state.features, id: \.attributes.name) { feature in
                        NavigationLink(destination: coordinator.featureDetailScene(with: feature)) {
                            FeatureRow(feature: feature)
                        }
                    }
                    .listStyle(.plain)
                } else {
                    ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
                }
            }
            .navigationTitle("Kultůrmapa")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Favorites", action: state.favoritesPressed)
                }
            }
        }
        .task {
            await state.fetchFeaturesWithAsync()
        }
        .sheet(isPresented: state.$showFavorites) {
            coordinator.favoritesScene
        }
    }
}

struct FeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesView()
            .injectPreviewsEnvironment()
    }
}
