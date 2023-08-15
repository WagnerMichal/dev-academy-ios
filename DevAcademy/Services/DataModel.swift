import Foundation

class DataService {
    
    var data: Result<[Feature], Error>?
    static let shared = DataService()
    private init() {}
    
    func fetchData(_ handle: @escaping(Result<[Feature], Error>) -> Void) {
        if let data = data {
            handle(data)
            return
        }
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { [weak self] _ in
            let result = DataService.mockData
            self?.data = .success(result)
            handle(.success(result))
        }
    }
    
}
extension DataService {
    private static var mockData: [Feature] = Feature.mock
}
