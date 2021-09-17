import Foundation

public enum Audio {
  case _1dInterleavedParityfec(Suffix? = nil, Parameters? = nil)
  case _32kadpcm(Suffix? = nil, Parameters? = nil)
  case _3gpp(Suffix? = nil, Parameters? = nil)
  case _3gpp2(Suffix? = nil, Parameters? = nil)
  case aac(Suffix? = nil, Parameters? = nil)
  case ac3(Suffix? = nil, Parameters? = nil)
  case AMR(Suffix? = nil, Parameters? = nil)
  case AMRWB(Suffix? = nil, Parameters? = nil)
  case amrWb(Suffix? = nil, Parameters? = nil)
  case aptx(Suffix? = nil, Parameters? = nil)
  case asc(Suffix? = nil, Parameters? = nil)
  case ATRACADVANCEDLOSSLESS(Suffix? = nil, Parameters? = nil)
  case ATRACX(Suffix? = nil, Parameters? = nil)
  case ATRAC3(Suffix? = nil, Parameters? = nil)
  case basic(Suffix? = nil, Parameters? = nil)
  case BV16(Suffix? = nil, Parameters? = nil)
  case BV32(Suffix? = nil, Parameters? = nil)
  case clearmode(Suffix? = nil, Parameters? = nil)
  case CN(Suffix? = nil, Parameters? = nil)
  case DAT12(Suffix? = nil, Parameters? = nil)
  case dls(Suffix? = nil, Parameters? = nil)
  case dsrEs201108(Suffix? = nil, Parameters? = nil)
  case dsrEs202050(Suffix? = nil, Parameters? = nil)
  case dsrEs202211(Suffix? = nil, Parameters? = nil)
  case dsrEs202212(Suffix? = nil, Parameters? = nil)
  case DV(Suffix? = nil, Parameters? = nil)
  case DVI4(Suffix? = nil, Parameters? = nil)
  case eac3(Suffix? = nil, Parameters? = nil)
  case encaprtp(Suffix? = nil, Parameters? = nil)
  case EVRC(Suffix? = nil, Parameters? = nil)
  case EVRCQCP(Suffix? = nil, Parameters? = nil)
  case EVRC0(Suffix? = nil, Parameters? = nil)
  case EVRC1(Suffix? = nil, Parameters? = nil)
  case EVRCB(Suffix? = nil, Parameters? = nil)
  case EVRCB0(Suffix? = nil, Parameters? = nil)
  case EVRCB1(Suffix? = nil, Parameters? = nil)
  case EVRCNW(Suffix? = nil, Parameters? = nil)
  case EVRCNW0(Suffix? = nil, Parameters? = nil)
  case EVRCNW1(Suffix? = nil, Parameters? = nil)
  case EVRCWB(Suffix? = nil, Parameters? = nil)
  case EVRCWB0(Suffix? = nil, Parameters? = nil)
  case EVRCWB1(Suffix? = nil, Parameters? = nil)
  case EVS(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case flexfec(Suffix? = nil, Parameters? = nil)
  case fwdred(Suffix? = nil, Parameters? = nil)
  case G7110(Suffix? = nil, Parameters? = nil)
  case G719(Suffix? = nil, Parameters? = nil)
  case G7221(Suffix? = nil, Parameters? = nil)
  case G722(Suffix? = nil, Parameters? = nil)
  case G723(Suffix? = nil, Parameters? = nil)
  case G72616(Suffix? = nil, Parameters? = nil)
  case G72624(Suffix? = nil, Parameters? = nil)
  case G72632(Suffix? = nil, Parameters? = nil)
  case G72640(Suffix? = nil, Parameters? = nil)
  case G728(Suffix? = nil, Parameters? = nil)
  case G729(Suffix? = nil, Parameters? = nil)
  case G7291(Suffix? = nil, Parameters? = nil)
  case G729D(Suffix? = nil, Parameters? = nil)
  case G729E(Suffix? = nil, Parameters? = nil)
  case GSM(Suffix? = nil, Parameters? = nil)
  case GSMEFR(Suffix? = nil, Parameters? = nil)
  case GSMHR08(Suffix? = nil, Parameters? = nil)
  case iLBC(Suffix? = nil, Parameters? = nil)
  case L8(Suffix? = nil, Parameters? = nil)
  case L16(Suffix? = nil, Parameters? = nil)
  case L20(Suffix? = nil, Parameters? = nil)
  case L24(Suffix? = nil, Parameters? = nil)
  case LPC(Suffix? = nil, Parameters? = nil)
  case MELP(Suffix? = nil, Parameters? = nil)
  case MELP600(Suffix? = nil, Parameters? = nil)
  case MELP1200(Suffix? = nil, Parameters? = nil)
  case MELP2400(Suffix? = nil, Parameters? = nil)
  case mhas(Suffix? = nil, Parameters? = nil)
  case mobileXmf(Suffix? = nil, Parameters? = nil)
  case MPA(Suffix? = nil, Parameters? = nil)
  case mp4(Suffix? = nil, Parameters? = nil)
  case MP4ALATM(Suffix? = nil, Parameters? = nil)
  case mpaRobust(Suffix? = nil, Parameters? = nil)
  case mpeg(Suffix? = nil, Parameters? = nil)
  case mpeg4Generic(Suffix? = nil, Parameters? = nil)
  case ogg(Suffix? = nil, Parameters? = nil)
  case opus(Suffix? = nil, Parameters? = nil)
  case parityfec(Suffix? = nil, Parameters? = nil)
  case PCMA(Suffix? = nil, Parameters? = nil)
  case PCMAWB(Suffix? = nil, Parameters? = nil)
  case PCMU(Suffix? = nil, Parameters? = nil)
  case PCMUWB(Suffix? = nil, Parameters? = nil)
  case QCELP(Suffix? = nil, Parameters? = nil)
  case raptorfec(Suffix? = nil, Parameters? = nil)
  case RED(Suffix? = nil, Parameters? = nil)
  case rtpEncAescm128(Suffix? = nil, Parameters? = nil)
  case rtploopback(Suffix? = nil, Parameters? = nil)
  case rtpMidi(Suffix? = nil, Parameters? = nil)
  case rtx(Suffix? = nil, Parameters? = nil)
  case scip(Suffix? = nil, Parameters? = nil)
  case SMV(Suffix? = nil, Parameters? = nil)
  case SMV0(Suffix? = nil, Parameters? = nil)
  case SMVQCP(Suffix? = nil, Parameters? = nil)
  case sofa(Suffix? = nil, Parameters? = nil)
  case spMidi(Suffix? = nil, Parameters? = nil)
  case speex(Suffix? = nil, Parameters? = nil)
  case t140c(Suffix? = nil, Parameters? = nil)
  case t38(Suffix? = nil, Parameters? = nil)
  case telephoneEvent(Suffix? = nil, Parameters? = nil)
  case TETRA_ACELP(Suffix? = nil, Parameters? = nil)
  case TETRA_ACELP_BB(Suffix? = nil, Parameters? = nil)
  case tone(Suffix? = nil, Parameters? = nil)
  case TSVCIS(Suffix? = nil, Parameters? = nil)
  case UEMCLIP(Suffix? = nil, Parameters? = nil)
  case ulpfec(Suffix? = nil, Parameters? = nil)
  case usac(Suffix? = nil, Parameters? = nil)
  case VDVI(Suffix? = nil, Parameters? = nil)
  case VMRWB(Suffix? = nil, Parameters? = nil)
  case vorbis(Suffix? = nil, Parameters? = nil)
  case vorbisConfig(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Audio: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Audio: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "1d-interleaved-parityfec": self = ._1dInterleavedParityfec(suffix, parameters)
    case "32kadpcm":                 self = ._32kadpcm(suffix, parameters)
    case "3gpp":                     self = ._3gpp(suffix, parameters)
    case "3gpp2":                    self = ._3gpp2(suffix, parameters)
    case "aac":                      self = .aac(suffix, parameters)
    case "ac3":                      self = .ac3(suffix, parameters)
    case "AMR":                      self = .AMR(suffix, parameters)
    case "AMR-WB":                   self = .AMRWB(suffix, parameters)
    case "amr-wb":                   self = .amrWb(suffix, parameters)
    case "aptx":                     self = .aptx(suffix, parameters)
    case "asc":                      self = .asc(suffix, parameters)
    case "ATRAC-ADVANCED-LOSSLESS":  self = .ATRACADVANCEDLOSSLESS(suffix, parameters)
    case "ATRAC-X":                  self = .ATRACX(suffix, parameters)
    case "ATRAC3":                   self = .ATRAC3(suffix, parameters)
    case "basic":                    self = .basic(suffix, parameters)
    case "BV16":                     self = .BV16(suffix, parameters)
    case "BV32":                     self = .BV32(suffix, parameters)
    case "clearmode":                self = .clearmode(suffix, parameters)
    case "CN":                       self = .CN(suffix, parameters)
    case "DAT12":                    self = .DAT12(suffix, parameters)
    case "dls":                      self = .dls(suffix, parameters)
    case "dsr-es201108":             self = .dsrEs201108(suffix, parameters)
    case "dsr-es202050":             self = .dsrEs202050(suffix, parameters)
    case "dsr-es202211":             self = .dsrEs202211(suffix, parameters)
    case "dsr-es202212":             self = .dsrEs202212(suffix, parameters)
    case "DV":                       self = .DV(suffix, parameters)
    case "DVI4":                     self = .DVI4(suffix, parameters)
    case "eac3":                     self = .eac3(suffix, parameters)
    case "encaprtp":                 self = .encaprtp(suffix, parameters)
    case "EVRC":                     self = .EVRC(suffix, parameters)
    case "EVRC-QCP":                 self = .EVRCQCP(suffix, parameters)
    case "EVRC0":                    self = .EVRC0(suffix, parameters)
    case "EVRC1":                    self = .EVRC1(suffix, parameters)
    case "EVRCB":                    self = .EVRCB(suffix, parameters)
    case "EVRCB0":                   self = .EVRCB0(suffix, parameters)
    case "EVRCB1":                   self = .EVRCB1(suffix, parameters)
    case "EVRCNW":                   self = .EVRCNW(suffix, parameters)
    case "EVRCNW0":                  self = .EVRCNW0(suffix, parameters)
    case "EVRCNW1":                  self = .EVRCNW1(suffix, parameters)
    case "EVRCWB":                   self = .EVRCWB(suffix, parameters)
    case "EVRCWB0":                  self = .EVRCWB0(suffix, parameters)
    case "EVRCWB1":                  self = .EVRCWB1(suffix, parameters)
    case "EVS":                      self = .EVS(suffix, parameters)
    case "example":                  self = .example(suffix, parameters)
    case "flexfec":                  self = .flexfec(suffix, parameters)
    case "fwdred":                   self = .fwdred(suffix, parameters)
    case "G711-0":                   self = .G7110(suffix, parameters)
    case "G719":                     self = .G719(suffix, parameters)
    case "G7221":                    self = .G7221(suffix, parameters)
    case "G722":                     self = .G722(suffix, parameters)
    case "G723":                     self = .G723(suffix, parameters)
    case "G726-16":                  self = .G72616(suffix, parameters)
    case "G726-24":                  self = .G72624(suffix, parameters)
    case "G726-32":                  self = .G72632(suffix, parameters)
    case "G726-40":                  self = .G72640(suffix, parameters)
    case "G728":                     self = .G728(suffix, parameters)
    case "G729":                     self = .G729(suffix, parameters)
    case "G7291":                    self = .G7291(suffix, parameters)
    case "G729D":                    self = .G729D(suffix, parameters)
    case "G729E":                    self = .G729E(suffix, parameters)
    case "GSM":                      self = .GSM(suffix, parameters)
    case "GSM-EFR":                  self = .GSMEFR(suffix, parameters)
    case "GSM-HR-08":                self = .GSMHR08(suffix, parameters)
    case "iLBC":                     self = .iLBC(suffix, parameters)
    case "L8":                       self = .L8(suffix, parameters)
    case "L16":                      self = .L16(suffix, parameters)
    case "L20":                      self = .L20(suffix, parameters)
    case "L24":                      self = .L24(suffix, parameters)
    case "LPC":                      self = .LPC(suffix, parameters)
    case "MELP":                     self = .MELP(suffix, parameters)
    case "MELP600":                  self = .MELP600(suffix, parameters)
    case "MELP1200":                 self = .MELP1200(suffix, parameters)
    case "MELP2400":                 self = .MELP2400(suffix, parameters)
    case "mhas":                     self = .mhas(suffix, parameters)
    case "mobile-xmf":               self = .mobileXmf(suffix, parameters)
    case "MPA":                      self = .MPA(suffix, parameters)
    case "mp4":                      self = .mp4(suffix, parameters)
    case "MP4A-LATM":                self = .MP4ALATM(suffix, parameters)
    case "mpa-robust":               self = .mpaRobust(suffix, parameters)
    case "mpeg":                     self = .mpeg(suffix, parameters)
    case "mpeg4-generic":            self = .mpeg4Generic(suffix, parameters)
    case "ogg":                      self = .ogg(suffix, parameters)
    case "opus":                     self = .opus(suffix, parameters)
    case "parityfec":                self = .parityfec(suffix, parameters)
    case "PCMA":                     self = .PCMA(suffix, parameters)
    case "PCMA-WB":                  self = .PCMAWB(suffix, parameters)
    case "PCMU":                     self = .PCMU(suffix, parameters)
    case "PCMU-WB":                  self = .PCMUWB(suffix, parameters)
    case "QCELP":                    self = .QCELP(suffix, parameters)
    case "raptorfec":                self = .raptorfec(suffix, parameters)
    case "RED":                      self = .RED(suffix, parameters)
    case "rtp-enc-aescm128":         self = .rtpEncAescm128(suffix, parameters)
    case "rtploopback":              self = .rtploopback(suffix, parameters)
    case "rtp-midi":                 self = .rtpMidi(suffix, parameters)
    case "rtx":                      self = .rtx(suffix, parameters)
    case "scip":                     self = .scip(suffix, parameters)
    case "SMV":                      self = .SMV(suffix, parameters)
    case "SMV0":                     self = .SMV0(suffix, parameters)
    case "SMV-QCP":                  self = .SMVQCP(suffix, parameters)
    case "sofa":                     self = .sofa(suffix, parameters)
    case "sp-midi":                  self = .spMidi(suffix, parameters)
    case "speex":                    self = .speex(suffix, parameters)
    case "t140c":                    self = .t140c(suffix, parameters)
    case "t38":                      self = .t38(suffix, parameters)
    case "telephone-event":          self = .telephoneEvent(suffix, parameters)
    case "TETRA_ACELP":              self = .TETRA_ACELP(suffix, parameters)
    case "TETRA_ACELP_BB":           self = .TETRA_ACELP_BB(suffix, parameters)
    case "tone":                     self = .tone(suffix, parameters)
    case "TSVCIS":                   self = .TSVCIS(suffix, parameters)
    case "UEMCLIP":                  self = .UEMCLIP(suffix, parameters)
    case "ulpfec":                   self = .ulpfec(suffix, parameters)
    case "usac":                     self = .usac(suffix, parameters)
    case "VDVI":                     self = .VDVI(suffix, parameters)
    case "VMR-WB":                   self = .VMRWB(suffix, parameters)
    case "vorbis":                   self = .vorbis(suffix, parameters)
    case "vorbis-config":            self = .vorbisConfig(suffix, parameters)
    case "*":                        self = .anything(suffix, parameters)
    default:                         self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case ._1dInterleavedParityfec(let suffix, let parameters): return "1d-interleaved-parityfec\(suffix)\(parameters)"
    case ._32kadpcm(let suffix, let parameters):               return "32kadpcm\(suffix)\(parameters)"
    case ._3gpp(let suffix, let parameters):                   return "3gpp\(suffix)\(parameters)"
    case ._3gpp2(let suffix, let parameters):                  return "3gpp2\(suffix)\(parameters)"
    case .aac(let suffix, let parameters):                     return "aac\(suffix)\(parameters)"
    case .ac3(let suffix, let parameters):                     return "ac3\(suffix)\(parameters)"
    case .AMR(let suffix, let parameters):                     return "AMR\(suffix)\(parameters)"
    case .AMRWB(let suffix, let parameters):                   return "AMR-WB\(suffix)\(parameters)"
    case .amrWb(let suffix, let parameters):                   return "amr-wb\(suffix)\(parameters)"
    case .aptx(let suffix, let parameters):                    return "aptx\(suffix)\(parameters)"
    case .asc(let suffix, let parameters):                     return "asc\(suffix)\(parameters)"
    case .ATRACADVANCEDLOSSLESS(let suffix, let parameters):   return "ATRAC-ADVANCED-LOSSLESS\(suffix)\(parameters)"
    case .ATRACX(let suffix, let parameters):                  return "ATRAC-X\(suffix)\(parameters)"
    case .ATRAC3(let suffix, let parameters):                  return "ATRAC3\(suffix)\(parameters)"
    case .basic(let suffix, let parameters):                   return "basic\(suffix)\(parameters)"
    case .BV16(let suffix, let parameters):                    return "BV16\(suffix)\(parameters)"
    case .BV32(let suffix, let parameters):                    return "BV32\(suffix)\(parameters)"
    case .clearmode(let suffix, let parameters):               return "clearmode\(suffix)\(parameters)"
    case .CN(let suffix, let parameters):                      return "CN\(suffix)\(parameters)"
    case .DAT12(let suffix, let parameters):                   return "DAT12\(suffix)\(parameters)"
    case .dls(let suffix, let parameters):                     return "dls\(suffix)\(parameters)"
    case .dsrEs201108(let suffix, let parameters):             return "dsr-es201108\(suffix)\(parameters)"
    case .dsrEs202050(let suffix, let parameters):             return "dsr-es202050\(suffix)\(parameters)"
    case .dsrEs202211(let suffix, let parameters):             return "dsr-es202211\(suffix)\(parameters)"
    case .dsrEs202212(let suffix, let parameters):             return "dsr-es202212\(suffix)\(parameters)"
    case .DV(let suffix, let parameters):                      return "DV\(suffix)\(parameters)"
    case .DVI4(let suffix, let parameters):                    return "DVI4\(suffix)\(parameters)"
    case .eac3(let suffix, let parameters):                    return "eac3\(suffix)\(parameters)"
    case .encaprtp(let suffix, let parameters):                return "encaprtp\(suffix)\(parameters)"
    case .EVRC(let suffix, let parameters):                    return "EVRC\(suffix)\(parameters)"
    case .EVRCQCP(let suffix, let parameters):                 return "EVRC-QCP\(suffix)\(parameters)"
    case .EVRC0(let suffix, let parameters):                   return "EVRC0\(suffix)\(parameters)"
    case .EVRC1(let suffix, let parameters):                   return "EVRC1\(suffix)\(parameters)"
    case .EVRCB(let suffix, let parameters):                   return "EVRCB\(suffix)\(parameters)"
    case .EVRCB0(let suffix, let parameters):                  return "EVRCB0\(suffix)\(parameters)"
    case .EVRCB1(let suffix, let parameters):                  return "EVRCB1\(suffix)\(parameters)"
    case .EVRCNW(let suffix, let parameters):                  return "EVRCNW\(suffix)\(parameters)"
    case .EVRCNW0(let suffix, let parameters):                 return "EVRCNW0\(suffix)\(parameters)"
    case .EVRCNW1(let suffix, let parameters):                 return "EVRCNW1\(suffix)\(parameters)"
    case .EVRCWB(let suffix, let parameters):                  return "EVRCWB\(suffix)\(parameters)"
    case .EVRCWB0(let suffix, let parameters):                 return "EVRCWB0\(suffix)\(parameters)"
    case .EVRCWB1(let suffix, let parameters):                 return "EVRCWB1\(suffix)\(parameters)"
    case .EVS(let suffix, let parameters):                     return "EVS\(suffix)\(parameters)"
    case .example(let suffix, let parameters):                 return "example\(suffix)\(parameters)"
    case .flexfec(let suffix, let parameters):                 return "flexfec\(suffix)\(parameters)"
    case .fwdred(let suffix, let parameters):                  return "fwdred\(suffix)\(parameters)"
    case .G7110(let suffix, let parameters):                   return "G711-0\(suffix)\(parameters)"
    case .G719(let suffix, let parameters):                    return "G719\(suffix)\(parameters)"
    case .G7221(let suffix, let parameters):                   return "G7221\(suffix)\(parameters)"
    case .G722(let suffix, let parameters):                    return "G722\(suffix)\(parameters)"
    case .G723(let suffix, let parameters):                    return "G723\(suffix)\(parameters)"
    case .G72616(let suffix, let parameters):                  return "G726-16\(suffix)\(parameters)"
    case .G72624(let suffix, let parameters):                  return "G726-24\(suffix)\(parameters)"
    case .G72632(let suffix, let parameters):                  return "G726-32\(suffix)\(parameters)"
    case .G72640(let suffix, let parameters):                  return "G726-40\(suffix)\(parameters)"
    case .G728(let suffix, let parameters):                    return "G728\(suffix)\(parameters)"
    case .G729(let suffix, let parameters):                    return "G729\(suffix)\(parameters)"
    case .G7291(let suffix, let parameters):                   return "G7291\(suffix)\(parameters)"
    case .G729D(let suffix, let parameters):                   return "G729D\(suffix)\(parameters)"
    case .G729E(let suffix, let parameters):                   return "G729E\(suffix)\(parameters)"
    case .GSM(let suffix, let parameters):                     return "GSM\(suffix)\(parameters)"
    case .GSMEFR(let suffix, let parameters):                  return "GSM-EFR\(suffix)\(parameters)"
    case .GSMHR08(let suffix, let parameters):                 return "GSM-HR-08\(suffix)\(parameters)"
    case .iLBC(let suffix, let parameters):                    return "iLBC\(suffix)\(parameters)"
    case .L8(let suffix, let parameters):                      return "L8\(suffix)\(parameters)"
    case .L16(let suffix, let parameters):                     return "L16\(suffix)\(parameters)"
    case .L20(let suffix, let parameters):                     return "L20\(suffix)\(parameters)"
    case .L24(let suffix, let parameters):                     return "L24\(suffix)\(parameters)"
    case .LPC(let suffix, let parameters):                     return "LPC\(suffix)\(parameters)"
    case .MELP(let suffix, let parameters):                    return "MELP\(suffix)\(parameters)"
    case .MELP600(let suffix, let parameters):                 return "MELP600\(suffix)\(parameters)"
    case .MELP1200(let suffix, let parameters):                return "MELP1200\(suffix)\(parameters)"
    case .MELP2400(let suffix, let parameters):                return "MELP2400\(suffix)\(parameters)"
    case .mhas(let suffix, let parameters):                    return "mhas\(suffix)\(parameters)"
    case .mobileXmf(let suffix, let parameters):               return "mobile-xmf\(suffix)\(parameters)"
    case .MPA(let suffix, let parameters):                     return "MPA\(suffix)\(parameters)"
    case .mp4(let suffix, let parameters):                     return "mp4\(suffix)\(parameters)"
    case .MP4ALATM(let suffix, let parameters):                return "MP4A-LATM\(suffix)\(parameters)"
    case .mpaRobust(let suffix, let parameters):               return "mpa-robust\(suffix)\(parameters)"
    case .mpeg(let suffix, let parameters):                    return "mpeg\(suffix)\(parameters)"
    case .mpeg4Generic(let suffix, let parameters):            return "mpeg4-generic\(suffix)\(parameters)"
    case .ogg(let suffix, let parameters):                     return "ogg\(suffix)\(parameters)"
    case .opus(let suffix, let parameters):                    return "opus\(suffix)\(parameters)"
    case .parityfec(let suffix, let parameters):               return "parityfec\(suffix)\(parameters)"
    case .PCMA(let suffix, let parameters):                    return "PCMA\(suffix)\(parameters)"
    case .PCMAWB(let suffix, let parameters):                  return "PCMA-WB\(suffix)\(parameters)"
    case .PCMU(let suffix, let parameters):                    return "PCMU\(suffix)\(parameters)"
    case .PCMUWB(let suffix, let parameters):                  return "PCMU-WB\(suffix)\(parameters)"
    case .QCELP(let suffix, let parameters):                   return "QCELP\(suffix)\(parameters)"
    case .raptorfec(let suffix, let parameters):               return "raptorfec\(suffix)\(parameters)"
    case .RED(let suffix, let parameters):                     return "RED\(suffix)\(parameters)"
    case .rtpEncAescm128(let suffix, let parameters):          return "rtp-enc-aescm128\(suffix)\(parameters)"
    case .rtploopback(let suffix, let parameters):             return "rtploopback\(suffix)\(parameters)"
    case .rtpMidi(let suffix, let parameters):                 return "rtp-midi\(suffix)\(parameters)"
    case .rtx(let suffix, let parameters):                     return "rtx\(suffix)\(parameters)"
    case .scip(let suffix, let parameters):                    return "scip\(suffix)\(parameters)"
    case .SMV(let suffix, let parameters):                     return "SMV\(suffix)\(parameters)"
    case .SMV0(let suffix, let parameters):                    return "SMV0\(suffix)\(parameters)"
    case .SMVQCP(let suffix, let parameters):                  return "SMV-QCP\(suffix)\(parameters)"
    case .sofa(let suffix, let parameters):                    return "sofa\(suffix)\(parameters)"
    case .spMidi(let suffix, let parameters):                  return "sp-midi\(suffix)\(parameters)"
    case .speex(let suffix, let parameters):                   return "speex\(suffix)\(parameters)"
    case .t140c(let suffix, let parameters):                   return "t140c\(suffix)\(parameters)"
    case .t38(let suffix, let parameters):                     return "t38\(suffix)\(parameters)"
    case .telephoneEvent(let suffix, let parameters):          return "telephone-event\(suffix)\(parameters)"
    case .TETRA_ACELP(let suffix, let parameters):             return "TETRA_ACELP\(suffix)\(parameters)"
    case .TETRA_ACELP_BB(let suffix, let parameters):          return "TETRA_ACELP_BB\(suffix)\(parameters)"
    case .tone(let suffix, let parameters):                    return "tone\(suffix)\(parameters)"
    case .TSVCIS(let suffix, let parameters):                  return "TSVCIS\(suffix)\(parameters)"
    case .UEMCLIP(let suffix, let parameters):                 return "UEMCLIP\(suffix)\(parameters)"
    case .ulpfec(let suffix, let parameters):                  return "ulpfec\(suffix)\(parameters)"
    case .usac(let suffix, let parameters):                    return "usac\(suffix)\(parameters)"
    case .VDVI(let suffix, let parameters):                    return "VDVI\(suffix)\(parameters)"
    case .VMRWB(let suffix, let parameters):                   return "VMR-WB\(suffix)\(parameters)"
    case .vorbis(let suffix, let parameters):                  return "vorbis\(suffix)\(parameters)"
    case .vorbisConfig(let suffix, let parameters):            return "vorbis-config\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters):        return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):                return "*\(suffix)\(parameters)"
    }
  }

}

extension Audio: MediaSubtype { public var type: MediaType { .audio(self) } }
