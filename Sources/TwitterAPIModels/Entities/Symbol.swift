
import Foundation

public struct Symbol {

    /// An array of integers indicating the offsets within the Tweet text where the symbol/cashtag begins and ends. The first integer represents the location of the $ character in the Tweet text string. The second integer represents the location of the first character after the cashtag. Therefore the difference between the two numbers will be the length of the hashtag name plus one (for the ‘$’ character). Example:
    ///
    /// "indices":[12,17]
    public let indices: [Int]?
    
    /// Name of the cashhtag, minus the leading ‘$’ character. Example:
    ///
    /// "text":"twtr"
    public let text: String?

    internal init(indices: [Int]?, text: String?) {
        self.indices = indices
        self.text = text
    }
}

extension Symbol: Codable {}
