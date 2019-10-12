
import Foundation

public struct Entities {
    /// Represents hashtags which have been parsed out of the Tweet text. Example:
    ///
    ///     {
    ///       "hashtags": [
    ///         {
    ///           "indices": [
    ///             32,
    ///             38
    ///           ],
    ///           "text": "nodejs"
    ///         }
    ///       ]
    ///     }
    public let hashtags: [Hashtag]?
    
    /// Represents media elements uploaded with the Tweet. Example:
    ///
    ///     {
    ///       "media": [
    ///         {
    ///           "display_url": "pic.twitter.com/5J1WJSRCy9",
    ///           "expanded_url": "https:/// twitter.com/nolan_test/status/930077847535812610/photo/1",
    ///           "id": 9.300778475358126e17,
    ///           "id_str": "930077847535812610",
    ///           "indices": [
    ///               13,
    ///               36
    ///           ],
    ///           "media_url": "http:/// pbs.twimg.com/media/DOhM30VVwAEpIHq.jpg",
    ///           "media_url_https": "https:/// pbs.twimg.com/media/DOhM30VVwAEpIHq.jpg"
    ///           "sizes": {
    ///               "thumb": {
    ///                    "h": 150,
    ///                    "resize": "crop",
    ///                    "w": 150
    ///               },
    ///               "large": {
    ///                   "h": 1366,
    ///                   "resize": "fit",
    ///                   "w": 2048
    ///               },
    ///               "medium": {
    ///                   "h": 800,
    ///                   "resize": "fit",
    ///                   "w": 1200
    ///               },
    ///               "small": {
    ///                   "h": 454,
    ///                   "resize": "fit",
    ///                   "w": 680
    ///               }
    ///           },
    ///           "type": "photo",
    ///           "url": "https:/// t.co/5J1WJSRCy9",
    ///         }
    ///       ]
    ///     }
    public let media: [Media]?
    
    /// Represents URLs included in the text of a Tweet.
    ///
    /// Example (without Enhanced URLs enrichment enabled):
    ///
    ///     {
    ///       "urls": [
    ///         {
    ///           "indices": [
    ///             32,
    ///             52
    ///           ],
    ///           "url": "http:/// t.co/IOwBrTZR",
    ///           "display_url": "youtube.com/watch?v=oHg5SJ…",
    ///           "expanded_url": "http:/// www.youtube.com/watch?v=oHg5SJYRHA0"
    ///         }
    ///       ]
    ///     }
    /// Example (with Enhanced URLs enrichment enabled):
    ///
    ///     {"urls": [
    ///           {
    ///             "url": "https:/// t.co/D0n7a53c2l",
    ///             "expanded_url": "http:/// bit.ly/18gECvy",
    ///             "display_url": "bit.ly/18gECvy",
    ///             "unwound": {
    ///               "url": "https:/// www.youtube.com/watch?v=oHg5SJYRHA0",
    ///               "status": 200,
    ///               "title": "RickRoll'D",
    ///               "description": "http:/// www.facebook.com/rickroll548 As long as trolls are still trolling, the Rick will never stop rolling."
    ///             },
    ///             "indices": [
    ///               62,
    ///               85
    ///             ]
    ///           }
    ///         ]
    ///     }
    public let urls: [URLEntity]?
    
    /// Represents other Twitter users mentioned in the text of the Tweet. Example:
    ///
    ///     {
    ///       "user_mentions": [
    ///         {
    ///           "name": "Twitter API",
    ///           "indices": [
    ///             4,
    ///             15
    ///           ],
    ///           "screen_name": "twitterapi",
    ///           "id": 6253282,
    ///           "id_str": "6253282"
    ///         }
    ///       ]
    ///     }
    public let user_mentions: [UserMention]?
    
    /// Represents symbols, i.e. $cashtags, included in the text of the Tweet. Example:
    ///
    ///     {
    ///       "symbols": [
    ///         {
    ///           "indices": [
    ///             12,
    ///             17
    ///           ],
    ///           "text": "twtr"
    ///         }
    ///       ]
    ///     }
    public let symbols: [Symbol]?
    
    /// Represents Twitter Polls included in the Tweet. Example:
    ///
    ///     {"polls": [
    ///           {
    ///             "options": [
    ///               {
    ///                 "position": 1,
    ///                 "text": "I read documentation once."
    ///               },
    ///               {
    ///                 "position": 2,
    ///                 "text": "I read documentation twice."
    ///               },
    ///               {
    ///                 "position": 3,
    ///                 "text": "I read documentation over and over again."
    ///               }
    ///             ],
    ///             "end_datetime": "Thu May 25 22:20:27 +0000 2017",
    ///             "duration_minutes": 60
    ///           }
    ///         ]
    ///       }
    public let polls: [Poll]?
    
}

extension Entities: Codable {}

