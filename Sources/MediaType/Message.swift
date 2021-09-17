import Foundation

public enum Message {
  case CPIM(Suffix? = nil, Parameters? = nil)
  case deliveryStatus(Suffix? = nil, Parameters? = nil)
  case dispositionNotification(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case externalBody(Suffix? = nil, Parameters? = nil)
  case feedbackReport(Suffix? = nil, Parameters? = nil)
  case global(Suffix? = nil, Parameters? = nil)
  case globalDeliveryStatus(Suffix? = nil, Parameters? = nil)
  case globalDispositionNotification(Suffix? = nil, Parameters? = nil)
  case globalHeaders(Suffix? = nil, Parameters? = nil)
  case http(Suffix? = nil, Parameters? = nil)
  case imdn(Suffix? = nil, Parameters? = nil)
  case news(Suffix? = nil, Parameters? = nil)
  case partial(Suffix? = nil, Parameters? = nil)
  case rfc822(Suffix? = nil, Parameters? = nil)
  case sHttp(Suffix? = nil, Parameters? = nil)
  case sip(Suffix? = nil, Parameters? = nil)
  case sipfrag(Suffix? = nil, Parameters? = nil)
  case trackingStatus(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Message: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Message: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "CPIM":                            self = .CPIM(suffix, parameters)
    case "delivery-status":                 self = .deliveryStatus(suffix, parameters)
    case "disposition-notification":        self = .dispositionNotification(suffix, parameters)
    case "example":                         self = .example(suffix, parameters)
    case "external-body":                   self = .externalBody(suffix, parameters)
    case "feedback-report":                 self = .feedbackReport(suffix, parameters)
    case "global":                          self = .global(suffix, parameters)
    case "global-delivery-status":          self = .globalDeliveryStatus(suffix, parameters)
    case "global-disposition-notification": self = .globalDispositionNotification(suffix, parameters)
    case "global-headers":                  self = .globalHeaders(suffix, parameters)
    case "http":                            self = .http(suffix, parameters)
    case "imdn":                            self = .imdn(suffix, parameters)
    case "news":                            self = .news(suffix, parameters)
    case "partial":                         self = .partial(suffix, parameters)
    case "rfc822":                          self = .rfc822(suffix, parameters)
    case "s-http":                          self = .sHttp(suffix, parameters)
    case "sip":                             self = .sip(suffix, parameters)
    case "sipfrag":                         self = .sipfrag(suffix, parameters)
    case "tracking-status":                 self = .trackingStatus(suffix, parameters)
    case "*":                               self = .anything(suffix, parameters)
    default:                                self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .CPIM(let suffix, let parameters):                          return "CPIM\(suffix)\(parameters)"
    case .deliveryStatus(let suffix, let parameters):                return "delivery-status\(suffix)\(parameters)"
    case .dispositionNotification(let suffix, let parameters):       return "disposition-notification\(suffix)\(parameters)"
    case .example(let suffix, let parameters):                       return "example\(suffix)\(parameters)"
    case .externalBody(let suffix, let parameters):                  return "external-body\(suffix)\(parameters)"
    case .feedbackReport(let suffix, let parameters):                return "feedback-report\(suffix)\(parameters)"
    case .global(let suffix, let parameters):                        return "global\(suffix)\(parameters)"
    case .globalDeliveryStatus(let suffix, let parameters):          return "global-delivery-status\(suffix)\(parameters)"
    case .globalDispositionNotification(let suffix, let parameters): return "global-disposition-notification\(suffix)\(parameters)"
    case .globalHeaders(let suffix, let parameters):                 return "global-headers\(suffix)\(parameters)"
    case .http(let suffix, let parameters):                          return "http\(suffix)\(parameters)"
    case .imdn(let suffix, let parameters):                          return "imdn\(suffix)\(parameters)"
    case .news(let suffix, let parameters):                          return "news\(suffix)\(parameters)"
    case .partial(let suffix, let parameters):                       return "partial\(suffix)\(parameters)"
    case .rfc822(let suffix, let parameters):                        return "rfc822\(suffix)\(parameters)"
    case .sHttp(let suffix, let parameters):                         return "s-http\(suffix)\(parameters)"
    case .sip(let suffix, let parameters):                           return "sip\(suffix)\(parameters)"
    case .sipfrag(let suffix, let parameters):                       return "sipfrag\(suffix)\(parameters)"
    case .trackingStatus(let suffix, let parameters):                return "tracking-status\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters):              return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):                      return "*\(suffix)\(parameters)"
    }
  }

}

extension Message: MediaSubtype { public var type: MediaType { .message(self) } }
