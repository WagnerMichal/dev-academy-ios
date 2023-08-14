import Foundation

enum PossibleKind: RawRepresentable {
    var rawValue: String{
        get{
            switch self{
            case .kind(let raw):
                return raw.rawValue
            case .unknown(let string):
                return string
            }
        }
    }
    init?(rawValue: String){
        if let p = Kind(rawValue: rawValue){
            self = .kind(p)
        }
        else{
            self = .unknown(rawValue)
        }
    }
    case kind(Kind)
    case unknown(String)
}
