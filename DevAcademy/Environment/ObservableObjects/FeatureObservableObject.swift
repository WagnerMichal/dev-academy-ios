import Foundation

final class FeaturesObservableObject: ObservableObject {
    @Published var features: [Feature] = []
    
    private let dataService: DataService = DataService.shared
    
    func fetchPlaces() {
        DataService.shared.fetchData { result in
            switch result {
            case .success(let features):
                self.features = features
            case .failure(let error):
                print(error)
            }
        }
    }
}
