
import Foundation

/// The entities section will contain a media array containing a single media object if any media object has been ‘attached’ to the Tweet. If no native media has been attached, there will be no media array in the entities. For the following reasons the extended_entities section should be used to process Tweet native media:
/// + Media type will always indicate ‘photo’ even in cases of a video and GIF being attached to Tweet.
/// + Even though up to four photos can be attached, only the first one will be listed in the entities section.
///
/// The has:media Operator will match if this array is populated.
public struct Media: Identifiable {
    
    /// URL of the media to display to clients. Example:
    ///
    ///     "display_url":"pic.twitter.com/rJC5Pxsu"
    public let display_url: String?
    
    /// An expanded version of display_url. Links to the media display page. Example:
    ///
    ///     "expanded_url": "http:/// twitter.com/yunorno/status/114080493036773378/photo/1"
    public let expanded_url: String?
    
    /// ID of the media expressed as a 64-bit integer. Example:
    ///
    ///     "id":114080493040967680
    public let id: Int64
    
    /// ID of the media expressed as a string. Example:
    ///
    ///     "id_str":"114080493040967680"
    public let id_str: String
    
    /// An array of integers indicating the offsets within the Tweet text where the URL begins and ends. The first integer represents the location of the first character of the URL in the Tweet text. The second integer represents the location of the first non-URL character occurring after the URL (or the end of the string if the URL is the last part of the Tweet text). Example:
    ///
    ///     "indices":[15,35]
    public let indices: [Int]?
    
    /// An http:///  URL pointing directly to the uploaded media file. Example:
    ///
    ///     "media_url":"http:/// pbs.twimg.com/media/DOhM30VVwAEpIHq.jpg"
    /// For media in direct messages, media_url is the same https URL as media_url_https and must be accessed by signing a request with the user’s access token using OAuth 1.0A.
    ///
    /// It is not possible to access images via an authenticated twitter.com session. Please visit this page to learn how to account for these recent change.
    ///
    /// You cannot directly embed these images in a web page.
    ///
    /// See Photo Media URL formatting for how to format a photo's URL, such as media_url_https, based on the available sizes.
    ///
    public let media_url: String?
    
    /// An https:///  URL pointing directly to the uploaded media file, for embedding on https pages. Example:
    ///
    ///     "media_url_https":"https:/// p.twimg.com/AZVLmp-CIAAbkyy.jpg"
    /// For media in direct messages, media_url_https must be accessed by signing a request with the user’s access token using OAuth 1.0A.
    ///
    /// It is not possible to access images via an authenticated twitter.com session. Please visit this page to learn how to account for these recent change.
    ///
    /// You cannot directly embed these images in a web page.
    ///
    /// See Photo Media URL formatting for how to format a photo's URL, such as media_url_https, based on the available sizes.
    ///
    public let media_url_https: String?
    
    /// An object showing available sizes for the media file. Example:
    ///
    ///     {
    ///       "sizes": {
    ///         "thumb": {
    ///           "h": 150,
    ///           "resize": "crop",
    ///           "w": 150
    ///         },
    ///         "large": {
    ///           "h": 1366,
    ///           "resize": "fit",
    ///           "w": 2048
    ///         },
    ///         "medium": {
    ///           "h": 800,
    ///           "resize": "fit",
    ///           "w": 1200
    ///         },
    ///         "small": {
    ///           "h": 454,
    ///           "resize": "fit",
    ///           "w": 680
    ///         }
    ///       }
    ///     }
    /// See Photo Media URL formatting for how to format a photo's URL, such as media_url_https, based on the available sizes.
    ///
    public let sizes: Media.Sizes?
    
    /// Nullable. For Tweets containing media that was originally associated with a different tweet, this ID points to the original Tweet. Example:
    ///
    ///     "source_status_id": 205282515685081088
    public let source_status_id: Int64?
    
    /// Nullable. For Tweets containing media that was originally associated with a different tweet, this string-based ID points to the original Tweet. Example:
    ///
    ///     "source_status_id_str": "205282515685081088"
    public let source_status_id_str: String?
    
    /// Type of uploaded media. Possible types include photo, video, and animated_gif. Example:
    ///
    ///     "type":"photo"
    public let type: String?
    
    /// Wrapped URL for the media link. This corresponds with the URL embedded directly into the raw Tweet text, and the values for the indices parameter. Example:
    ///
    ///     "url":"http:/// t.co/rJC5Pxsu"
    /// url    String
    public let url: String?

    public init(display_url: String?, expanded_url: String?, id: Int64, id_str: String, indices: [Int]?, media_url: String?, media_url_https: String?, sizes: Media.Sizes?, source_status_id: Int64?, source_status_id_str: String?, type: String?, url: String?) {
        self.display_url = display_url
        self.expanded_url = expanded_url
        self.id = id
        self.id_str = id_str
        self.indices = indices
        self.media_url = media_url
        self.media_url_https = media_url_https
        self.sizes = sizes
        self.source_status_id = source_status_id
        self.source_status_id_str = source_status_id_str
        self.type = type
        self.url = url
    }
}

extension Media: Codable {}

extension Media {

    public func url(for sizeName: Media.Sizes.Name) -> URL? {
        guard
            let urlText = media_url_https,
            let url = URL(string: urlText),
            let _ = sizes?.named(sizeName) else {
            return nil
        }
        return URL(string: "\(url.deletingPathExtension())?format=\(url.pathExtension)&name=\(sizeName)")
    }
}
