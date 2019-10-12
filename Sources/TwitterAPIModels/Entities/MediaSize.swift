
import Foundation

extension Media {
    
    /// All Tweets with native media (photos, video, and GIFs) will include a set of ‘thumb’, ‘small’, ‘medium’, and ‘large’
    /// sizes with height and width pixel sizes.  For photos and preview image media URLs, Photo Media URL formatting specifies
    /// how to construct different URLs for loading different sized photo media.
    ///
    ///     {"h":150, "resize":"crop", "w":150}
    public struct Size {
        
        /// Width in pixels of this size. Example:
        ///
        ///     "w":150
        public let w: Int?
        
        /// Height in pixels of this size. Example:
        ///
        ///     "h":150
        public let h: Int?
        
        /// Resizing method used to obtain this size. A value of fit means that the media was resized to fit one dimension, keeping its native aspect ratio. A value of crop means that the media was cropped in order to fit a specific resolution. Example:
        ///
        ///     "resize":"crop"
        public let resize: String?
    }
    
    /// An object showing available sizes for the media file. Example:
    ///
    ///     {
    ///         "sizes": {
    ///             "thumb": {
    ///                 "h": 150,
    ///                 "resize": "crop",
    ///                 "w": 150
    ///             },
    ///             "large": {
    ///                 "h": 1366,
    ///                 "resize": "fit",
    ///                 "w": 2048
    ///             },
    ///             "medium": {
    ///                 "h": 800,
    ///                 "resize": "fit",
    ///                 "w": 1200
    ///             },
    ///             "small": {
    ///                 "h": 454,
    ///                 "resize": "fit",
    ///                 "w": 680
    ///             }
    ///         }
    ///     }
    public struct Sizes {
        /// Information for a thumbnail-sized version of the media. Example:
        ///
        ///     "thumb":{"h":150, "resize":"crop", "w":150}
        /// Thumbnail-sized photo media will be limited to fill a 150x150 boundary and cropped.
        public let thumb: Size?
        
        /// Information for a large-sized version of the media. Example:
        ///
        ///     "large":{"h":454, "resize":"fit", "w":680}
        /// Small-sized photo media will be limited to fit within a 680x680 boundary.
        public let large: Size?
        
        /// Information for a medium-sized version of the media. Example:
        ///
        ///     "medium":{"h":800, "resize":"fit", "w":1200}
        /// Medium-sized photo media will be limited to fit within a 1200x1200 boundary.
        public let medium: Size?
        
        /// Information for a small-sized version of the media. Example:
        ///
        ///     "small":{"h":1366, "resize":"fit", "w":2048}
        /// Large-sized photo media will be limited to fit within a 2048x2048 boundary.
        public let small: Size?
    }
    
}

extension Media.Size: Codable {}
extension Media.Sizes: Codable {}



