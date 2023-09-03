import Foundation

final class FeaturesObservableObject: ObservableObject {
    @Published var features: [Feature] = []
    private let featuresService: FeaturesService
    
    init(featuresService: FeaturesService) {
        self.featuresService = featuresService
    }
    
    @MainActor
    func fetchFeaturesWithAsync() async {
        do {
            let featuresResult = try await featuresService.featuresWithAsync()
            self.features = featuresResult.features
        } catch {
            print(error)
        }
    }
}
