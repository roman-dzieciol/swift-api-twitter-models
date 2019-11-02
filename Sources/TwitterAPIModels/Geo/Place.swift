
import Foundation

public struct Place: Identifiable {
    
    /// ID representing this place. Note that this is represented as a string, not an integer. Example:
    ///
    ///     "id":"01a9a39529b27f36"
    public let id: String
    
    /// URL representing the location of additional place metadata for this place. Example:
    ///
    ///     "url":"https:/// api.twitter.com/1.1/geo/id/01a9a39529b27f36.json"
    public let url: String?
    
    /// The type of location represented by this place. Example:
    ///
    ///     "place_type":"city"
    public let place_type: String?
    
    /// Short human-readable representation of the place’s name. Example:
    ///
    ///     "name":"Manhattan"
    public let name: String?
    
    /// Full human-readable representation of the place’s name. Example:
    ///
    ///     "full_name":"Manhattan, NY"
    public let full_name: String?
    
    /// Shortened country code representing the country containing this place. Example:
    ///
    ///     "country_code":"US"
    public let country_code: String?
    
    /// Name of the country containing this place. Example:
    ///
    ///     "country":"United States"
    public let country: String?
    
    /// A bounding box of coordinates which encloses this place. Example:
    ///
    ///     {
    ///       "bounding_box": {
    ///         "coordinates": [
    ///           [
    ///             [
    ///               -74.026675,
    ///               40.683935
    ///             ],
    ///             [
    ///               -74.026675,
    ///               40.877483
    ///             ],
    ///             [
    ///               -73.910408,
    ///               40.877483
    ///             ],
    ///             [
    ///               -73.910408,
    ///               40.3935
    ///             ]
    ///           ]
    ///         ],
    ///         "type": "Polygon"
    ///       }
    ///     }
    public let bounding_box: BoundingBox?
    
    /// When using PowerTrack, 30-Day and Full-Archive Search APIs, and Volume Streams this hash is null. Example:
    ///
    ///     "attributes": {}
    //public let attributes: Object?

    public init(id: String, url: String?, place_type: String?, name: String?, full_name: String?, country_code: String?, country: String?, bounding_box: BoundingBox?) {
        self.id = id
        self.url = url
        self.place_type = place_type
        self.name = name
        self.full_name = full_name
        self.country_code = country_code
        self.country = country
        self.bounding_box = bounding_box
    }
}


extension Place: Codable {}

