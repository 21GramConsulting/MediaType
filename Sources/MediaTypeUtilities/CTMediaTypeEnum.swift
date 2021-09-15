import Foundation
import MediaTypeEnums

public protocol CTMediaTypeEnum {
  associatedtype SubMedia: CTMediaSubtypeEnum where SubMedia.Media == Self, SubMedia: CustomStringConvertible
  static var rawValue: MediaTypeEnum { get }
}

public extension MediaTypeEnum {
  enum application: CTMediaTypeEnum {}
  enum audio: CTMediaTypeEnum {}
  enum font: CTMediaTypeEnum {}
  enum image: CTMediaTypeEnum {}
  enum message: CTMediaTypeEnum {}
  enum model: CTMediaTypeEnum {}
  enum multipart: CTMediaTypeEnum {}
  enum text: CTMediaTypeEnum {}
  enum video: CTMediaTypeEnum {}
}

public extension MediaTypeEnum.application {
  public typealias SubMedia = MediaTypeEnum.Application
  public static let rawValue: MediaTypeEnum = .application
}

public extension MediaTypeEnum.audio {
  public typealias SubMedia = MediaTypeEnum.Audio
  public static let rawValue: MediaTypeEnum = .audio
}
public extension MediaTypeEnum.font {
  public typealias SubMedia = MediaTypeEnum.Font
  public static let rawValue: MediaTypeEnum = .font
}
public extension MediaTypeEnum.image {
  public typealias SubMedia = MediaTypeEnum.Image
  public static let rawValue: MediaTypeEnum = .image
}
public extension MediaTypeEnum.message {
  public typealias SubMedia = MediaTypeEnum.Message
  public static let rawValue: MediaTypeEnum = .message
}
public extension MediaTypeEnum.model {
  public typealias SubMedia = MediaTypeEnum.Model
  public static let rawValue: MediaTypeEnum = .model
}
public extension MediaTypeEnum.multipart {
  public typealias SubMedia = MediaTypeEnum.Multipart
  public static let rawValue: MediaTypeEnum = .multipart
}
public extension MediaTypeEnum.text {
  public typealias SubMedia = MediaTypeEnum.Text
  public static let rawValue: MediaTypeEnum = .text
}
public extension MediaTypeEnum.video {
  public typealias SubMedia = MediaTypeEnum.Video
  public static let rawValue: MediaTypeEnum = .video
}