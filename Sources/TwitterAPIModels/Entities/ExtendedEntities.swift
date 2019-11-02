
import Foundation

public struct ExtendedEntities {
    
    public let media: [Media]?

    public init(media: [Media]?) {
        self.media = media
    }

}

extension ExtendedEntities: Codable {}
