import Foundation

public enum Video {
  case _1dInterleavedParityfec(Suffix? = nil, Parameters? = nil)
  case _3gpp(Suffix? = nil, Parameters? = nil)
  case _3gpp2(Suffix? = nil, Parameters? = nil)
  case _3gppTt(Suffix? = nil, Parameters? = nil)
  case AV1(Suffix? = nil, Parameters? = nil)
  case BMPEG(Suffix? = nil, Parameters? = nil)
  case BT656(Suffix? = nil, Parameters? = nil)
  case CelB(Suffix? = nil, Parameters? = nil)
  case DV(Suffix? = nil, Parameters? = nil)
  case encaprtp(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case FFV1(Suffix? = nil, Parameters? = nil)
  case flexfec(Suffix? = nil, Parameters? = nil)
  case H261(Suffix? = nil, Parameters? = nil)
  case H263(Suffix? = nil, Parameters? = nil)
  case H2631998(Suffix? = nil, Parameters? = nil)
  case H2632000(Suffix? = nil, Parameters? = nil)
  case H264(Suffix? = nil, Parameters? = nil)
  case H264RCDO(Suffix? = nil, Parameters? = nil)
  case H264SVC(Suffix? = nil, Parameters? = nil)
  case H265(Suffix? = nil, Parameters? = nil)
  case JPEG(Suffix? = nil, Parameters? = nil)
  case jpeg2000(Suffix? = nil, Parameters? = nil)
  case jxsv(Suffix? = nil, Parameters? = nil)
  case mj2(Suffix? = nil, Parameters? = nil)
  case MP1S(Suffix? = nil, Parameters? = nil)
  case MP2P(Suffix? = nil, Parameters? = nil)
  case MP2T(Suffix? = nil, Parameters? = nil)
  case mp4(Suffix? = nil, Parameters? = nil)
  case MP4VES(Suffix? = nil, Parameters? = nil)
  case MPV(Suffix? = nil, Parameters? = nil)
  case mpeg4Generic(Suffix? = nil, Parameters? = nil)
  case nv(Suffix? = nil, Parameters? = nil)
  case ogg(Suffix? = nil, Parameters? = nil)
  case parityfec(Suffix? = nil, Parameters? = nil)
  case pointer(Suffix? = nil, Parameters? = nil)
  case quicktime(Suffix? = nil, Parameters? = nil)
  case raptorfec(Suffix? = nil, Parameters? = nil)
  case raw(Suffix? = nil, Parameters? = nil)
  case rtpEncAescm128(Suffix? = nil, Parameters? = nil)
  case rtploopback(Suffix? = nil, Parameters? = nil)
  case rtx(Suffix? = nil, Parameters? = nil)
  case scip(Suffix? = nil, Parameters? = nil)
  case smpte291(Suffix? = nil, Parameters? = nil)
  case SMPTE292M(Suffix? = nil, Parameters? = nil)
  case ulpfec(Suffix? = nil, Parameters? = nil)
  case vc1(Suffix? = nil, Parameters? = nil)
  case vc2(Suffix? = nil, Parameters? = nil)
  case VP8(Suffix? = nil, Parameters? = nil)
  case VP9(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Video: CustomStringConvertible { 
  public var description: String {
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
