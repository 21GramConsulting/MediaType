import Foundation

public enum Image {
  /// Represents the `aces` subtype.
  case aces(Suffix? = nil, Parameters? = nil)
  /// Represents the `avci` subtype.
  case avci(Suffix? = nil, Parameters? = nil)
  /// Represents the `avcs` subtype.
  case avcs(Suffix? = nil, Parameters? = nil)
  /// Represents the `avif` subtype.
  case avif(Suffix? = nil, Parameters? = nil)
  /// Represents the `bmp` subtype.
  case bmp(Suffix? = nil, Parameters? = nil)
  /// Represents the `cgm` subtype.
  case cgm(Suffix? = nil, Parameters? = nil)
  /// Represents the `dicom-rle` subtype.
  case dicomRle(Suffix? = nil, Parameters? = nil)
  /// Represents the `emf` subtype.
  case emf(Suffix? = nil, Parameters? = nil)
  /// Represents the `example` subtype.
  case example(Suffix? = nil, Parameters? = nil)
  /// Represents the `fits` subtype.
  case fits(Suffix? = nil, Parameters? = nil)
  /// Represents the `g3fax` subtype.
  case g3fax(Suffix? = nil, Parameters? = nil)
  /// Represents the `gif` subtype.
  case gif(Suffix? = nil, Parameters? = nil)
  /// Represents the `heic` subtype.
  case heic(Suffix? = nil, Parameters? = nil)
  /// Represents the `heic-sequence` subtype.
  case heicSequence(Suffix? = nil, Parameters? = nil)
  /// Represents the `heif` subtype.
  case heif(Suffix? = nil, Parameters? = nil)
  /// Represents the `heif-sequence` subtype.
  case heifSequence(Suffix? = nil, Parameters? = nil)
  /// Represents the `hej2k` subtype.
  case hej2k(Suffix? = nil, Parameters? = nil)
  /// Represents the `hsj2` subtype.
  case hsj2(Suffix? = nil, Parameters? = nil)
  /// Represents the `ief` subtype.
  case ief(Suffix? = nil, Parameters? = nil)
  /// Represents the `jls` subtype.
  case jls(Suffix? = nil, Parameters? = nil)
  /// Represents the `jp2` subtype.
  case jp2(Suffix? = nil, Parameters? = nil)
  /// Represents the `jpeg` subtype.
  case jpeg(Suffix? = nil, Parameters? = nil)
  /// Represents the `jph` subtype.
  case jph(Suffix? = nil, Parameters? = nil)
  /// Represents the `jphc` subtype.
  case jphc(Suffix? = nil, Parameters? = nil)
  /// Represents the `jpm` subtype.
  case jpm(Suffix? = nil, Parameters? = nil)
  /// Represents the `jpx` subtype.
  case jpx(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxr` subtype.
  case jxr(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxrA` subtype.
  case jxrA(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxrS` subtype.
  case jxrS(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxs` subtype.
  case jxs(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxsc` subtype.
  case jxsc(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxsi` subtype.
  case jxsi(Suffix? = nil, Parameters? = nil)
  /// Represents the `jxss` subtype.
  case jxss(Suffix? = nil, Parameters? = nil)
  /// Represents the `ktx` subtype.
  case ktx(Suffix? = nil, Parameters? = nil)
  /// Represents the `ktx2` subtype.
  case ktx2(Suffix? = nil, Parameters? = nil)
  /// Represents the `naplps` subtype.
  case naplps(Suffix? = nil, Parameters? = nil)
  /// Represents the `png` subtype.
  case png(Suffix? = nil, Parameters? = nil)
  /// Represents the `pwg-raster` subtype.
  case pwgRaster(Suffix? = nil, Parameters? = nil)
  /// Represents the `svg` subtype.
  case svg(Suffix? = nil, Parameters? = nil)
  /// Represents the `t38` subtype.
  case t38(Suffix? = nil, Parameters? = nil)
  /// Represents the `tiff` subtype.
  case tiff(Suffix? = nil, Parameters? = nil)
  /// Represents the `tiff-fx` subtype.
  case tiffFx(Suffix? = nil, Parameters? = nil)
  /// Represents the `wmf` subtype.
  case wmf(Suffix? = nil, Parameters? = nil)
  /// Represents the `x-emf` subtype.
  case xEmf(Suffix? = nil, Parameters? = nil)
  /// Represents the `x-wmf` subtype.
  case xWmf(Suffix? = nil, Parameters? = nil)
  /// Represents a subtype that does not fit in the other cases or is currently not officially defined.
  /// 
  /// You can use this case to define an arbitrary, unregistered subtype with the given name or
  /// to represent a subtype in the non standard tree, e.g. vendor tree or personal tree.
  /// 
  /// Optionally, you can specify a ``Suffix`` and ``Parameters``.
  /// 
  /// ```swift
  /// // TODO: Provide examples.
  /// ```
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Image: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Image: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "aces":          self = .aces(suffix, parameters)
    case "avci":          self = .avci(suffix, parameters)
    case "avcs":          self = .avcs(suffix, parameters)
    case "avif":          self = .avif(suffix, parameters)
    case "bmp":           self = .bmp(suffix, parameters)
    case "cgm":           self = .cgm(suffix, parameters)
    case "dicom-rle":     self = .dicomRle(suffix, parameters)
    case "emf":           self = .emf(suffix, parameters)
    case "example":       self = .example(suffix, parameters)
    case "fits":          self = .fits(suffix, parameters)
    case "g3fax":         self = .g3fax(suffix, parameters)
    case "gif":           self = .gif(suffix, parameters)
    case "heic":          self = .heic(suffix, parameters)
    case "heic-sequence": self = .heicSequence(suffix, parameters)
    case "heif":          self = .heif(suffix, parameters)
    case "heif-sequence": self = .heifSequence(suffix, parameters)
    case "hej2k":         self = .hej2k(suffix, parameters)
    case "hsj2":          self = .hsj2(suffix, parameters)
    case "ief":           self = .ief(suffix, parameters)
    case "jls":           self = .jls(suffix, parameters)
    case "jp2":           self = .jp2(suffix, parameters)
    case "jpeg":          self = .jpeg(suffix, parameters)
    case "jph":           self = .jph(suffix, parameters)
    case "jphc":          self = .jphc(suffix, parameters)
    case "jpm":           self = .jpm(suffix, parameters)
    case "jpx":           self = .jpx(suffix, parameters)
    case "jxr":           self = .jxr(suffix, parameters)
    case "jxrA":          self = .jxrA(suffix, parameters)
    case "jxrS":          self = .jxrS(suffix, parameters)
    case "jxs":           self = .jxs(suffix, parameters)
    case "jxsc":          self = .jxsc(suffix, parameters)
    case "jxsi":          self = .jxsi(suffix, parameters)
    case "jxss":          self = .jxss(suffix, parameters)
    case "ktx":           self = .ktx(suffix, parameters)
    case "ktx2":          self = .ktx2(suffix, parameters)
    case "naplps":        self = .naplps(suffix, parameters)
    case "png":           self = .png(suffix, parameters)
    case "pwg-raster":    self = .pwgRaster(suffix, parameters)
    case "svg":           self = .svg(suffix, parameters)
    case "t38":           self = .t38(suffix, parameters)
    case "tiff":          self = .tiff(suffix, parameters)
    case "tiff-fx":       self = .tiffFx(suffix, parameters)
    case "wmf":           self = .wmf(suffix, parameters)
    case "x-emf":         self = .xEmf(suffix, parameters)
    case "x-wmf":         self = .xWmf(suffix, parameters)
    case "*":             self = .anything(suffix, parameters)
    default:              self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .aces(let suffix, let parameters):             return "aces\(suffix)\(parameters)"
    case .avci(let suffix, let parameters):             return "avci\(suffix)\(parameters)"
    case .avcs(let suffix, let parameters):             return "avcs\(suffix)\(parameters)"
    case .avif(let suffix, let parameters):             return "avif\(suffix)\(parameters)"
    case .bmp(let suffix, let parameters):              return "bmp\(suffix)\(parameters)"
    case .cgm(let suffix, let parameters):              return "cgm\(suffix)\(parameters)"
    case .dicomRle(let suffix, let parameters):         return "dicom-rle\(suffix)\(parameters)"
    case .emf(let suffix, let parameters):              return "emf\(suffix)\(parameters)"
    case .example(let suffix, let parameters):          return "example\(suffix)\(parameters)"
    case .fits(let suffix, let parameters):             return "fits\(suffix)\(parameters)"
    case .g3fax(let suffix, let parameters):            return "g3fax\(suffix)\(parameters)"
    case .gif(let suffix, let parameters):              return "gif\(suffix)\(parameters)"
    case .heic(let suffix, let parameters):             return "heic\(suffix)\(parameters)"
    case .heicSequence(let suffix, let parameters):     return "heic-sequence\(suffix)\(parameters)"
    case .heif(let suffix, let parameters):             return "heif\(suffix)\(parameters)"
    case .heifSequence(let suffix, let parameters):     return "heif-sequence\(suffix)\(parameters)"
    case .hej2k(let suffix, let parameters):            return "hej2k\(suffix)\(parameters)"
    case .hsj2(let suffix, let parameters):             return "hsj2\(suffix)\(parameters)"
    case .ief(let suffix, let parameters):              return "ief\(suffix)\(parameters)"
    case .jls(let suffix, let parameters):              return "jls\(suffix)\(parameters)"
    case .jp2(let suffix, let parameters):              return "jp2\(suffix)\(parameters)"
    case .jpeg(let suffix, let parameters):             return "jpeg\(suffix)\(parameters)"
    case .jph(let suffix, let parameters):              return "jph\(suffix)\(parameters)"
    case .jphc(let suffix, let parameters):             return "jphc\(suffix)\(parameters)"
    case .jpm(let suffix, let parameters):              return "jpm\(suffix)\(parameters)"
    case .jpx(let suffix, let parameters):              return "jpx\(suffix)\(parameters)"
    case .jxr(let suffix, let parameters):              return "jxr\(suffix)\(parameters)"
    case .jxrA(let suffix, let parameters):             return "jxrA\(suffix)\(parameters)"
    case .jxrS(let suffix, let parameters):             return "jxrS\(suffix)\(parameters)"
    case .jxs(let suffix, let parameters):              return "jxs\(suffix)\(parameters)"
    case .jxsc(let suffix, let parameters):             return "jxsc\(suffix)\(parameters)"
    case .jxsi(let suffix, let parameters):             return "jxsi\(suffix)\(parameters)"
    case .jxss(let suffix, let parameters):             return "jxss\(suffix)\(parameters)"
    case .ktx(let suffix, let parameters):              return "ktx\(suffix)\(parameters)"
    case .ktx2(let suffix, let parameters):             return "ktx2\(suffix)\(parameters)"
    case .naplps(let suffix, let parameters):           return "naplps\(suffix)\(parameters)"
    case .png(let suffix, let parameters):              return "png\(suffix)\(parameters)"
    case .pwgRaster(let suffix, let parameters):        return "pwg-raster\(suffix)\(parameters)"
    case .svg(let suffix, let parameters):              return "svg\(suffix)\(parameters)"
    case .t38(let suffix, let parameters):              return "t38\(suffix)\(parameters)"
    case .tiff(let suffix, let parameters):             return "tiff\(suffix)\(parameters)"
    case .tiffFx(let suffix, let parameters):           return "tiff-fx\(suffix)\(parameters)"
    case .wmf(let suffix, let parameters):              return "wmf\(suffix)\(parameters)"
    case .xEmf(let suffix, let parameters):             return "x-emf\(suffix)\(parameters)"
    case .xWmf(let suffix, let parameters):             return "x-wmf\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters): return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):         return "*\(suffix)\(parameters)"
    }
  }

}

extension Image: MediaSubtype { public var type: MediaType { .image(self) } }

extension Image: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .aces(let lhsSuffix, let lhsParameters):
      guard case let .aces(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .avci(let lhsSuffix, let lhsParameters):
      guard case let .avci(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .avcs(let lhsSuffix, let lhsParameters):
      guard case let .avcs(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .avif(let lhsSuffix, let lhsParameters):
      guard case let .avif(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .bmp(let lhsSuffix, let lhsParameters):
      guard case let .bmp(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .cgm(let lhsSuffix, let lhsParameters):
      guard case let .cgm(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dicomRle(let lhsSuffix, let lhsParameters):
      guard case let .dicomRle(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .emf(let lhsSuffix, let lhsParameters):
      guard case let .emf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .example(let lhsSuffix, let lhsParameters):
      guard case let .example(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .fits(let lhsSuffix, let lhsParameters):
      guard case let .fits(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .g3fax(let lhsSuffix, let lhsParameters):
      guard case let .g3fax(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .gif(let lhsSuffix, let lhsParameters):
      guard case let .gif(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .heic(let lhsSuffix, let lhsParameters):
      guard case let .heic(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .heicSequence(let lhsSuffix, let lhsParameters):
      guard case let .heicSequence(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .heif(let lhsSuffix, let lhsParameters):
      guard case let .heif(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .heifSequence(let lhsSuffix, let lhsParameters):
      guard case let .heifSequence(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .hej2k(let lhsSuffix, let lhsParameters):
      guard case let .hej2k(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .hsj2(let lhsSuffix, let lhsParameters):
      guard case let .hsj2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ief(let lhsSuffix, let lhsParameters):
      guard case let .ief(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jls(let lhsSuffix, let lhsParameters):
      guard case let .jls(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jp2(let lhsSuffix, let lhsParameters):
      guard case let .jp2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jpeg(let lhsSuffix, let lhsParameters):
      guard case let .jpeg(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jph(let lhsSuffix, let lhsParameters):
      guard case let .jph(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jphc(let lhsSuffix, let lhsParameters):
      guard case let .jphc(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jpm(let lhsSuffix, let lhsParameters):
      guard case let .jpm(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jpx(let lhsSuffix, let lhsParameters):
      guard case let .jpx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxr(let lhsSuffix, let lhsParameters):
      guard case let .jxr(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxrA(let lhsSuffix, let lhsParameters):
      guard case let .jxrA(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxrS(let lhsSuffix, let lhsParameters):
      guard case let .jxrS(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxs(let lhsSuffix, let lhsParameters):
      guard case let .jxs(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxsc(let lhsSuffix, let lhsParameters):
      guard case let .jxsc(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxsi(let lhsSuffix, let lhsParameters):
      guard case let .jxsi(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jxss(let lhsSuffix, let lhsParameters):
      guard case let .jxss(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ktx(let lhsSuffix, let lhsParameters):
      guard case let .ktx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ktx2(let lhsSuffix, let lhsParameters):
      guard case let .ktx2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .naplps(let lhsSuffix, let lhsParameters):
      guard case let .naplps(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .png(let lhsSuffix, let lhsParameters):
      guard case let .png(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .pwgRaster(let lhsSuffix, let lhsParameters):
      guard case let .pwgRaster(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .svg(let lhsSuffix, let lhsParameters):
      guard case let .svg(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .t38(let lhsSuffix, let lhsParameters):
      guard case let .t38(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .tiff(let lhsSuffix, let lhsParameters):
      guard case let .tiff(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .tiffFx(let lhsSuffix, let lhsParameters):
      guard case let .tiffFx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .wmf(let lhsSuffix, let lhsParameters):
      guard case let .wmf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .xEmf(let lhsSuffix, let lhsParameters):
      guard case let .xEmf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .xWmf(let lhsSuffix, let lhsParameters):
      guard case let .xWmf(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .aces(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .avci(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .avcs(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .avif(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .bmp(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .cgm(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dicomRle(let suffix, let parameters):
      hasher.combine(6)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .emf(let suffix, let parameters):
      hasher.combine(7)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .example(let suffix, let parameters):
      hasher.combine(8)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .fits(let suffix, let parameters):
      hasher.combine(9)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .g3fax(let suffix, let parameters):
      hasher.combine(10)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .gif(let suffix, let parameters):
      hasher.combine(11)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .heic(let suffix, let parameters):
      hasher.combine(12)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .heicSequence(let suffix, let parameters):
      hasher.combine(13)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .heif(let suffix, let parameters):
      hasher.combine(14)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .heifSequence(let suffix, let parameters):
      hasher.combine(15)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .hej2k(let suffix, let parameters):
      hasher.combine(16)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .hsj2(let suffix, let parameters):
      hasher.combine(17)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ief(let suffix, let parameters):
      hasher.combine(18)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jls(let suffix, let parameters):
      hasher.combine(19)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jp2(let suffix, let parameters):
      hasher.combine(20)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jpeg(let suffix, let parameters):
      hasher.combine(21)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jph(let suffix, let parameters):
      hasher.combine(22)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jphc(let suffix, let parameters):
      hasher.combine(23)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jpm(let suffix, let parameters):
      hasher.combine(24)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jpx(let suffix, let parameters):
      hasher.combine(25)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxr(let suffix, let parameters):
      hasher.combine(26)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxrA(let suffix, let parameters):
      hasher.combine(27)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxrS(let suffix, let parameters):
      hasher.combine(28)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxs(let suffix, let parameters):
      hasher.combine(29)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxsc(let suffix, let parameters):
      hasher.combine(30)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxsi(let suffix, let parameters):
      hasher.combine(31)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jxss(let suffix, let parameters):
      hasher.combine(32)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ktx(let suffix, let parameters):
      hasher.combine(33)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ktx2(let suffix, let parameters):
      hasher.combine(34)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .naplps(let suffix, let parameters):
      hasher.combine(35)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .png(let suffix, let parameters):
      hasher.combine(36)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .pwgRaster(let suffix, let parameters):
      hasher.combine(37)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .svg(let suffix, let parameters):
      hasher.combine(38)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .t38(let suffix, let parameters):
      hasher.combine(39)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .tiff(let suffix, let parameters):
      hasher.combine(40)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .tiffFx(let suffix, let parameters):
      hasher.combine(41)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .wmf(let suffix, let parameters):
      hasher.combine(42)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .xEmf(let suffix, let parameters):
      hasher.combine(43)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .xWmf(let suffix, let parameters):
      hasher.combine(44)
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
