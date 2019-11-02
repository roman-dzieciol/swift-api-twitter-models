
import Foundation

public struct UserMention: Identifiable {

    
    /// ID of the mentioned user, as an integer. Example:
    ///
    ///     "id":6253282
    public let id: Int64
    
    /// If of the mentioned user, as a string. Example:
    ///
    ///     "id_str":"6253282"
    public let id_str: String
    
    /// An [Int]egers representing the offsets within the Tweet text where the user reference begins and ends. The first integer represents the location of the ‘@’ character of the user mention. The second integer represents the location of the first non-screenname character following the user mention. Example:
    ///
    ///     "indices":[4,15]
    public let indices: [Int]?
    
    /// Display name of the referenced user. Example:
    ///
    ///     "name":"Twitter API"
    public let name: String?
    
    /// Screen name of the referenced user. Example:
    ///
    ///     "screen_name":"twitterapi"
    public let screen_name: String?

    public init(id: Int64, id_str: String, indices: [Int]?, name: String?, screen_name: String?) {
        self.id = id
        self.id_str = id_str
        self.indices = indices
        self.name = name
        self.screen_name = screen_name
    }
}

extension UserMention: Codable {}

