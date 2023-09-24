import Foundation

final class ObservableObjects {
    let features: FeaturesObservableObject
    
    init(
        features: FeaturesObservableObject
    ) {
        self.features = features
    }
}

extension ObservableObjects {
    convenience init(services: Services) {
        let features = FeaturesObservableObject(featuresService: services.featuresService)
        
        self.init(
            features: features
        )
    }
}


extension ObservableObjects {
    static let mock: ObservableObjects = ObservableObjects(services: .mock)
}
