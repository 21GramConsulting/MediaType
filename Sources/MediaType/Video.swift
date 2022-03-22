import Foundation

public enum Video {
  /// Represents the `1d-interleaved-parityfec` subtype.
  case _1dInterleavedParityfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `3gpp` subtype.
  case _3gpp(Suffix? = nil, Parameters? = nil)
  /// Represents the `3gpp2` subtype.
  case _3gpp2(Suffix? = nil, Parameters? = nil)
  /// Represents the `3gpp-tt` subtype.
  case _3gppTt(Suffix? = nil, Parameters? = nil)
  /// Represents the `AV1` subtype.
  case AV1(Suffix? = nil, Parameters? = nil)
  /// Represents the `BMPEG` subtype.
  case BMPEG(Suffix? = nil, Parameters? = nil)
  /// Represents the `BT656` subtype.
  case BT656(Suffix? = nil, Parameters? = nil)
  /// Represents the `CelB` subtype.
  case CelB(Suffix? = nil, Parameters? = nil)
  /// Represents the `DV` subtype.
  case DV(Suffix? = nil, Parameters? = nil)
  /// Represents the `encaprtp` subtype.
  case encaprtp(Suffix? = nil, Parameters? = nil)
  /// Represents the `example` subtype.
  case example(Suffix? = nil, Parameters? = nil)
  /// Represents the `FFV1` subtype.
  case FFV1(Suffix? = nil, Parameters? = nil)
  /// Represents the `flexfec` subtype.
  case flexfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `H261` subtype.
  case H261(Suffix? = nil, Parameters? = nil)
  /// Represents the `H263` subtype.
  case H263(Suffix? = nil, Parameters? = nil)
  /// Represents the `H263-1998` subtype.
  case H2631998(Suffix? = nil, Parameters? = nil)
  /// Represents the `H263-2000` subtype.
  case H2632000(Suffix? = nil, Parameters? = nil)
  /// Represents the `H264` subtype.
  case H264(Suffix? = nil, Parameters? = nil)
  /// Represents the `H264-RCDO` subtype.
  case H264RCDO(Suffix? = nil, Parameters? = nil)
  /// Represents the `H264-SVC` subtype.
  case H264SVC(Suffix? = nil, Parameters? = nil)
  /// Represents the `H265` subtype.
  case H265(Suffix? = nil, Parameters? = nil)
  /// Represents the `JPEG` subtype.
  case JPEG(Suffix? = nil, Parameters? = nil)
  /// Represents the `jpeg2000` subtype.
  case jpeg2000(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxsv` subtype.
  case jxsv(Suffix? = nil, Parameters? = nil)
  /// Represents the `mj2` subtype.
  case mj2(Suffix? = nil, Parameters? = nil)
  /// Represents the `MP1S` subtype.
  case MP1S(Suffix? = nil, Parameters? = nil)
  /// Represents the `MP2P` subtype.
  case MP2P(Suffix? = nil, Parameters? = nil)
  /// Represents the `MP2T` subtype.
  case MP2T(Suffix? = nil, Parameters? = nil)
  /// Represents the `mp4` subtype.
  case mp4(Suffix? = nil, Parameters? = nil)
  /// Represents the `MP4V-ES` subtype.
  case MP4VES(Suffix? = nil, Parameters? = nil)
  /// Represents the `MPV` subtype.
  case MPV(Suffix? = nil, Parameters? = nil)
  /// Represents the `mpeg` subtype.
  case mpeg(Suffix? = nil, Parameters? = nil)
  /// Represents the `mpeg4-generic` subtype.
  case mpeg4Generic(Suffix? = nil, Parameters? = nil)
  /// Represents the `nv` subtype.
  case nv(Suffix? = nil, Parameters? = nil)
  /// Represents the `ogg` subtype.
  case ogg(Suffix? = nil, Parameters? = nil)
  /// Represents the `parityfec` subtype.
  case parityfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `pointer` subtype.
  case pointer(Suffix? = nil, Parameters? = nil)
  /// Represents the `quicktime` subtype.
  case quicktime(Suffix? = nil, Parameters? = nil)
  /// Represents the `raptorfec` subtype.
  case raptorfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `raw` subtype.
  case raw(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtp-enc-aescm128` subtype.
  case rtpEncAescm128(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtploopback` subtype.
  case rtploopback(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtx` subtype.
  case rtx(Suffix? = nil, Parameters? = nil)
  /// Represents the `scip` subtype.
  case scip(Suffix? = nil, Parameters? = nil)
  /// Represents the `smpte291` subtype.
  case smpte291(Suffix? = nil, Parameters? = nil)
  /// Represents the `SMPTE292M` subtype.
  case SMPTE292M(Suffix? = nil, Parameters? = nil)
  /// Represents the `ulpfec` subtype.
  case ulpfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `vc1` subtype.
  case vc1(Suffix? = nil, Parameters? = nil)
  /// Represents the `vc2` subtype.
  case vc2(Suffix? = nil, Parameters? = nil)
  /// Represents the `VP8` subtype.
  case VP8(Suffix? = nil, Parameters? = nil)
  /// Represents the `VP9` subtype.
  case VP9(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Video: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Video: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "1d-interleaved-parityfec": self = ._1dInterleavedParityfec(suffix, parameters)
    case "3gpp":                     self = ._3gpp(suffix, parameters)
    case "3gpp2":                    self = ._3gpp2(suffix, parameters)
    case "3gpp-tt":                  self = ._3gppTt(suffix, parameters)
    case "AV1":                      self = .AV1(suffix, parameters)
    case "BMPEG":                    self = .BMPEG(suffix, parameters)
    case "BT656":                    self = .BT656(suffix, parameters)
    case "CelB":                     self = .CelB(suffix, parameters)
    case "DV":                       self = .DV(suffix, parameters)
    case "encaprtp":                 self = .encaprtp(suffix, parameters)
    case "example":                  self = .example(suffix, parameters)
    case "FFV1":                     self = .FFV1(suffix, parameters)
    case "flexfec":                  self = .flexfec(suffix, parameters)
    case "H261":                     self = .H261(suffix, parameters)
    case "H263":                     self = .H263(suffix, parameters)
    case "H263-1998":                self = .H2631998(suffix, parameters)
    case "H263-2000":                self = .H2632000(suffix, parameters)
    case "H264":                     self = .H264(suffix, parameters)
    case "H264-RCDO":                self = .H264RCDO(suffix, parameters)
    case "H264-SVC":                 self = .H264SVC(suffix, parameters)
    case "H265":                     self = .H265(suffix, parameters)
    case "JPEG":                     self = .JPEG(suffix, parameters)
    case "jpeg2000":                 self = .jpeg2000(suffix, parameters)
    case "jxsv":                     self = .jxsv(suffix, parameters)
    case "mj2":                      self = .mj2(suffix, parameters)
    case "MP1S":                     self = .MP1S(suffix, parameters)
    case "MP2P":                     self = .MP2P(suffix, parameters)
    case "MP2T":                     self = .MP2T(suffix, parameters)
    case "mp4":                      self = .mp4(suffix, parameters)
    case "MP4V-ES":                  self = .MP4VES(suffix, parameters)
    case "MPV":                      self = .MPV(suffix, parameters)
    case "mpeg":                     self = .mpeg(suffix, parameters)
    case "mpeg4-generic":            self = .mpeg4Generic(suffix, parameters)
    case "nv":                       self = .nv(suffix, parameters)
    case "ogg":                      self = .ogg(suffix, parameters)
    case "parityfec":                self = .parityfec(suffix, parameters)
    case "pointer":                  self = .pointer(suffix, parameters)
    case "quicktime":                self = .quicktime(suffix, parameters)
    case "raptorfec":                self = .raptorfec(suffix, parameters)
    case "raw":                      self = .raw(suffix, parameters)
    case "rtp-enc-aescm128":         self = .rtpEncAescm128(suffix, parameters)
    case "rtploopback":              self = .rtploopback(suffix, parameters)
    case "rtx":                      self = .rtx(suffix, parameters)
    case "scip":                     self = .scip(suffix, parameters)
    case "smpte291":                 self = .smpte291(suffix, parameters)
    case "SMPTE292M":                self = .SMPTE292M(suffix, parameters)
    case "ulpfec":                   self = .ulpfec(suffix, parameters)
    case "vc1":                      self = .vc1(suffix, parameters)
    case "vc2":                      self = .vc2(suffix, parameters)
    case "VP8":                      self = .VP8(suffix, parameters)
    case "VP9":                      self = .VP9(suffix, parameters)
    case "*":                        self = .anything(suffix, parameters)
    default:                         self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case ._1dInterleavedParityfec(let suffix, let parameters): return "1d-interleaved-parityfec\(suffix)\(parameters)"
    case ._3gpp(let suffix, let parameters):                   return "3gpp\(suffix)\(parameters)"
    case ._3gpp2(let suffix, let parameters):                  return "3gpp2\(suffix)\(parameters)"
    case ._3gppTt(let suffix, let parameters):                 return "3gpp-tt\(suffix)\(parameters)"
    case .AV1(let suffix, let parameters):                     return "AV1\(suffix)\(parameters)"
    case .BMPEG(let suffix, let parameters):                   return "BMPEG\(suffix)\(parameters)"
    case .BT656(let suffix, let parameters):                   return "BT656\(suffix)\(parameters)"
    case .CelB(let suffix, let parameters):                    return "CelB\(suffix)\(parameters)"
    case .DV(let suffix, let parameters):                      return "DV\(suffix)\(parameters)"
    case .encaprtp(let suffix, let parameters):                return "encaprtp\(suffix)\(parameters)"
    case .example(let suffix, let parameters):                 return "example\(suffix)\(parameters)"
    case .FFV1(let suffix, let parameters):                    return "FFV1\(suffix)\(parameters)"
    case .flexfec(let suffix, let parameters):                 return "flexfec\(suffix)\(parameters)"
    case .H261(let suffix, let parameters):                    return "H261\(suffix)\(parameters)"
    case .H263(let suffix, let parameters):                    return "H263\(suffix)\(parameters)"
    case .H2631998(let suffix, let parameters):                return "H263-1998\(suffix)\(parameters)"
    case .H2632000(let suffix, let parameters):                return "H263-2000\(suffix)\(parameters)"
    case .H264(let suffix, let parameters):                    return "H264\(suffix)\(parameters)"
    case .H264RCDO(let suffix, let parameters):                return "H264-RCDO\(suffix)\(parameters)"
    case .H264SVC(let suffix, let parameters):                 return "H264-SVC\(suffix)\(parameters)"
    case .H265(let suffix, let parameters):                    return "H265\(suffix)\(parameters)"
    case .JPEG(let suffix, let parameters):                    return "JPEG\(suffix)\(parameters)"
    case .jpeg2000(let suffix, let parameters):                return "jpeg2000\(suffix)\(parameters)"
    case .jxsv(let suffix, let parameters):                    return "jxsv\(suffix)\(parameters)"
    case .mj2(let suffix, let parameters):                     return "mj2\(suffix)\(parameters)"
    case .MP1S(let suffix, let parameters):                    return "MP1S\(suffix)\(parameters)"
    case .MP2P(let suffix, let parameters):                    return "MP2P\(suffix)\(parameters)"
    case .MP2T(let suffix, let parameters):                    return "MP2T\(suffix)\(parameters)"
    case .mp4(let suffix, let parameters):                     return "mp4\(suffix)\(parameters)"
    case .MP4VES(let suffix, let parameters):                  return "MP4V-ES\(suffix)\(parameters)"
    case .MPV(let suffix, let parameters):                     return "MPV\(suffix)\(parameters)"
    case .mpeg(let suffix, let parameters):                    return "mpeg\(suffix)\(parameters)"
    case .mpeg4Generic(let suffix, let parameters):            return "mpeg4-generic\(suffix)\(parameters)"
    case .nv(let suffix, let parameters):                      return "nv\(suffix)\(parameters)"
    case .ogg(let suffix, let parameters):                     return "ogg\(suffix)\(parameters)"
    case .parityfec(let suffix, let parameters):               return "parityfec\(suffix)\(parameters)"
    case .pointer(let suffix, let parameters):                 return "pointer\(suffix)\(parameters)"
    case .quicktime(let suffix, let parameters):               return "quicktime\(suffix)\(parameters)"
    case .raptorfec(let suffix, let parameters):               return "raptorfec\(suffix)\(parameters)"
    case .raw(let suffix, let parameters):                     return "raw\(suffix)\(parameters)"
    case .rtpEncAescm128(let suffix, let parameters):          return "rtp-enc-aescm128\(suffix)\(parameters)"
    case .rtploopback(let suffix, let parameters):             return "rtploopback\(suffix)\(parameters)"
    case .rtx(let suffix, let parameters):                     return "rtx\(suffix)\(parameters)"
    case .scip(let suffix, let parameters):                    return "scip\(suffix)\(parameters)"
    case .smpte291(let suffix, let parameters):                return "smpte291\(suffix)\(parameters)"
    case .SMPTE292M(let suffix, let parameters):               return "SMPTE292M\(suffix)\(parameters)"
    case .ulpfec(let suffix, let parameters):                  return "ulpfec\(suffix)\(parameters)"
    case .vc1(let suffix, let parameters):                     return "vc1\(suffix)\(parameters)"
    case .vc2(let suffix, let parameters):                     return "vc2\(suffix)\(parameters)"
    case .VP8(let suffix, let parameters):                     return "VP8\(suffix)\(parameters)"
    case .VP9(let suffix, let parameters):                     return "VP9\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters):        return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):                return "*\(suffix)\(parameters)"
    }
  }

}

extension Video: MediaSubtype { public var type: MediaType { .video(self) } }

extension Video: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .AV1(let lhsSuffix, let lhsParameters):
      guard case let .AV1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .BMPEG(let lhsSuffix, let lhsParameters):
      guard case let .BMPEG(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .BT656(let lhsSuffix, let lhsParameters):
      guard case let .BT656(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .CelB(let lhsSuffix, let lhsParameters):
      guard case let .CelB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .DV(let lhsSuffix, let lhsParameters):
      guard case let .DV(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .FFV1(let lhsSuffix, let lhsParameters):
      guard case let .FFV1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H261(let lhsSuffix, let lhsParameters):
      guard case let .H261(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H263(let lhsSuffix, let lhsParameters):
      guard case let .H263(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H2631998(let lhsSuffix, let lhsParameters):
      guard case let .H2631998(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H2632000(let lhsSuffix, let lhsParameters):
      guard case let .H2632000(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H264(let lhsSuffix, let lhsParameters):
      guard case let .H264(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H264RCDO(let lhsSuffix, let lhsParameters):
      guard case let .H264RCDO(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H264SVC(let lhsSuffix, let lhsParameters):
      guard case let .H264SVC(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .H265(let lhsSuffix, let lhsParameters):
      guard case let .H265(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .JPEG(let lhsSuffix, let lhsParameters):
      guard case let .JPEG(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MP1S(let lhsSuffix, let lhsParameters):
      guard case let .MP1S(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MP2P(let lhsSuffix, let lhsParameters):
      guard case let .MP2P(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MP2T(let lhsSuffix, let lhsParameters):
      guard case let .MP2T(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MP4VES(let lhsSuffix, let lhsParameters):
      guard case let .MP4VES(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MPV(let lhsSuffix, let lhsParameters):
      guard case let .MPV(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .SMPTE292M(let lhsSuffix, let lhsParameters):
      guard case let .SMPTE292M(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .VP8(let lhsSuffix, let lhsParameters):
      guard case let .VP8(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .VP9(let lhsSuffix, let lhsParameters):
      guard case let .VP9(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._1dInterleavedParityfec(let lhsSuffix, let lhsParameters):
      guard case let ._1dInterleavedParityfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._3gpp(let lhsSuffix, let lhsParameters):
      guard case let ._3gpp(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._3gpp2(let lhsSuffix, let lhsParameters):
      guard case let ._3gpp2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._3gppTt(let lhsSuffix, let lhsParameters):
      guard case let ._3gppTt(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .encaprtp(let lhsSuffix, let lhsParameters):
      guard case let .encaprtp(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .example(let lhsSuffix, let lhsParameters):
      guard case let .example(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .flexfec(let lhsSuffix, let lhsParameters):
      guard case let .flexfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jpeg2000(let lhsSuffix, let lhsParameters):
      guard case let .jpeg2000(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxsv(let lhsSuffix, let lhsParameters):
      guard case let .jxsv(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mj2(let lhsSuffix, let lhsParameters):
      guard case let .mj2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mp4(let lhsSuffix, let lhsParameters):
      guard case let .mp4(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mpeg(let lhsSuffix, let lhsParameters):
      guard case let .mpeg(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mpeg4Generic(let lhsSuffix, let lhsParameters):
      guard case let .mpeg4Generic(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .nv(let lhsSuffix, let lhsParameters):
      guard case let .nv(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ogg(let lhsSuffix, let lhsParameters):
      guard case let .ogg(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .parityfec(let lhsSuffix, let lhsParameters):
      guard case let .parityfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .pointer(let lhsSuffix, let lhsParameters):
      guard case let .pointer(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .quicktime(let lhsSuffix, let lhsParameters):
      guard case let .quicktime(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .raptorfec(let lhsSuffix, let lhsParameters):
      guard case let .raptorfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .raw(let lhsSuffix, let lhsParameters):
      guard case let .raw(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtpEncAescm128(let lhsSuffix, let lhsParameters):
      guard case let .rtpEncAescm128(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtploopback(let lhsSuffix, let lhsParameters):
      guard case let .rtploopback(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtx(let lhsSuffix, let lhsParameters):
      guard case let .rtx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .scip(let lhsSuffix, let lhsParameters):
      guard case let .scip(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .smpte291(let lhsSuffix, let lhsParameters):
      guard case let .smpte291(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ulpfec(let lhsSuffix, let lhsParameters):
      guard case let .ulpfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vc1(let lhsSuffix, let lhsParameters):
      guard case let .vc1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vc2(let lhsSuffix, let lhsParameters):
      guard case let .vc2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .other(let lhsSubtype, let lhsSuffix, let lhsParameters):
      guard case let .other(rhsSubtype, rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSubtype.description != rhsSubtype.description { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .anything(let lhsSuffix, let lhsParameters):
      guard case let .anything(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
    case .AV1(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .BMPEG(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .BT656(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .CelB(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .DV(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .FFV1(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H261(let suffix, let parameters):
      hasher.combine(6)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H263(let suffix, let parameters):
      hasher.combine(7)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H2631998(let suffix, let parameters):
      hasher.combine(8)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H2632000(let suffix, let parameters):
      hasher.combine(9)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H264(let suffix, let parameters):
      hasher.combine(10)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H264RCDO(let suffix, let parameters):
      hasher.combine(11)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H264SVC(let suffix, let parameters):
      hasher.combine(12)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .H265(let suffix, let parameters):
      hasher.combine(13)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .JPEG(let suffix, let parameters):
      hasher.combine(14)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MP1S(let suffix, let parameters):
      hasher.combine(15)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MP2P(let suffix, let parameters):
      hasher.combine(16)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MP2T(let suffix, let parameters):
      hasher.combine(17)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MP4VES(let suffix, let parameters):
      hasher.combine(18)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MPV(let suffix, let parameters):
      hasher.combine(19)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .SMPTE292M(let suffix, let parameters):
      hasher.combine(20)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .VP8(let suffix, let parameters):
      hasher.combine(21)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .VP9(let suffix, let parameters):
      hasher.combine(22)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._1dInterleavedParityfec(let suffix, let parameters):
      hasher.combine(23)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._3gpp(let suffix, let parameters):
      hasher.combine(24)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._3gpp2(let suffix, let parameters):
      hasher.combine(25)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._3gppTt(let suffix, let parameters):
      hasher.combine(26)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .encaprtp(let suffix, let parameters):
      hasher.combine(27)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .example(let suffix, let parameters):
      hasher.combine(28)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .flexfec(let suffix, let parameters):
      hasher.combine(29)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jpeg2000(let suffix, let parameters):
      hasher.combine(30)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxsv(let suffix, let parameters):
      hasher.combine(31)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mj2(let suffix, let parameters):
      hasher.combine(32)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mp4(let suffix, let parameters):
      hasher.combine(33)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mpeg(let suffix, let parameters):
      hasher.combine(34)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mpeg4Generic(let suffix, let parameters):
      hasher.combine(35)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .nv(let suffix, let parameters):
      hasher.combine(36)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ogg(let suffix, let parameters):
      hasher.combine(37)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .parityfec(let suffix, let parameters):
      hasher.combine(38)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .pointer(let suffix, let parameters):
      hasher.combine(39)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .quicktime(let suffix, let parameters):
      hasher.combine(40)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .raptorfec(let suffix, let parameters):
      hasher.combine(41)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .raw(let suffix, let parameters):
      hasher.combine(42)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtpEncAescm128(let suffix, let parameters):
      hasher.combine(43)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtploopback(let suffix, let parameters):
      hasher.combine(44)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtx(let suffix, let parameters):
      hasher.combine(45)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .scip(let suffix, let parameters):
      hasher.combine(46)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .smpte291(let suffix, let parameters):
      hasher.combine(47)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ulpfec(let suffix, let parameters):
      hasher.combine(48)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vc1(let suffix, let parameters):
      hasher.combine(49)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vc2(let suffix, let parameters):
      hasher.combine(50)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .other(let subtype, let suffix, let parameters):
      hasher.combine(-1)
      hasher.combine(subtype.description)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .anything(let suffix, let parameters):
      hasher.combine(-2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    }
  }
}
