import Foundation
import MediaTypeEnums

public protocol CTMediaSubtypeEnum: CustomStringConvertible, Equatable {
  associatedtype Media: CTMediaTypeEnum where Media.SubMedia == Self
}

extension MediaTypeEnum.Application: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.application }
extension MediaTypeEnum.Audio: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.audio }
extension MediaTypeEnum.Font: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.font }
extension MediaTypeEnum.Image: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.image }
extension MediaTypeEnum.Message: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.message }
extension MediaTypeEnum.Model: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.model }
extension MediaTypeEnum.Multipart: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.multipart }
extension MediaTypeEnum.Text: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.text }
extension MediaTypeEnum.Video: CTMediaSubtypeEnum { public typealias Media = MediaTypeEnum.video }