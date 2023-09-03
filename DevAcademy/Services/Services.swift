import Foundation

final class Services {
    let featuresService: FeaturesService
    
    init(
        featuresService: FeaturesService
    ) {
        self.featuresService = featuresService
    }
}

extension Services {
    convenience init() {
        let featuresService = ProductionFeaturesService()

        self.init(
            featuresService: featuresService
        )
    }
}


extension Services {
    static let mock = Services(
        featuresService: MockFeaturesService()
    )
}
