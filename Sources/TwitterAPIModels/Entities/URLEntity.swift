
import Foundation

public struct URLEntity {

    /// URL pasted/typed into Tweet. Example:
    ///
    ///     "display_url":"bit.ly/2so49n2"
    public let display_url: String?
    
    /// Expanded version of `` display_url`` . Example:
    ///
    ///     "expanded_url":"http:/// bit.ly/2so49n2"
    public let expanded_url: String?
    
    /// An [Int]egers representing offsets within the Tweet text where the URL begins and ends. The first integer represents the location of the first character of the URL in the Tweet text. The second integer represents the location of the first non-URL character after the end of the URL. Example:
    ///
    ///     "indices":[30,53]
    public let indices: [Int]?
    
    /// Wrapped URL, corresponding to the value embedded directly into the raw Tweet text, and the values for the indices parameter. Example:
    ///
    ///     "url":"https:/// t.co/yzocNFvJuL"
    public let url: String?
    
    
    public struct Metadata {

        /// The fully unwound version of the link included in the Tweet. Example:
        ///
        ///     "url":"https:/// blog.twitter.com/en_us/topics/insights/2016/using-twitter-as-a-go-to-communication-channel-during-severe-weather-events.html"
        public let url: String?
        
        /// Final HTTP status of the unwinding process, a '200' indicating success. Example:
        ///
        /// 200
        public let status: Int?
        
        /// HTML title for the link. Example:
        ///
        ///     "title":"Using Twitter as a ‘go-to’ communication channel during severe weather"
        public let title: String?
        
        /// HTML description for the link. Example:
        ///
        ///     "description":"Using Twitter as a ‘go-to’ communication channel during severe weather"
        public let description: String?

        public init(url: String?, status: Int?, title: String?, description: String?) {
            self.url = url
            self.status = status
            self.title = title
            self.description = description
        }
    }
    
    /// If you are using the Expanded and/or Enhanced URL enrichments, the metadata is available under the unwound attribute
    public let unwound: Metadata?

    public init(display_url: String?, expanded_url: String?, indices: [Int]?, url: String?, unwound: URLEntity.Metadata?) {
        self.display_url = display_url
        self.expanded_url = expanded_url
        self.indices = indices
        self.url = url
        self.unwound = unwound
    }
    
}

extension URLEntity: Codable {}
extension URLEntity.Metadata: Codable {}

