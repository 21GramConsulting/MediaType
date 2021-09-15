import Foundation

public extension MediaTypeEnum {
  enum Video {
    case AV1
    case BMPEG
    case BT656
    case CelB
    case DV
    case FFV1
    case H261
    case H263
    case H2631998
    case H2632000
    case H264
    case H264RCDO
    case H264SVC
    case H265
    case JPEG
    case MP1S
    case MP2P
    case MP2T
    case MP4VES
    case MPV
    case SMPTE292M
    case VP8
    case VP9
    case _1dInterleavedParityfec
    case _3gpp
    case _3gpp2
    case _3gppTt
    case encaprtp
    case example
    case flexfec
    case jpeg2000
    case jxsv
    case mj2
    case mp4
    case mpeg4Generic
    case nv
    case ogg
    case parityfec
    case pointer
    case quicktime
    case raptorfec
    case raw
    case rtpEncAescm128
    case rtploopback
    case rtx
    case scip
    case smpte291
    case ulpfec
    case vc1
    case vc2
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Video: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Video: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Video: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "AV1":                      self = .AV1
    case "BMPEG":                    self = .BMPEG
    case "BT656":                    self = .BT656
    case "CelB":                     self = .CelB
    case "DV":                       self = .DV
    case "FFV1":                     self = .FFV1
    case "H261":                     self = .H261
    case "H263":                     self = .H263
    case "H263-1998":                self = .H2631998
    case "H263-2000":                self = .H2632000
    case "H264":                     self = .H264
    case "H264-RCDO":                self = .H264RCDO
    case "H264-SVC":                 self = .H264SVC
    case "H265":                     self = .H265
    case "JPEG":                     self = .JPEG
    case "MP1S":                     self = .MP1S
    case "MP2P":                     self = .MP2P
    case "MP2T":                     self = .MP2T
    case "MP4V-ES":                  self = .MP4VES
    case "MPV":                      self = .MPV
    case "SMPTE292M":                self = .SMPTE292M
    case "VP8":                      self = .VP8
    case "VP9":                      self = .VP9
    case "1d-interleaved-parityfec": self = ._1dInterleavedParityfec
    case "3gpp":                     self = ._3gpp
    case "3gpp2":                    self = ._3gpp2
    case "3gpp-tt":                  self = ._3gppTt
    case "encaprtp":                 self = .encaprtp
    case "example":                  self = .example
    case "flexfec":                  self = .flexfec
    case "jpeg2000":                 self = .jpeg2000
    case "jxsv":                     self = .jxsv
    case "mj2":                      self = .mj2
    case "mp4":                      self = .mp4
    case "mpeg4-generic":            self = .mpeg4Generic
    case "nv":                       self = .nv
    case "ogg":                      self = .ogg
    case "parityfec":                self = .parityfec
    case "pointer":                  self = .pointer
    case "quicktime":                self = .quicktime
    case "raptorfec":                self = .raptorfec
    case "raw":                      self = .raw
    case "rtp-enc-aescm128":         self = .rtpEncAescm128
    case "rtploopback":              self = .rtploopback
    case "rtx":                      self = .rtx
    case "scip":                     self = .scip
    case "smpte291":                 self = .smpte291
    case "ulpfec":                   self = .ulpfec
    case "vc1":                      self = .vc1
    case "vc2":                      self = .vc2
    case "*":                        self = .any
    default:                         self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .AV1:                     return "AV1"
    case .BMPEG:                   return "BMPEG"
    case .BT656:                   return "BT656"
    case .CelB:                    return "CelB"
    case .DV:                      return "DV"
    case .FFV1:                    return "FFV1"
    case .H261:                    return "H261"
    case .H263:                    return "H263"
    case .H2631998:                return "H263-1998"
    case .H2632000:                return "H263-2000"
    case .H264:                    return "H264"
    case .H264RCDO:                return "H264-RCDO"
    case .H264SVC:                 return "H264-SVC"
    case .H265:                    return "H265"
    case .JPEG:                    return "JPEG"
    case .MP1S:                    return "MP1S"
    case .MP2P:                    return "MP2P"
    case .MP2T:                    return "MP2T"
    case .MP4VES:                  return "MP4V-ES"
    case .MPV:                     return "MPV"
    case .SMPTE292M:               return "SMPTE292M"
    case .VP8:                     return "VP8"
    case .VP9:                     return "VP9"
    case ._1dInterleavedParityfec: return "1d-interleaved-parityfec"
    case ._3gpp:                   return "3gpp"
    case ._3gpp2:                  return "3gpp2"
    case ._3gppTt:                 return "3gpp-tt"
    case .encaprtp:                return "encaprtp"
    case .example:                 return "example"
    case .flexfec:                 return "flexfec"
    case .jpeg2000:                return "jpeg2000"
    case .jxsv:                    return "jxsv"
    case .mj2:                     return "mj2"
    case .mp4:                     return "mp4"
    case .mpeg4Generic:            return "mpeg4-generic"
    case .nv:                      return "nv"
    case .ogg:                     return "ogg"
    case .parityfec:               return "parityfec"
    case .pointer:                 return "pointer"
    case .quicktime:               return "quicktime"
    case .raptorfec:               return "raptorfec"
    case .raw:                     return "raw"
    case .rtpEncAescm128:          return "rtp-enc-aescm128"
    case .rtploopback:             return "rtploopback"
    case .rtx:                     return "rtx"
    case .scip:                    return "scip"
    case .smpte291:                return "smpte291"
    case .ulpfec:                  return "ulpfec"
    case .vc1:                     return "vc1"
    case .vc2:                     return "vc2"
    case .other(let other):        return other
    case .any:                     return "*"
    }
  }
}
