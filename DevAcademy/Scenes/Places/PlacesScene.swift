import SwiftUI
import ActivityIndicatorView
 
struct PlacesScene: View {
    @EnvironmentObject private var coordinator: Coordinator
    let state = PlacesViewState()
    var body: some View {
        NavigationStack{
            Group{
                if state.featuresLoaded{
                    List(state.features, id: \.properties.ogcFid) {
                    feature in
                        NavigationLink(destination: coordinator.featureDetailScene(with: feature)){
                            PlacesRow(feature: feature)
                    }
                }
                    .animation(.default, value: state.features)
                .listStyle(.plain)
            } else{
                ActivityIndicatorView(isVisible: .constant(true),
                type: .growingCircle)
            }

        }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Favorites", action: state.favoritePressed)
                }
                
            })
            .navigationTitle("Kultůrmapa")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear(perform: state.fetch)
        .sheet(isPresented: state.$showFavorites){
            coordinator.favoritesScene
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
        }
    }
//    func onButtonTapped(){
//        showFavorites = true
//    }
//    func fetch(){
//        DataService.shared.fetchData{ result in
//            switch result {
//            case .success(let features):
//                self.features = features.feature
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
}

//struct PlacesScene_Previews: PreviewProvider {
//    static var previews: some View {
//        PlacesScene()
//    }
//}
