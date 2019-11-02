
import Foundation

public final class Tweet: Identifiable {
    
    // (public let.*?\n)((.*\n)+?)(?=public let)
    
    /// UTC time when this Tweet was created. Example:
    ///
    ///     "created_at": "Wed Oct 10 20:19:24 +0000 2018"
    public let created_at: String?
    
    /// The integer representation of the unique identifier for this Tweet. This number is greater than 53 bits and some programming languages may have difficulty/silent defects in interpreting it. Using a signed 64 bit integer for storing this identifier is safe. Use id_str for fetching the identifier to stay on the safe side. See Twitter IDs, JSON and Snowflake . Example:
    ///
    ///     "id":1050118621198921728
    public let id: Int64
    
    /// The string representation of the unique identifier for this Tweet. Implementations should use this rather than the large integer in id. Example:
    ///
    ///     "id_str":"1050118621198921728"
    public let id_str: String
    
    /// The actual UTF-8 text of the status update. See twitter-text for details on what characters are currently considered valid. Example:
    ///
    ///     "text":"To make room for more expression, we will now count all emojis as equal—including those with gender‍‍‍ ‍‍and skin t… https:/// t.co/MkGjXf9aXm"
    public let text: String?
    
    /// Utility used to post the Tweet, as an HTML-formatted string. Tweets from the Twitter website have a source value of web.
    ///
    /// Example:
    ///
    ///     "source":"Twitter Web Client"
    public let source: String?
    
    /// Indicates whether the value of the text parameter was truncated, for example, as a result of a retweet exceeding the original Tweet text length limit of 140 characters. Truncated text will end in ellipsis, like this ... Since Twitter now rejects long Tweets vs truncating them, the large majority of Tweets will have this set to false . Note that while native retweets may have their toplevel text property shortened, the original text will be available under the retweeted_status object and the truncated parameter will be set to the value of the original status (in most cases, false ). Example:
    ///
    ///     "truncated":true
    public let truncated: Bool?
    
    /// Nullable. If the represented Tweet is a reply, this field will contain the integer representation of the original Tweet’s ID. Example:
    ///
    ///     "in_reply_to_status_id":1051222721923756032
    public let in_reply_to_status_id: Int64?
    
    /// Nullable. If the represented Tweet is a reply, this field will contain the string representation of the original Tweet’s ID. Example:
    ///
    ///     "in_reply_to_status_id_str":"1051222721923756032"
    public let in_reply_to_status_id_str: String?
    
    /// Nullable. If the represented Tweet is a reply, this field will contain the integer representation of the original Tweet’s author ID. This will not necessarily always be the user directly mentioned in the Tweet. Example:
    ///
    ///     "in_reply_to_user_id":6253282
    public let in_reply_to_user_id: Int64?
    
    /// Nullable. If the represented Tweet is a reply, this field will contain the string representation of the original Tweet’s author ID. This will not necessarily always be the user directly mentioned in the Tweet. Example:
    ///
    ///     "in_reply_to_user_id_str":"6253282"
    public let in_reply_to_user_id_str: String?
    
    /// Nullable. If the represented Tweet is a reply, this field will contain the screen name of the original Tweet’s author. Example:
    ///
    ///     "in_reply_to_screen_name":"twitterapi"
    public let in_reply_to_screen_name: String?
    
    /// The user who posted this Tweet. See User data dictionary for complete list of attributes.
    ///
    /// Example highlighting select attributes:
    ///
    ///
    ///     { "user": {
    ///        "id": 6253282,
    ///        "id_str": "6253282",
    ///        "name": "Twitter API",
    ///        "screen_name": "TwitterAPI",
    ///        "location": "San Francisco, CA",
    ///        "url": "https:/// developer.twitter.com",
    ///        "description": "The Real Twitter API. Tweets about API changes, service issues and our Developer Platform. Don't get an answer? It's on my website.",
    ///        "verified": true,
    ///        "followers_count": 6129794,
    ///        "friends_count": 12,
    ///        "listed_count": 12899,
    ///        "favourites_count": 31,
    ///        "statuses_count": 3658,
    ///        "created_at": "Wed May 23 06:01:13 +0000 2007",
    ///        "utc_offset": null,
    ///        "time_zone": null,
    ///        "geo_enabled": false,
    ///        "lang": "en",
    ///        "contributors_enabled": false,
    ///        "is_translator": false,
    ///        "profile_background_color": "null",
    ///        "profile_background_image_url": "null",
    ///        "profile_background_image_url_https": "null",
    ///        "profile_background_tile": null,
    ///        "profile_link_color": "null",
    ///        "profile_sidebar_border_color": "null",
    ///        "profile_sidebar_fill_color": "null",
    ///        "profile_text_color": "null",
    ///        "profile_use_background_image": null,
    ///        "profile_image_url": "null",
    ///        "profile_image_url_https": "https:/// pbs.twimg.com/profile_images/942858479592554497/BbazLO9L_normal.jpg",
    ///        "profile_banner_url": "https:/// pbs.twimg.com/profile_banners/6253282/1497491515",
    ///        "default_profile": false,
    ///        "default_profile_image": false,
    ///        "following": null,
    ///        "follow_request_sent": null,
    ///        "notifications": null
    ///      }
    ///    }
    public let user: User?
    
    /// Nullable. Represents the geographic location of this Tweet as reported by the user or client application. The inner coordinates array is formatted as geoJSON (longitude first, then latitude). Example:
    ///
    ///     "coordinates":
    ///     {
    ///         "coordinates":
    ///         [
    ///             -75.14310264,
    ///             40.05701649
    ///         ],
    ///         "type":"Point"
    ///     }
    public let coordinates: Coordinates?
    
    /// Nullable When present, indicates that the tweet is associated (but not necessarily originating from) a Place . Example:
    ///
    ///     "place":
    ///     {
    ///       "attributes":{},
    ///        "bounding_box":
    ///       {
    ///          "coordinates":
    ///          [[
    ///                [-77.119759,38.791645],
    ///                [-76.909393,38.791645],
    ///                [-76.909393,38.995548],
    ///                [-77.119759,38.995548]
    ///          ]],
    ///          "type":"Polygon"
    ///       },
    ///        "country":"United States",
    ///        "country_code":"US",
    ///        "full_name":"Washington, DC",
    ///        "id":"01fbe706f872cb32",
    ///        "name":"Washington",
    ///        "place_type":"city",
    ///        "url":"http:/// api.twitter.com/1/geo/id/0172cb32.json"
    ///     }
    public let place: Place?
    
    /// This field only surfaces when the Tweet is a quote Tweet. This field contains the integer value Tweet ID of the quoted Tweet. Example:
    ///
    ///     "quoted_status_id":1050119905717055488
    public let quoted_status_id: Int64?
    
    /// This field only surfaces when the Tweet is a quote Tweet. This is the string representation Tweet ID of the quoted Tweet. Example:
    ///
    ///     "quoted_status_id_str":"1050119905717055488"
    public let quoted_status_id_str: String?
    
    /// Indicates whether this is a Quoted Tweet. Example:
    ///
    ///     "is_quote_status":false
    public let is_quote_status: Bool?
    
    /// This field only surfaces when the Tweet is a quote Tweet. This attribute contains the Tweet object of the original Tweet that was quoted.
    public let quoted_status: Tweet?
    
    /// Users can amplify the broadcast of Tweets authored by other users by retweeting . Retweets can be distinguished from typical Tweets by the existence of a retweeted_status attribute. This attribute contains a representation of the original Tweet that was retweeted. Note that retweets of retweets do not show representations of the intermediary retweet, but only the original Tweet. (Users can also unretweet a retweet they created by deleting their retweet.)
    public let retweeted_status: Tweet?
    
    /// Nullable. Indicates approximately how many times this Tweet has been quoted by Twitter users. Example:
    ///
    ///     "quote_count":33
    /// Note: This object is only available with the Premium and Enterprise tier products.
    ///
    public let quote_count: Int?
    
    /// Number of times this Tweet has been replied to. Example:
    ///
    ///     "reply_count":30
    /// Note: This object is only available with the Premium and Enterprise tier products.
    ///
    public let reply_count: Int?
    
    /// Number of times this Tweet has been retweeted. Example:
    ///
    ///     "retweet_count":160
    public let retweet_count: Int?
    
    /// Nullable. Indicates approximately how many times this Tweet has been liked by Twitter users. Example:
    ///
    ///     "favorite_count":295
    public let favorite_count: Int?
    
    /// Entities which have been parsed out of the text of the Tweet. Additionally see Entities in Twitter Objects . Example:
    ///
    ///     "entities":
    ///     {
    ///         "hashtags":[],
    ///         "urls":[],
    ///         "user_mentions":[],
    ///         "media":[],
    ///         "symbols":[]
    ///         "polls":[]
    ///     }
    public let entities: Entities?
    
    /// When between one and four native photos or one video or one animated GIF are in Tweet, contains an array 'media' metadata. This is also available in Quote Tweets. Additionally see Entities in Twitter Objects . Example:
    ///
    ///     "entities":
    ///     {
    ///         "media":[]
    ///     }
    public let extended_entities: ExtendedEntities?
    
    /// Nullable. Indicates whether this Tweet has been liked by the authenticating user. Example:
    ///
    ///     "favorited":true
    public let favorited: Bool?
    
    /// Indicates whether this Tweet has been Retweeted by the authenticating user. Example:
    ///
    ///     "retweeted":false
    public let retweeted: Bool?
    
    /// Nullable. This field only surfaces when a Tweet contains a link. The meaning of the field doesn’t pertain to the Tweet content itself, but instead it is an indicator that the URL contained in the Tweet may contain content or media identified as sensitive content. Example:
    ///
    ///     "possibly_sensitive":false
    public let possibly_sensitive: Bool?
    
    /// Indicates the maximum value of the filter_level parameter which may be used and still stream this Tweet. So a value of medium will be streamed on none, low, and medium streams.
    ///
    /// Example:
    ///
    ///     "filter_level": "low"
    public let filter_level: String?
    
    /// Nullable. When present, indicates a BCP 47 language identifier corresponding to the machine-detected language of the Tweet text, or und if no language could be detected. See more documentation HERE. Example:
    ///
    ///     "lang": "en"
    public let lang: String?
    
    public struct Rule {
        public let tag: String
        public let id: Int64
        public let id_str: String

        public init(tag: String, id: Int64, id_str: String) {
            self.tag = tag
            self.id = id
            self.id_str = id_str
        }
    }
    
    /// Present in filtered products such as Twitter Search and PowerTrack. Provides the id and tag associated with the rule that matched the Tweet. With PowerTrack, more than one rule can match a Tweet. See more documentation HERE. Example:
    ///
    ///     "matching_rules": " [{
    ///         "tag": "twitterapi emojis",
    ///         "id": 1050118621198921728,
    ///         "id_str": "1050118621198921728"
    ///     }]"
    ///
    ///
    /// Additional Tweet attributes
    /// Twitter APIs that provide Tweets (e.g. the GET statuses/lookup endpoint) may include these additional Tweet attributes:
    ///
    public let matching_rules: [Rule]?
    
    // MARK: - Additional Tweet attributes
    // Twitter APIs that provide Tweets (e.g. the GET statuses/lookup endpoint) may include these additional Tweet attributes:
    
    public struct CurrentUserRetweet {
        public let id: Int64
        public let id_str: String
        
        public init(id: Int64, id_str: String) {
            self.id = id
            self.id_str = id_str
        }
    }
    /// Perspectival Only surfaces on methods supporting the include_my_retweet parameter, when set to true. Details the Tweet ID of the user’s own retweet (if existent) of this Tweet. Example:
    ///
    ///     "current_user_retweet": {
    ///       "id": 6253282,
    ///       "id_str": "6253282"
    ///     }
    public let current_user_retweet: CurrentUserRetweet?
    
    /// A set of key-value pairs indicating the intended contextual delivery of the containing Tweet. Currently used by Twitter’s Promoted Products. Example:
    ///
    ///     "scopes":{"followers":false}
    //public let scopes: Object?
    
    /// When present and set to “true”, it indicates that this piece of content has been withheld due to a DMCA complaint . Example:
    ///
    ///     "withheld_copyright": true
    public let withheld_copyright: Bool?
    
    /// When present, indicates a list of uppercase two-letter country codes this content is withheld from. Twitter supports the following non-country values for this field:
    ///
    /// “XX” - Content is withheld in all countries “XY” - Content is withheld due to a DMCA request.
    ///
    /// Example:
    ///
    ///     "withheld_in_countries": ["GR", "HK", "MY"]
    public let withheld_in_countries: [String]?
    
    /// When present, indicates whether the content being withheld is the “status” or a “user.”
    ///
    /// Example:
    ///
    ///     "withheld_scope": "status"
    public let withheld_scope: String?
    
    public init(
        created_at: String? = nil,
        id: Int64,
        id_str: String,
        text: String? = nil,
        source: String? = nil,
        truncated: Bool? = nil,
        in_reply_to_status_id: Int64? = nil,
        in_reply_to_status_id_str: String? = nil,
        in_reply_to_user_id: Int64? = nil,
        in_reply_to_user_id_str: String? = nil,
        in_reply_to_screen_name: String? = nil,
        user: User? = nil,
        coordinates: Coordinates? = nil,
        place: Place? = nil,
        quoted_status_id: Int64? = nil,
        quoted_status_id_str: String? = nil,
        is_quote_status: Bool? = nil,
        quoted_status: Tweet? = nil,
        retweeted_status: Tweet? = nil,
        quote_count: Int? = nil,
        reply_count: Int? = nil,
        retweet_count: Int? = nil,
        favorite_count: Int? = nil,
        entities: Entities? = nil,
        extended_entities: ExtendedEntities? = nil,
        favorited: Bool? = nil,
        retweeted: Bool? = nil,
        possibly_sensitive: Bool? = nil,
        filter_level: String? = nil,
        lang: String? = nil,
        matching_rules: [Rule]? = nil,
        current_user_retweet: CurrentUserRetweet? = nil,
        //scopes: Object? = nil,
        withheld_copyright: Bool? = nil,
        withheld_in_countries: [String]? = nil,
        withheld_scope: String? = nil
        ) {

        self.created_at = created_at
        self.id = id
        self.id_str = id_str
        self.text = text
        self.source = source
        self.truncated = truncated
        self.in_reply_to_status_id = in_reply_to_status_id
        self.in_reply_to_status_id_str = in_reply_to_status_id_str
        self.in_reply_to_user_id = in_reply_to_user_id
        self.in_reply_to_user_id_str = in_reply_to_user_id_str
        self.in_reply_to_screen_name = in_reply_to_screen_name
        self.user = user
        self.coordinates = coordinates
        self.place = place
        self.quoted_status_id = quoted_status_id
        self.quoted_status_id_str = quoted_status_id_str
        self.is_quote_status = is_quote_status
        self.quoted_status = quoted_status
        self.retweeted_status = retweeted_status
        self.quote_count = quote_count
        self.reply_count = reply_count
        self.retweet_count = retweet_count
        self.favorite_count = favorite_count
        self.entities = entities
        self.extended_entities = extended_entities
        self.favorited = favorited
        self.retweeted = retweeted
        self.possibly_sensitive = possibly_sensitive
        self.filter_level = filter_level
        self.lang = lang
        self.matching_rules = matching_rules
        self.current_user_retweet = current_user_retweet
        //self.scopes = scopes
        self.withheld_copyright = withheld_copyright
        self.withheld_in_countries = withheld_in_countries
        self.withheld_scope = withheld_scope
    }
}

extension Tweet: Codable {}
extension Tweet.Rule: Codable {}
extension Tweet.CurrentUserRetweet: Codable {}

