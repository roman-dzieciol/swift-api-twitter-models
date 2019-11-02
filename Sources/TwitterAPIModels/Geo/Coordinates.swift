
import Foundation

public struct Coordinates {
    /// The longitude and latitude of the Tweet’s location, as a collection in the form [longitude, latitude]. Example:
    ///
    /// "coordinates":[-97.51087576,35.46500176]
    public let coordinates: [Double]?
    
    /// The type of data encoded in the coordinates property. This will be “Point” for Tweet coordinates fields. Example:
    ///
    /// "type": "Point"
    public let type: String?
    
    public init(coordinates: [Double]?, type: String?) {
        self.coordinates = coordinates
        self.type = type
    }
}

extension Coordinates: Codable {}
