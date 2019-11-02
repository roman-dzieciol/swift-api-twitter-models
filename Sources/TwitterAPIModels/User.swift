
import Foundation

public struct User: Identifiable {
    
    /// The integer representation of the unique identifier for this User. This number is greater than 53 bits and some programming languages may have difficulty/silent defects in interpreting it. Using a signed 64 bit integer for storing this identifier is safe. Use id_str for fetching the identifier to stay on the safe side. See Twitter IDs, JSON and Snowflake . Example:
    ///
    ///     "id": 6253282
    public let id: Int64
    
    /// The string representation of the unique identifier for this User. Implementations should use this rather than the large, possibly un-consumable integer in id. Example:
    ///
    ///     "id_str": "6253282"
    public let id_str: String
    
    /// The name of the user, as they’ve defined it. Not necessarily a person’s name. Typically capped at 50 characters, but subject to change. Example:
    ///
    ///     "name": "Twitter API"
    public let name: String?
    
    /// The screen name, handle, or alias that this user identifies themselves with. screen_names are unique but subject to change. Use id_str as a user identifier whenever possible. Typically a maximum of 15 characters long, but some historical accounts may exist with longer names. Example:
    ///
    ///     "screen_name": "twitterapi"
    public let screen_name: String?
    
    /// Nullable . The user-defined location for this account’s profile. Not necessarily a location, nor machine-parseable. This field will occasionally be fuzzily interpreted by the Search service. Example:
    ///
    ///     "location": "San Francisco, CA"
    public let location: String?
    
    /// Enterprise APIs only Collection of Enrichment metadata derived for user. Provides the Profile Geo Enrichment metadata. See referenced documentation for more information, including JSON data dictionaries. Example:
    ///
    ///     "derived":{"locations": [{"country":"United States","country_code":"US","locality":"Denver"}]}
    //public let derived: Arrays of Enrichment Objects?
    
    /// Nullable . A URL provided by the user in association with their profile. Example:
    ///
    ///     "url": "https:/// developer.twitter.com"
    public let url: String?
    
    /// Nullable . The user-defined UTF-8 string describing their account. Example:
    ///
    ///     "description": "The Real Twitter API."
    public let description: String?
    
    /// When true, indicates that this user has chosen to protect their Tweets. See About Public and Protected Tweets . Example:
    ///
    ///     "protected": true
    public let protected: Bool?
    
    /// When true, indicates that the user has a verified account. See Verified Accounts . Example:
    ///
    ///     "verified": false
    public let verified: Bool?
    
    /// The number of followers this account currently has. Under certain conditions of duress, this field will temporarily indicate “0”. Example:
    ///
    ///     "followers_count": 21
    public let followers_count: Int?
    
    /// The number of users this account is following (AKA their “followings”). Under certain conditions of duress, this field will temporarily indicate “0”. Example:
    ///
    ///     "friends_count": 32
    public let friends_count: Int?
    
    /// The number of public lists that this user is a member of. Example:
    ///
    ///     "listed_count": 9274
    public let listed_count: Int?
    
    /// The number of Tweets this user has liked in the account’s lifetime. British spelling used in the field name for historical reasons. Example:
    ///
    ///     "favourites_count": 13
    public let favourites_count: Int?
    
    /// The number of Tweets (including retweets) issued by the user. Example:
    ///
    ///     "statuses_count": 42
    public let statuses_count: Int?
    
    /// The UTC datetime that the user account was created on Twitter. Example:
    ///
    ///     "created_at": "Mon Nov 29 21:18:15 +0000 2010"
    public let created_at: String?
    
    /// The HTTPS-based URL pointing to the standard web representation of the user’s uploaded profile banner. By adding a final path element of the URL, it is possible to obtain different image sizes optimized for specific displays. For size variants, please see User Profile Images and Banners .
    ///
    /// Example:
    ///
    ///     "profile_banner_url": "https:/// si0.twimg.com/profile_banners/819797/1348102824"
    public let profile_banner_url: String?
    
    /// A HTTPS-based URL pointing to the user’s profile image. Example:
    ///
    ///     "profile_image_url_https":
    /// "https:/// abs.twimg.com/sticky/default_profile_images/default_profile_normal.png"
    public let profile_image_url_https: String?
    
    /// When true, indicates that the user has not altered the theme or background of their user profile. Example:
    ///
    ///     "default_profile": false
    public let default_profile: Bool?
    
    /// When true, indicates that the user has not uploaded their own profile image and a default image is used instead. Example:
    ///
    ///     "default_profile_image": false
    public let default_profile_image: Bool?
    
    /// When present, indicates a list of uppercase two-letter country codes this content is withheld from. Twitter supports the following non-country values for this field:
    ///
    /// “XX” - Content is withheld in all countries “XY” - Content is withheld due to a DMCA request.
    ///
    /// Example:
    ///
    ///     "withheld_in_countries": ["GR", "HK", "MY"]
    public let withheld_in_countries: [String]?
    
    /// When present, indicates that the content being withheld is a “user.”
    ///
    /// Example:
    ///
    ///     "withheld_scope": "user"
    public let withheld_scope: String?

    public init(id: Int64, id_str: String, name: String?, screen_name: String?, location: String?, url: String?, description: String?, protected: Bool?, verified: Bool?, followers_count: Int?, friends_count: Int?, listed_count: Int?, favourites_count: Int?, statuses_count: Int?, created_at: String?, profile_banner_url: String?, profile_image_url_https: String?, default_profile: Bool?, default_profile_image: Bool?, withheld_in_countries: [String]?, withheld_scope: String?) {
        self.id = id
        self.id_str = id_str
        self.name = name
        self.screen_name = screen_name
        self.location = location
        self.url = url
        self.description = description
        self.protected = protected
        self.verified = verified
        self.followers_count = followers_count
        self.friends_count = friends_count
        self.listed_count = listed_count
        self.favourites_count = favourites_count
        self.statuses_count = statuses_count
        self.created_at = created_at
        self.profile_banner_url = profile_banner_url
        self.profile_image_url_https = profile_image_url_https
        self.default_profile = default_profile
        self.default_profile_image = default_profile_image
        self.withheld_in_countries = withheld_in_countries
        self.withheld_scope = withheld_scope
    }
}

extension User: Codable {}
