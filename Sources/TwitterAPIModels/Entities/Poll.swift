
import Foundation

public struct Poll {
    
    public struct Option {

        public let position: Int?
        public let text: String?

        public init(position: Int?, text: String?) {
            self.position = position
            self.text = text
        }
    }
    
    /// An array of options, each having a poll position, and the text for that position. Example:
    ///
    ///     {"options": [
    ///               {
    ///                 "position": 1,
    ///                 "text": "I read documentation once."
    ///               }
    ///           ]
    ///     }
    public let options: [Option]?
    
    /// Time stamp (UTC) of when poll ends. Example:
    ///
    ///     "end_datetime": "Thu May 25 22:20:27 +0000 2017"
    public let end_datetime: String?
    
    /// Duration of poll in minutes. Example:
    ///
    ///     "duration_minutes": 60
    public let duration_minutes: String?

    public init(options: [Poll.Option]?, end_datetime: String?, duration_minutes: String?) {
        self.options = options
        self.end_datetime = end_datetime
        self.duration_minutes = duration_minutes
    }

}

extension Poll: Codable {}
extension Poll.Option: Codable {}
