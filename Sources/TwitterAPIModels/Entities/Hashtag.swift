
import Foundation

public struct Hashtag {
    /// An array of integers indicating the offsets within the Tweet text where the hashtag begins and ends. The first integer represents the location of the # character in the Tweet text string. The second integer represents the location of the first character after the hashtag. Therefore the difference between the two numbers will be the length of the hashtag name plus one (for the ‘#’ character). Example:
    ///
    ///     "indices":[32,38]
    public let indices: [Int]?
    
    /// Name of the hashtag, minus the leading ‘#’ character. Example:
    ///
    ///     "text":"nodejs"
    public let text: String?

    public init(indices: [Int]?, text: String?) {
        self.indices = indices
        self.text = text
    }
}

extension Hashtag: Codable {}
