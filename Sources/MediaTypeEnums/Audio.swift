import Foundation

public extension MediaTypeEnum {
  enum Audio {
    case AMR
    case AMRWB
    case ATRACADVANCEDLOSSLESS
    case ATRACX
    case ATRAC3
    case BV16
    case BV32
    case CN
    case DAT12
    case DV
    case DVI4
    case EVRC
    case EVRCQCP
    case EVRC0
    case EVRC1
    case EVRCB
    case EVRCB0
    case EVRCB1
    case EVRCNW
    case EVRCNW0
    case EVRCNW1
    case EVRCWB
    case EVRCWB0
    case EVRCWB1
    case EVS
    case G7110
    case G719
    case G7221
    case G722
    case G723
    case G72616
    case G72624
    case G72632
    case G72640
    case G728
    case G729
    case G7291
    case G729D
    case G729E
    case GSM
    case GSMEFR
    case GSMHR08
    case L8
    case L16
    case L20
    case L24
    case LPC
    case MELP
    case MELP600
    case MELP1200
    case MELP2400
    case MPA
    case MP4ALATM
    case PCMA
    case PCMAWB
    case PCMU
    case PCMUWB
    case QCELP
    case RED
    case SMV
    case SMV0
    case SMVQCP
    case TETRA_ACELP
    case TETRA_ACELP_BB
    case TSVCIS
    case UEMCLIP
    case VDVI
    case VMRWB
    case _1dInterleavedParityfec
    case _32kadpcm
    case _3gpp
    case _3gpp2
    case aac
    case ac3
    case amrWb
    case aptx
    case asc
    case basic
    case clearmode
    case dls
    case dsrEs201108
    case dsrEs202050
    case dsrEs202211
    case dsrEs202212
    case eac3
    case encaprtp
    case example
    case flexfec
    case fwdred
    case iLBC
    case mhas
    case mobileXmf
    case mp4
    case mpaRobust
    case mpeg
    case mpeg4Generic
    case ogg
    case opus
    case parityfec
    case raptorfec
    case rtpEncAescm128
    case rtploopback
    case rtpMidi
    case rtx
    case scip
    case sofa
    case spMidi
    case speex
    case t140c
    case t38
    case telephoneEvent
    case tone
    case ulpfec
    case usac
    case vorbis
    case vorbisConfig
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Audio: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Audio: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Audio: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "AMR":                      self = .AMR
    case "AMR-WB":                   self = .AMRWB
    case "ATRAC-ADVANCED-LOSSLESS":  self = .ATRACADVANCEDLOSSLESS
    case "ATRAC-X":                  self = .ATRACX
    case "ATRAC3":                   self = .ATRAC3
    case "BV16":                     self = .BV16
    case "BV32":                     self = .BV32
    case "CN":                       self = .CN
    case "DAT12":                    self = .DAT12
    case "DV":                       self = .DV
    case "DVI4":                     self = .DVI4
    case "EVRC":                     self = .EVRC
    case "EVRC-QCP":                 self = .EVRCQCP
    case "EVRC0":                    self = .EVRC0
    case "EVRC1":                    self = .EVRC1
    case "EVRCB":                    self = .EVRCB
    case "EVRCB0":                   self = .EVRCB0
    case "EVRCB1":                   self = .EVRCB1
    case "EVRCNW":                   self = .EVRCNW
    case "EVRCNW0":                  self = .EVRCNW0
    case "EVRCNW1":                  self = .EVRCNW1
    case "EVRCWB":                   self = .EVRCWB
    case "EVRCWB0":                  self = .EVRCWB0
    case "EVRCWB1":                  self = .EVRCWB1
    case "EVS":                      self = .EVS
    case "G711-0":                   self = .G7110
    case "G719":                     self = .G719
    case "G7221":                    self = .G7221
    case "G722":                     self = .G722
    case "G723":                     self = .G723
    case "G726-16":                  self = .G72616
    case "G726-24":                  self = .G72624
    case "G726-32":                  self = .G72632
    case "G726-40":                  self = .G72640
    case "G728":                     self = .G728
    case "G729":                     self = .G729
    case "G7291":                    self = .G7291
    case "G729D":                    self = .G729D
    case "G729E":                    self = .G729E
    case "GSM":                      self = .GSM
    case "GSM-EFR":                  self = .GSMEFR
    case "GSM-HR-08":                self = .GSMHR08
    case "L8":                       self = .L8
    case "L16":                      self = .L16
    case "L20":                      self = .L20
    case "L24":                      self = .L24
    case "LPC":                      self = .LPC
    case "MELP":                     self = .MELP
    case "MELP600":                  self = .MELP600
    case "MELP1200":                 self = .MELP1200
    case "MELP2400":                 self = .MELP2400
    case "MPA":                      self = .MPA
    case "MP4A-LATM":                self = .MP4ALATM
    case "PCMA":                     self = .PCMA
    case "PCMA-WB":                  self = .PCMAWB
    case "PCMU":                     self = .PCMU
    case "PCMU-WB":                  self = .PCMUWB
    case "QCELP":                    self = .QCELP
    case "RED":                      self = .RED
    case "SMV":                      self = .SMV
    case "SMV0":                     self = .SMV0
    case "SMV-QCP":                  self = .SMVQCP
    case "TETRA_ACELP":              self = .TETRA_ACELP
    case "TETRA_ACELP_BB":           self = .TETRA_ACELP_BB
    case "TSVCIS":                   self = .TSVCIS
    case "UEMCLIP":                  self = .UEMCLIP
    case "VDVI":                     self = .VDVI
    case "VMR-WB":                   self = .VMRWB
    case "1d-interleaved-parityfec": self = ._1dInterleavedParityfec
    case "32kadpcm":                 self = ._32kadpcm
    case "3gpp":                     self = ._3gpp
    case "3gpp2":                    self = ._3gpp2
    case "aac":                      self = .aac
    case "ac3":                      self = .ac3
    case "amr-wb":                   self = .amrWb
    case "aptx":                     self = .aptx
    case "asc":                      self = .asc
    case "basic":                    self = .basic
    case "clearmode":                self = .clearmode
    case "dls":                      self = .dls
    case "dsr-es201108":             self = .dsrEs201108
    case "dsr-es202050":             self = .dsrEs202050
    case "dsr-es202211":             self = .dsrEs202211
    case "dsr-es202212":             self = .dsrEs202212
    case "eac3":                     self = .eac3
    case "encaprtp":                 self = .encaprtp
    case "example":                  self = .example
    case "flexfec":                  self = .flexfec
    case "fwdred":                   self = .fwdred
    case "iLBC":                     self = .iLBC
    case "mhas":                     self = .mhas
    case "mobile-xmf":               self = .mobileXmf
    case "mp4":                      self = .mp4
    case "mpa-robust":               self = .mpaRobust
    case "mpeg":                     self = .mpeg
    case "mpeg4-generic":            self = .mpeg4Generic
    case "ogg":                      self = .ogg
    case "opus":                     self = .opus
    case "parityfec":                self = .parityfec
    case "raptorfec":                self = .raptorfec
    case "rtp-enc-aescm128":         self = .rtpEncAescm128
    case "rtploopback":              self = .rtploopback
    case "rtp-midi":                 self = .rtpMidi
    case "rtx":                      self = .rtx
    case "scip":                     self = .scip
    case "sofa":                     self = .sofa
    case "sp-midi":                  self = .spMidi
    case "speex":                    self = .speex
    case "t140c":                    self = .t140c
    case "t38":                      self = .t38
    case "telephone-event":          self = .telephoneEvent
    case "tone":                     self = .tone
    case "ulpfec":                   self = .ulpfec
    case "usac":                     self = .usac
    case "vorbis":                   self = .vorbis
    case "vorbis-config":            self = .vorbisConfig
    case "*":                        self = .any
    default:                         self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .AMR:                     return "AMR"
    case .AMRWB:                   return "AMR-WB"
    case .ATRACADVANCEDLOSSLESS:   return "ATRAC-ADVANCED-LOSSLESS"
    case .ATRACX:                  return "ATRAC-X"
    case .ATRAC3:                  return "ATRAC3"
    case .BV16:                    return "BV16"
    case .BV32:                    return "BV32"
    case .CN:                      return "CN"
    case .DAT12:                   return "DAT12"
    case .DV:                      return "DV"
    case .DVI4:                    return "DVI4"
    case .EVRC:                    return "EVRC"
    case .EVRCQCP:                 return "EVRC-QCP"
    case .EVRC0:                   return "EVRC0"
    case .EVRC1:                   return "EVRC1"
    case .EVRCB:                   return "EVRCB"
    case .EVRCB0:                  return "EVRCB0"
    case .EVRCB1:                  return "EVRCB1"
    case .EVRCNW:                  return "EVRCNW"
    case .EVRCNW0:                 return "EVRCNW0"
    case .EVRCNW1:                 return "EVRCNW1"
    case .EVRCWB:                  return "EVRCWB"
    case .EVRCWB0:                 return "EVRCWB0"
    case .EVRCWB1:                 return "EVRCWB1"
    case .EVS:                     return "EVS"
    case .G7110:                   return "G711-0"
    case .G719:                    return "G719"
    case .G7221:                   return "G7221"
    case .G722:                    return "G722"
    case .G723:                    return "G723"
    case .G72616:                  return "G726-16"
    case .G72624:                  return "G726-24"
    case .G72632:                  return "G726-32"
    case .G72640:                  return "G726-40"
    case .G728:                    return "G728"
    case .G729:                    return "G729"
    case .G7291:                   return "G7291"
    case .G729D:                   return "G729D"
    case .G729E:                   return "G729E"
    case .GSM:                     return "GSM"
    case .GSMEFR:                  return "GSM-EFR"
    case .GSMHR08:                 return "GSM-HR-08"
    case .L8:                      return "L8"
    case .L16:                     return "L16"
    case .L20:                     return "L20"
    case .L24:                     return "L24"
    case .LPC:                     return "LPC"
    case .MELP:                    return "MELP"
    case .MELP600:                 return "MELP600"
    case .MELP1200:                return "MELP1200"
    case .MELP2400:                return "MELP2400"
    case .MPA:                     return "MPA"
    case .MP4ALATM:                return "MP4A-LATM"
    case .PCMA:                    return "PCMA"
    case .PCMAWB:                  return "PCMA-WB"
    case .PCMU:                    return "PCMU"
    case .PCMUWB:                  return "PCMU-WB"
    case .QCELP:                   return "QCELP"
    case .RED:                     return "RED"
    case .SMV:                     return "SMV"
    case .SMV0:                    return "SMV0"
    case .SMVQCP:                  return "SMV-QCP"
    case .TETRA_ACELP:             return "TETRA_ACELP"
    case .TETRA_ACELP_BB:          return "TETRA_ACELP_BB"
    case .TSVCIS:                  return "TSVCIS"
    case .UEMCLIP:                 return "UEMCLIP"
    case .VDVI:                    return "VDVI"
    case .VMRWB:                   return "VMR-WB"
    case ._1dInterleavedParityfec: return "1d-interleaved-parityfec"
    case ._32kadpcm:               return "32kadpcm"
    case ._3gpp:                   return "3gpp"
    case ._3gpp2:                  return "3gpp2"
    case .aac:                     return "aac"
    case .ac3:                     return "ac3"
    case .amrWb:                   return "amr-wb"
    case .aptx:                    return "aptx"
    case .asc:                     return "asc"
    case .basic:                   return "basic"
    case .clearmode:               return "clearmode"
    case .dls:                     return "dls"
    case .dsrEs201108:             return "dsr-es201108"
    case .dsrEs202050:             return "dsr-es202050"
    case .dsrEs202211:             return "dsr-es202211"
    case .dsrEs202212:             return "dsr-es202212"
    case .eac3:                    return "eac3"
    case .encaprtp:                return "encaprtp"
    case .example:                 return "example"
    case .flexfec:                 return "flexfec"
    case .fwdred:                  return "fwdred"
    case .iLBC:                    return "iLBC"
    case .mhas:                    return "mhas"
    case .mobileXmf:               return "mobile-xmf"
    case .mp4:                     return "mp4"
    case .mpaRobust:               return "mpa-robust"
    case .mpeg:                    return "mpeg"
    case .mpeg4Generic:            return "mpeg4-generic"
    case .ogg:                     return "ogg"
    case .opus:                    return "opus"
    case .parityfec:               return "parityfec"
    case .raptorfec:               return "raptorfec"
    case .rtpEncAescm128:          return "rtp-enc-aescm128"
    case .rtploopback:             return "rtploopback"
    case .rtpMidi:                 return "rtp-midi"
    case .rtx:                     return "rtx"
    case .scip:                    return "scip"
    case .sofa:                    return "sofa"
    case .spMidi:                  return "sp-midi"
    case .speex:                   return "speex"
    case .t140c:                   return "t140c"
    case .t38:                     return "t38"
    case .telephoneEvent:          return "telephone-event"
    case .tone:                    return "tone"
    case .ulpfec:                  return "ulpfec"
    case .usac:                    return "usac"
    case .vorbis:                  return "vorbis"
    case .vorbisConfig:            return "vorbis-config"
    case .other(let other):        return other
    case .any:                     return "*"
    }
  }
}
