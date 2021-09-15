import Foundation

public extension MediaTypeEnum {
  enum Message {
    case CPIM
    case deliveryStatus
    case dispositionNotification
    case example
    case feedbackReport
    case global
    case globalDeliveryStatus
    case globalDispositionNotification
    case globalHeaders
    case http
    case imdn
    case news
    case sHttp
    case sip
    case sipfrag
    case trackingStatus
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Message: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Message: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Message: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "CPIM":                            self = .CPIM
    case "delivery-status":                 self = .deliveryStatus
    case "disposition-notification":        self = .dispositionNotification
    case "example":                         self = .example
    case "feedback-report":                 self = .feedbackReport
    case "global":                          self = .global
    case "global-delivery-status":          self = .globalDeliveryStatus
    case "global-disposition-notification": self = .globalDispositionNotification
    case "global-headers":                  self = .globalHeaders
    case "http":                            self = .http
    case "imdn":                            self = .imdn
    case "news":                            self = .news
    case "s-http":                          self = .sHttp
    case "sip":                             self = .sip
    case "sipfrag":                         self = .sipfrag
    case "tracking-status":                 self = .trackingStatus
    case "*":                               self = .any
    default:                                self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .CPIM:                          return "CPIM"
    case .deliveryStatus:                return "delivery-status"
    case .dispositionNotification:       return "disposition-notification"
    case .example:                       return "example"
    case .feedbackReport:                return "feedback-report"
    case .global:                        return "global"
    case .globalDeliveryStatus:          return "global-delivery-status"
    case .globalDispositionNotification: return "global-disposition-notification"
    case .globalHeaders:                 return "global-headers"
    case .http:                          return "http"
    case .imdn:                          return "imdn"
    case .news:                          return "news"
    case .sHttp:                         return "s-http"
    case .sip:                           return "sip"
    case .sipfrag:                       return "sipfrag"
    case .trackingStatus:                return "tracking-status"
    case .other(let other):              return other
    case .any:                           return "*"
    }
  }
}
