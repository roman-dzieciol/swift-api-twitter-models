
import Foundation

public struct BoundingBox {
    
    /// A series of longitude and latitude points, defining a box which will contain the Place entity this bounding box is related to. Each point is an array in the form of [longitude, latitude]. Points are grouped into an array per bounding box. Bounding box arrays are wrapped in one additional array to be compatible with the polygon notation. Example:
    ///
    ///     {
    ///       "coordinates": [
    ///         [
    ///           [
    ///             -74.026675,
    ///             40.683935
    ///           ],
    ///           [
    ///             -74.026675,
    ///             40.877483
    ///           ],
    ///           [
    ///             -73.910408,
    ///             40.877483
    ///           ],
    ///           [
    ///             -73.910408,
    ///             40.3935
    ///           ]
    ///         ]
    ///       ]
    ///     }
    public let coordinates: [[[Double]]]?
    
    /// The type of data encoded in the coordinates property. This will be “Polygon” for bounding boxes and “Point” for Tweets with exact coordinates. Example:
    ///
    ///     "type":"Polygon"
    public let type: String?

    public init(coordinates: [[[Double]]]?, type: String?) {
        self.coordinates = coordinates
        self.type = type
    }
}

extension BoundingBox: Codable {}
