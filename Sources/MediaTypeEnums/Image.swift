import Foundation

public extension MediaTypeEnum {
  enum Image {
    case aces
    case avci
    case avcs
    case avif
    case bmp
    case cgm
    case dicomRle
    case emf
    case example
    case fits
    case g3fax
    case heic
    case heicSequence
    case heif
    case heifSequence
    case hej2k
    case hsj2
    case jls
    case jp2
    case jph
    case jphc
    case jpm
    case jpx
    case jxr
    case jxrA
    case jxrS
    case jxs
    case jxsc
    case jxsi
    case jxss
    case ktx
    case ktx2
    case naplps
    case png
    case pwgRaster
    case svg
    case t38
    case tiff
    case tiffFx
    case wmf
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Image: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Image: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Image: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "aces":          self = .aces
    case "avci":          self = .avci
    case "avcs":          self = .avcs
    case "avif":          self = .avif
    case "bmp":           self = .bmp
    case "cgm":           self = .cgm
    case "dicom-rle":     self = .dicomRle
    case "emf":           self = .emf
    case "example":       self = .example
    case "fits":          self = .fits
    case "g3fax":         self = .g3fax
    case "heic":          self = .heic
    case "heic-sequence": self = .heicSequence
    case "heif":          self = .heif
    case "heif-sequence": self = .heifSequence
    case "hej2k":         self = .hej2k
    case "hsj2":          self = .hsj2
    case "jls":           self = .jls
    case "jp2":           self = .jp2
    case "jph":           self = .jph
    case "jphc":          self = .jphc
    case "jpm":           self = .jpm
    case "jpx":           self = .jpx
    case "jxr":           self = .jxr
    case "jxrA":          self = .jxrA
    case "jxrS":          self = .jxrS
    case "jxs":           self = .jxs
    case "jxsc":          self = .jxsc
    case "jxsi":          self = .jxsi
    case "jxss":          self = .jxss
    case "ktx":           self = .ktx
    case "ktx2":          self = .ktx2
    case "naplps":        self = .naplps
    case "png":           self = .png
    case "pwg-raster":    self = .pwgRaster
    case "svg":           self = .svg
    case "t38":           self = .t38
    case "tiff":          self = .tiff
    case "tiff-fx":       self = .tiffFx
    case "wmf":           self = .wmf
    case "*":             self = .any
    default:              self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .aces:             return "aces"
    case .avci:             return "avci"
    case .avcs:             return "avcs"
    case .avif:             return "avif"
    case .bmp:              return "bmp"
    case .cgm:              return "cgm"
    case .dicomRle:         return "dicom-rle"
    case .emf:              return "emf"
    case .example:          return "example"
    case .fits:             return "fits"
    case .g3fax:            return "g3fax"
    case .heic:             return "heic"
    case .heicSequence:     return "heic-sequence"
    case .heif:             return "heif"
    case .heifSequence:     return "heif-sequence"
    case .hej2k:            return "hej2k"
    case .hsj2:             return "hsj2"
    case .jls:              return "jls"
    case .jp2:              return "jp2"
    case .jph:              return "jph"
    case .jphc:             return "jphc"
    case .jpm:              return "jpm"
    case .jpx:              return "jpx"
    case .jxr:              return "jxr"
    case .jxrA:             return "jxrA"
    case .jxrS:             return "jxrS"
    case .jxs:              return "jxs"
    case .jxsc:             return "jxsc"
    case .jxsi:             return "jxsi"
    case .jxss:             return "jxss"
    case .ktx:              return "ktx"
    case .ktx2:             return "ktx2"
    case .naplps:           return "naplps"
    case .png:              return "png"
    case .pwgRaster:        return "pwg-raster"
    case .svg:              return "svg"
    case .t38:              return "t38"
    case .tiff:             return "tiff"
    case .tiffFx:           return "tiff-fx"
    case .wmf:              return "wmf"
    case .other(let other): return other
    case .any:              return "*"
    }
  }
}
