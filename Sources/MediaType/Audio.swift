import Foundation

/// Represents the `audio` media type. See the
/// [official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#audio) for details.
public enum Audio {
  /// Represents the `1d-interleaved-parityfec` subtype.
  case _1dInterleavedParityfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `32kadpcm` subtype.
  case _32kadpcm(Suffix? = nil, Parameters? = nil)
  /// Represents the `3gpp` subtype.
  case _3gpp(Suffix? = nil, Parameters? = nil)
  /// Represents the `3gpp2` subtype.
  case _3gpp2(Suffix? = nil, Parameters? = nil)
  /// Represents the `aac` subtype.
  case aac(Suffix? = nil, Parameters? = nil)
  /// Represents the `ac3` subtype.
  case ac3(Suffix? = nil, Parameters? = nil)
  /// Represents the `AMR` subtype.
  case AMR(Suffix? = nil, Parameters? = nil)
  /// Represents the `AMR-WB` subtype.
  case AMRWB(Suffix? = nil, Parameters? = nil)
  /// Represents the `amr-wb` subtype.
  case amrWb(Suffix? = nil, Parameters? = nil)
  /// Represents the `aptx` subtype.
  case aptx(Suffix? = nil, Parameters? = nil)
  /// Represents the `asc` subtype.
  case asc(Suffix? = nil, Parameters? = nil)
  /// Represents the `ATRAC-ADVANCED-LOSSLESS` subtype.
  case ATRACADVANCEDLOSSLESS(Suffix? = nil, Parameters? = nil)
  /// Represents the `ATRAC-X` subtype.
  case ATRACX(Suffix? = nil, Parameters? = nil)
  /// Represents the `ATRAC3` subtype.
  case ATRAC3(Suffix? = nil, Parameters? = nil)
  /// Represents the `basic` subtype.
  case basic(Suffix? = nil, Parameters? = nil)
  /// Represents the `BV16` subtype.
  case BV16(Suffix? = nil, Parameters? = nil)
  /// Represents the `BV32` subtype.
  case BV32(Suffix? = nil, Parameters? = nil)
  /// Represents the `clearmode` subtype.
  case clearmode(Suffix? = nil, Parameters? = nil)
  /// Represents the `CN` subtype.
  case CN(Suffix? = nil, Parameters? = nil)
  /// Represents the `DAT12` subtype.
  case DAT12(Suffix? = nil, Parameters? = nil)
  /// Represents the `dls` subtype.
  case dls(Suffix? = nil, Parameters? = nil)
  /// Represents the `dsr-es201108` subtype.
  case dsrEs201108(Suffix? = nil, Parameters? = nil)
  /// Represents the `dsr-es202050` subtype.
  case dsrEs202050(Suffix? = nil, Parameters? = nil)
  /// Represents the `dsr-es202211` subtype.
  case dsrEs202211(Suffix? = nil, Parameters? = nil)
  /// Represents the `dsr-es202212` subtype.
  case dsrEs202212(Suffix? = nil, Parameters? = nil)
  /// Represents the `DV` subtype.
  case DV(Suffix? = nil, Parameters? = nil)
  /// Represents the `DVI4` subtype.
  case DVI4(Suffix? = nil, Parameters? = nil)
  /// Represents the `eac3` subtype.
  case eac3(Suffix? = nil, Parameters? = nil)
  /// Represents the `encaprtp` subtype.
  case encaprtp(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRC` subtype.
  case EVRC(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRC-QCP` subtype.
  case EVRCQCP(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRC0` subtype.
  case EVRC0(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRC1` subtype.
  case EVRC1(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCB` subtype.
  case EVRCB(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCB0` subtype.
  case EVRCB0(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCB1` subtype.
  case EVRCB1(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCNW` subtype.
  case EVRCNW(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCNW0` subtype.
  case EVRCNW0(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCNW1` subtype.
  case EVRCNW1(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCWB` subtype.
  case EVRCWB(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCWB0` subtype.
  case EVRCWB0(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVRCWB1` subtype.
  case EVRCWB1(Suffix? = nil, Parameters? = nil)
  /// Represents the `EVS` subtype.
  case EVS(Suffix? = nil, Parameters? = nil)
  /// Represents the `example` subtype.
  case example(Suffix? = nil, Parameters? = nil)
  /// Represents the `flexfec` subtype.
  case flexfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `fwdred` subtype.
  case fwdred(Suffix? = nil, Parameters? = nil)
  /// Represents the `G711-0` subtype.
  case G7110(Suffix? = nil, Parameters? = nil)
  /// Represents the `G719` subtype.
  case G719(Suffix? = nil, Parameters? = nil)
  /// Represents the `G7221` subtype.
  case G7221(Suffix? = nil, Parameters? = nil)
  /// Represents the `G722` subtype.
  case G722(Suffix? = nil, Parameters? = nil)
  /// Represents the `G723` subtype.
  case G723(Suffix? = nil, Parameters? = nil)
  /// Represents the `G726-16` subtype.
  case G72616(Suffix? = nil, Parameters? = nil)
  /// Represents the `G726-24` subtype.
  case G72624(Suffix? = nil, Parameters? = nil)
  /// Represents the `G726-32` subtype.
  case G72632(Suffix? = nil, Parameters? = nil)
  /// Represents the `G726-40` subtype.
  case G72640(Suffix? = nil, Parameters? = nil)
  /// Represents the `G728` subtype.
  case G728(Suffix? = nil, Parameters? = nil)
  /// Represents the `G729` subtype.
  case G729(Suffix? = nil, Parameters? = nil)
  /// Represents the `G7291` subtype.
  case G7291(Suffix? = nil, Parameters? = nil)
  /// Represents the `G729D` subtype.
  case G729D(Suffix? = nil, Parameters? = nil)
  /// Represents the `G729E` subtype.
  case G729E(Suffix? = nil, Parameters? = nil)
  /// Represents the `GSM` subtype.
  case GSM(Suffix? = nil, Parameters? = nil)
  /// Represents the `GSM-EFR` subtype.
  case GSMEFR(Suffix? = nil, Parameters? = nil)
  /// Represents the `GSM-HR-08` subtype.
  case GSMHR08(Suffix? = nil, Parameters? = nil)
  /// Represents the `iLBC` subtype.
  case iLBC(Suffix? = nil, Parameters? = nil)
  /// Represents the `L8` subtype.
  case L8(Suffix? = nil, Parameters? = nil)
  /// Represents the `L16` subtype.
  case L16(Suffix? = nil, Parameters? = nil)
  /// Represents the `L20` subtype.
  case L20(Suffix? = nil, Parameters? = nil)
  /// Represents the `L24` subtype.
  case L24(Suffix? = nil, Parameters? = nil)
  /// Represents the `LPC` subtype.
  case LPC(Suffix? = nil, Parameters? = nil)
  /// Represents the `MELP` subtype.
  case MELP(Suffix? = nil, Parameters? = nil)
  /// Represents the `MELP600` subtype.
  case MELP600(Suffix? = nil, Parameters? = nil)
  /// Represents the `MELP1200` subtype.
  case MELP1200(Suffix? = nil, Parameters? = nil)
  /// Represents the `MELP2400` subtype.
  case MELP2400(Suffix? = nil, Parameters? = nil)
  /// Represents the `mhas` subtype.
  case mhas(Suffix? = nil, Parameters? = nil)
  /// Represents the `mobile-xmf` subtype.
  case mobileXmf(Suffix? = nil, Parameters? = nil)
  /// Represents the `MPA` subtype.
  case MPA(Suffix? = nil, Parameters? = nil)
  /// Represents the `mp4` subtype.
  case mp4(Suffix? = nil, Parameters? = nil)
  /// Represents the `MP4A-LATM` subtype.
  case MP4ALATM(Suffix? = nil, Parameters? = nil)
  /// Represents the `mpa-robust` subtype.
  case mpaRobust(Suffix? = nil, Parameters? = nil)
  /// Represents the `mpeg` subtype.
  case mpeg(Suffix? = nil, Parameters? = nil)
  /// Represents the `mpeg4-generic` subtype.
  case mpeg4Generic(Suffix? = nil, Parameters? = nil)
  /// Represents the `ogg` subtype.
  case ogg(Suffix? = nil, Parameters? = nil)
  /// Represents the `opus` subtype.
  case opus(Suffix? = nil, Parameters? = nil)
  /// Represents the `parityfec` subtype.
  case parityfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `PCMA` subtype.
  case PCMA(Suffix? = nil, Parameters? = nil)
  /// Represents the `PCMA-WB` subtype.
  case PCMAWB(Suffix? = nil, Parameters? = nil)
  /// Represents the `PCMU` subtype.
  case PCMU(Suffix? = nil, Parameters? = nil)
  /// Represents the `PCMU-WB` subtype.
  case PCMUWB(Suffix? = nil, Parameters? = nil)
  /// Represents the `QCELP` subtype.
  case QCELP(Suffix? = nil, Parameters? = nil)
  /// Represents the `raptorfec` subtype.
  case raptorfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `RED` subtype.
  case RED(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtp-enc-aescm128` subtype.
  case rtpEncAescm128(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtploopback` subtype.
  case rtploopback(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtp-midi` subtype.
  case rtpMidi(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtx` subtype.
  case rtx(Suffix? = nil, Parameters? = nil)
  /// Represents the `scip` subtype.
  case scip(Suffix? = nil, Parameters? = nil)
  /// Represents the `SMV` subtype.
  case SMV(Suffix? = nil, Parameters? = nil)
  /// Represents the `SMV0` subtype.
  case SMV0(Suffix? = nil, Parameters? = nil)
  /// Represents the `SMV-QCP` subtype.
  case SMVQCP(Suffix? = nil, Parameters? = nil)
  /// Represents the `sofa` subtype.
  case sofa(Suffix? = nil, Parameters? = nil)
  /// Represents the `sp-midi` subtype.
  case spMidi(Suffix? = nil, Parameters? = nil)
  /// Represents the `speex` subtype.
  case speex(Suffix? = nil, Parameters? = nil)
  /// Represents the `t140c` subtype.
  case t140c(Suffix? = nil, Parameters? = nil)
  /// Represents the `t38` subtype.
  case t38(Suffix? = nil, Parameters? = nil)
  /// Represents the `telephone-event` subtype.
  case telephoneEvent(Suffix? = nil, Parameters? = nil)
  /// Represents the `TETRA_ACELP` subtype.
  case TETRA_ACELP(Suffix? = nil, Parameters? = nil)
  /// Represents the `TETRA_ACELP_BB` subtype.
  case TETRA_ACELP_BB(Suffix? = nil, Parameters? = nil)
  /// Represents the `tone` subtype.
  case tone(Suffix? = nil, Parameters? = nil)
  /// Represents the `TSVCIS` subtype.
  case TSVCIS(Suffix? = nil, Parameters? = nil)
  /// Represents the `UEMCLIP` subtype.
  case UEMCLIP(Suffix? = nil, Parameters? = nil)
  /// Represents the `ulpfec` subtype.
  case ulpfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `usac` subtype.
  case usac(Suffix? = nil, Parameters? = nil)
  /// Represents the `VDVI` subtype.
  case VDVI(Suffix? = nil, Parameters? = nil)
  /// Represents the `VMR-WB` subtype.
  case VMRWB(Suffix? = nil, Parameters? = nil)
  /// Represents the `vorbis` subtype.
  case vorbis(Suffix? = nil, Parameters? = nil)
  /// Represents the `vorbis-config` subtype.
  case vorbisConfig(Suffix? = nil, Parameters? = nil)
  /// Represents a subtype that does not fit in the other cases or is currently not officially defined.
  /// 
  /// You can use this case to define an arbitrary, unregistered subtype with the given name or
  /// to represent a subtype in the non standard tree, e.g. vendor tree or personal tree.
  /// 
  /// Optionally, you can specify a ``Suffix`` and ``Parameters``.
  /// 
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

extension Audio: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .AMR(let lhsSuffix, let lhsParameters):
      guard case let .AMR(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .AMRWB(let lhsSuffix, let lhsParameters):
      guard case let .AMRWB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ATRACADVANCEDLOSSLESS(let lhsSuffix, let lhsParameters):
      guard case let .ATRACADVANCEDLOSSLESS(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ATRACX(let lhsSuffix, let lhsParameters):
      guard case let .ATRACX(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ATRAC3(let lhsSuffix, let lhsParameters):
      guard case let .ATRAC3(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .BV16(let lhsSuffix, let lhsParameters):
      guard case let .BV16(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .BV32(let lhsSuffix, let lhsParameters):
      guard case let .BV32(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .CN(let lhsSuffix, let lhsParameters):
      guard case let .CN(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .DAT12(let lhsSuffix, let lhsParameters):
      guard case let .DAT12(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .DV(let lhsSuffix, let lhsParameters):
      guard case let .DV(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .DVI4(let lhsSuffix, let lhsParameters):
      guard case let .DVI4(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRC(let lhsSuffix, let lhsParameters):
      guard case let .EVRC(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCQCP(let lhsSuffix, let lhsParameters):
      guard case let .EVRCQCP(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRC0(let lhsSuffix, let lhsParameters):
      guard case let .EVRC0(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRC1(let lhsSuffix, let lhsParameters):
      guard case let .EVRC1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCB(let lhsSuffix, let lhsParameters):
      guard case let .EVRCB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCB0(let lhsSuffix, let lhsParameters):
      guard case let .EVRCB0(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCB1(let lhsSuffix, let lhsParameters):
      guard case let .EVRCB1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCNW(let lhsSuffix, let lhsParameters):
      guard case let .EVRCNW(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCNW0(let lhsSuffix, let lhsParameters):
      guard case let .EVRCNW0(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCNW1(let lhsSuffix, let lhsParameters):
      guard case let .EVRCNW1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCWB(let lhsSuffix, let lhsParameters):
      guard case let .EVRCWB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCWB0(let lhsSuffix, let lhsParameters):
      guard case let .EVRCWB0(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVRCWB1(let lhsSuffix, let lhsParameters):
      guard case let .EVRCWB1(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .EVS(let lhsSuffix, let lhsParameters):
      guard case let .EVS(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G7110(let lhsSuffix, let lhsParameters):
      guard case let .G7110(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G719(let lhsSuffix, let lhsParameters):
      guard case let .G719(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G7221(let lhsSuffix, let lhsParameters):
      guard case let .G7221(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G722(let lhsSuffix, let lhsParameters):
      guard case let .G722(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G723(let lhsSuffix, let lhsParameters):
      guard case let .G723(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G72616(let lhsSuffix, let lhsParameters):
      guard case let .G72616(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G72624(let lhsSuffix, let lhsParameters):
      guard case let .G72624(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G72632(let lhsSuffix, let lhsParameters):
      guard case let .G72632(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G72640(let lhsSuffix, let lhsParameters):
      guard case let .G72640(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G728(let lhsSuffix, let lhsParameters):
      guard case let .G728(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G729(let lhsSuffix, let lhsParameters):
      guard case let .G729(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G7291(let lhsSuffix, let lhsParameters):
      guard case let .G7291(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G729D(let lhsSuffix, let lhsParameters):
      guard case let .G729D(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .G729E(let lhsSuffix, let lhsParameters):
      guard case let .G729E(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .GSM(let lhsSuffix, let lhsParameters):
      guard case let .GSM(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .GSMEFR(let lhsSuffix, let lhsParameters):
      guard case let .GSMEFR(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .GSMHR08(let lhsSuffix, let lhsParameters):
      guard case let .GSMHR08(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .L8(let lhsSuffix, let lhsParameters):
      guard case let .L8(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .L16(let lhsSuffix, let lhsParameters):
      guard case let .L16(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .L20(let lhsSuffix, let lhsParameters):
      guard case let .L20(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .L24(let lhsSuffix, let lhsParameters):
      guard case let .L24(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .LPC(let lhsSuffix, let lhsParameters):
      guard case let .LPC(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MELP(let lhsSuffix, let lhsParameters):
      guard case let .MELP(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MELP600(let lhsSuffix, let lhsParameters):
      guard case let .MELP600(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MELP1200(let lhsSuffix, let lhsParameters):
      guard case let .MELP1200(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MELP2400(let lhsSuffix, let lhsParameters):
      guard case let .MELP2400(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MPA(let lhsSuffix, let lhsParameters):
      guard case let .MPA(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .MP4ALATM(let lhsSuffix, let lhsParameters):
      guard case let .MP4ALATM(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .PCMA(let lhsSuffix, let lhsParameters):
      guard case let .PCMA(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .PCMAWB(let lhsSuffix, let lhsParameters):
      guard case let .PCMAWB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .PCMU(let lhsSuffix, let lhsParameters):
      guard case let .PCMU(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .PCMUWB(let lhsSuffix, let lhsParameters):
      guard case let .PCMUWB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .QCELP(let lhsSuffix, let lhsParameters):
      guard case let .QCELP(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .RED(let lhsSuffix, let lhsParameters):
      guard case let .RED(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .SMV(let lhsSuffix, let lhsParameters):
      guard case let .SMV(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .SMV0(let lhsSuffix, let lhsParameters):
      guard case let .SMV0(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .SMVQCP(let lhsSuffix, let lhsParameters):
      guard case let .SMVQCP(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .TETRA_ACELP(let lhsSuffix, let lhsParameters):
      guard case let .TETRA_ACELP(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .TETRA_ACELP_BB(let lhsSuffix, let lhsParameters):
      guard case let .TETRA_ACELP_BB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .TSVCIS(let lhsSuffix, let lhsParameters):
      guard case let .TSVCIS(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .UEMCLIP(let lhsSuffix, let lhsParameters):
      guard case let .UEMCLIP(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .VDVI(let lhsSuffix, let lhsParameters):
      guard case let .VDVI(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .VMRWB(let lhsSuffix, let lhsParameters):
      guard case let .VMRWB(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._1dInterleavedParityfec(let lhsSuffix, let lhsParameters):
      guard case let ._1dInterleavedParityfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._32kadpcm(let lhsSuffix, let lhsParameters):
      guard case let ._32kadpcm(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .aac(let lhsSuffix, let lhsParameters):
      guard case let .aac(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ac3(let lhsSuffix, let lhsParameters):
      guard case let .ac3(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .amrWb(let lhsSuffix, let lhsParameters):
      guard case let .amrWb(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .aptx(let lhsSuffix, let lhsParameters):
      guard case let .aptx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .asc(let lhsSuffix, let lhsParameters):
      guard case let .asc(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .basic(let lhsSuffix, let lhsParameters):
      guard case let .basic(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .clearmode(let lhsSuffix, let lhsParameters):
      guard case let .clearmode(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dls(let lhsSuffix, let lhsParameters):
      guard case let .dls(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dsrEs201108(let lhsSuffix, let lhsParameters):
      guard case let .dsrEs201108(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dsrEs202050(let lhsSuffix, let lhsParameters):
      guard case let .dsrEs202050(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dsrEs202211(let lhsSuffix, let lhsParameters):
      guard case let .dsrEs202211(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dsrEs202212(let lhsSuffix, let lhsParameters):
      guard case let .dsrEs202212(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .eac3(let lhsSuffix, let lhsParameters):
      guard case let .eac3(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .fwdred(let lhsSuffix, let lhsParameters):
      guard case let .fwdred(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .iLBC(let lhsSuffix, let lhsParameters):
      guard case let .iLBC(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mhas(let lhsSuffix, let lhsParameters):
      guard case let .mhas(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mobileXmf(let lhsSuffix, let lhsParameters):
      guard case let .mobileXmf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mp4(let lhsSuffix, let lhsParameters):
      guard case let .mp4(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mpaRobust(let lhsSuffix, let lhsParameters):
      guard case let .mpaRobust(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .ogg(let lhsSuffix, let lhsParameters):
      guard case let .ogg(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .opus(let lhsSuffix, let lhsParameters):
      guard case let .opus(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .parityfec(let lhsSuffix, let lhsParameters):
      guard case let .parityfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .raptorfec(let lhsSuffix, let lhsParameters):
      guard case let .raptorfec(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .rtpMidi(let lhsSuffix, let lhsParameters):
      guard case let .rtpMidi(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .sofa(let lhsSuffix, let lhsParameters):
      guard case let .sofa(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .spMidi(let lhsSuffix, let lhsParameters):
      guard case let .spMidi(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .speex(let lhsSuffix, let lhsParameters):
      guard case let .speex(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .t140c(let lhsSuffix, let lhsParameters):
      guard case let .t140c(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .t38(let lhsSuffix, let lhsParameters):
      guard case let .t38(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .telephoneEvent(let lhsSuffix, let lhsParameters):
      guard case let .telephoneEvent(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .tone(let lhsSuffix, let lhsParameters):
      guard case let .tone(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ulpfec(let lhsSuffix, let lhsParameters):
      guard case let .ulpfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .usac(let lhsSuffix, let lhsParameters):
      guard case let .usac(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vorbis(let lhsSuffix, let lhsParameters):
      guard case let .vorbis(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vorbisConfig(let lhsSuffix, let lhsParameters):
      guard case let .vorbisConfig(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .AMR(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .AMRWB(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ATRACADVANCEDLOSSLESS(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ATRACX(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ATRAC3(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .BV16(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .BV32(let suffix, let parameters):
      hasher.combine(6)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .CN(let suffix, let parameters):
      hasher.combine(7)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .DAT12(let suffix, let parameters):
      hasher.combine(8)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .DV(let suffix, let parameters):
      hasher.combine(9)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .DVI4(let suffix, let parameters):
      hasher.combine(10)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRC(let suffix, let parameters):
      hasher.combine(11)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCQCP(let suffix, let parameters):
      hasher.combine(12)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRC0(let suffix, let parameters):
      hasher.combine(13)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRC1(let suffix, let parameters):
      hasher.combine(14)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCB(let suffix, let parameters):
      hasher.combine(15)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCB0(let suffix, let parameters):
      hasher.combine(16)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCB1(let suffix, let parameters):
      hasher.combine(17)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCNW(let suffix, let parameters):
      hasher.combine(18)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCNW0(let suffix, let parameters):
      hasher.combine(19)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCNW1(let suffix, let parameters):
      hasher.combine(20)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCWB(let suffix, let parameters):
      hasher.combine(21)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCWB0(let suffix, let parameters):
      hasher.combine(22)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVRCWB1(let suffix, let parameters):
      hasher.combine(23)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .EVS(let suffix, let parameters):
      hasher.combine(24)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G7110(let suffix, let parameters):
      hasher.combine(25)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G719(let suffix, let parameters):
      hasher.combine(26)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G7221(let suffix, let parameters):
      hasher.combine(27)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G722(let suffix, let parameters):
      hasher.combine(28)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G723(let suffix, let parameters):
      hasher.combine(29)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G72616(let suffix, let parameters):
      hasher.combine(30)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G72624(let suffix, let parameters):
      hasher.combine(31)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G72632(let suffix, let parameters):
      hasher.combine(32)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G72640(let suffix, let parameters):
      hasher.combine(33)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G728(let suffix, let parameters):
      hasher.combine(34)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G729(let suffix, let parameters):
      hasher.combine(35)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G7291(let suffix, let parameters):
      hasher.combine(36)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G729D(let suffix, let parameters):
      hasher.combine(37)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .G729E(let suffix, let parameters):
      hasher.combine(38)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .GSM(let suffix, let parameters):
      hasher.combine(39)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .GSMEFR(let suffix, let parameters):
      hasher.combine(40)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .GSMHR08(let suffix, let parameters):
      hasher.combine(41)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .L8(let suffix, let parameters):
      hasher.combine(42)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .L16(let suffix, let parameters):
      hasher.combine(43)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .L20(let suffix, let parameters):
      hasher.combine(44)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .L24(let suffix, let parameters):
      hasher.combine(45)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .LPC(let suffix, let parameters):
      hasher.combine(46)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MELP(let suffix, let parameters):
      hasher.combine(47)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MELP600(let suffix, let parameters):
      hasher.combine(48)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MELP1200(let suffix, let parameters):
      hasher.combine(49)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MELP2400(let suffix, let parameters):
      hasher.combine(50)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MPA(let suffix, let parameters):
      hasher.combine(51)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .MP4ALATM(let suffix, let parameters):
      hasher.combine(52)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .PCMA(let suffix, let parameters):
      hasher.combine(53)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .PCMAWB(let suffix, let parameters):
      hasher.combine(54)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .PCMU(let suffix, let parameters):
      hasher.combine(55)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .PCMUWB(let suffix, let parameters):
      hasher.combine(56)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .QCELP(let suffix, let parameters):
      hasher.combine(57)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .RED(let suffix, let parameters):
      hasher.combine(58)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .SMV(let suffix, let parameters):
      hasher.combine(59)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .SMV0(let suffix, let parameters):
      hasher.combine(60)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .SMVQCP(let suffix, let parameters):
      hasher.combine(61)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .TETRA_ACELP(let suffix, let parameters):
      hasher.combine(62)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .TETRA_ACELP_BB(let suffix, let parameters):
      hasher.combine(63)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .TSVCIS(let suffix, let parameters):
      hasher.combine(64)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .UEMCLIP(let suffix, let parameters):
      hasher.combine(65)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .VDVI(let suffix, let parameters):
      hasher.combine(66)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .VMRWB(let suffix, let parameters):
      hasher.combine(67)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._1dInterleavedParityfec(let suffix, let parameters):
      hasher.combine(68)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._32kadpcm(let suffix, let parameters):
      hasher.combine(69)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._3gpp(let suffix, let parameters):
      hasher.combine(70)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._3gpp2(let suffix, let parameters):
      hasher.combine(71)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .aac(let suffix, let parameters):
      hasher.combine(72)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ac3(let suffix, let parameters):
      hasher.combine(73)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .amrWb(let suffix, let parameters):
      hasher.combine(74)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .aptx(let suffix, let parameters):
      hasher.combine(75)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .asc(let suffix, let parameters):
      hasher.combine(76)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .basic(let suffix, let parameters):
      hasher.combine(77)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .clearmode(let suffix, let parameters):
      hasher.combine(78)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dls(let suffix, let parameters):
      hasher.combine(79)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dsrEs201108(let suffix, let parameters):
      hasher.combine(80)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dsrEs202050(let suffix, let parameters):
      hasher.combine(81)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dsrEs202211(let suffix, let parameters):
      hasher.combine(82)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dsrEs202212(let suffix, let parameters):
      hasher.combine(83)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .eac3(let suffix, let parameters):
      hasher.combine(84)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .encaprtp(let suffix, let parameters):
      hasher.combine(85)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .example(let suffix, let parameters):
      hasher.combine(86)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .flexfec(let suffix, let parameters):
      hasher.combine(87)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .fwdred(let suffix, let parameters):
      hasher.combine(88)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .iLBC(let suffix, let parameters):
      hasher.combine(89)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mhas(let suffix, let parameters):
      hasher.combine(90)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mobileXmf(let suffix, let parameters):
      hasher.combine(91)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mp4(let suffix, let parameters):
      hasher.combine(92)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mpaRobust(let suffix, let parameters):
      hasher.combine(93)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mpeg(let suffix, let parameters):
      hasher.combine(94)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mpeg4Generic(let suffix, let parameters):
      hasher.combine(95)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ogg(let suffix, let parameters):
      hasher.combine(96)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .opus(let suffix, let parameters):
      hasher.combine(97)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .parityfec(let suffix, let parameters):
      hasher.combine(98)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .raptorfec(let suffix, let parameters):
      hasher.combine(99)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtpEncAescm128(let suffix, let parameters):
      hasher.combine(100)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtploopback(let suffix, let parameters):
      hasher.combine(101)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtpMidi(let suffix, let parameters):
      hasher.combine(102)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtx(let suffix, let parameters):
      hasher.combine(103)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .scip(let suffix, let parameters):
      hasher.combine(104)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .sofa(let suffix, let parameters):
      hasher.combine(105)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .spMidi(let suffix, let parameters):
      hasher.combine(106)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .speex(let suffix, let parameters):
      hasher.combine(107)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .t140c(let suffix, let parameters):
      hasher.combine(108)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .t38(let suffix, let parameters):
      hasher.combine(109)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .telephoneEvent(let suffix, let parameters):
      hasher.combine(110)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .tone(let suffix, let parameters):
      hasher.combine(111)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ulpfec(let suffix, let parameters):
      hasher.combine(112)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .usac(let suffix, let parameters):
      hasher.combine(113)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vorbis(let suffix, let parameters):
      hasher.combine(114)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vorbisConfig(let suffix, let parameters):
      hasher.combine(115)
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
