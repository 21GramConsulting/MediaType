import Foundation

public enum Image {
  case aces(Suffix? = nil, Parameters? = nil)
  case avci(Suffix? = nil, Parameters? = nil)
  case avcs(Suffix? = nil, Parameters? = nil)
  case avif(Suffix? = nil, Parameters? = nil)
  case bmp(Suffix? = nil, Parameters? = nil)
  case cgm(Suffix? = nil, Parameters? = nil)
  case dicomRle(Suffix? = nil, Parameters? = nil)
  case emf(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case fits(Suffix? = nil, Parameters? = nil)
  case g3fax(Suffix? = nil, Parameters? = nil)
  case heic(Suffix? = nil, Parameters? = nil)
  case heicSequence(Suffix? = nil, Parameters? = nil)
  case heif(Suffix? = nil, Parameters? = nil)
  case heifSequence(Suffix? = nil, Parameters? = nil)
  case hej2k(Suffix? = nil, Parameters? = nil)
  case hsj2(Suffix? = nil, Parameters? = nil)
  case jls(Suffix? = nil, Parameters? = nil)
  case jp2(Suffix? = nil, Parameters? = nil)
  case jph(Suffix? = nil, Parameters? = nil)
  case jphc(Suffix? = nil, Parameters? = nil)
  case jpm(Suffix? = nil, Parameters? = nil)
  case jpx(Suffix? = nil, Parameters? = nil)
  case jxr(Suffix? = nil, Parameters? = nil)
  case jxrA(Suffix? = nil, Parameters? = nil)
  case jxrS(Suffix? = nil, Parameters? = nil)
  case jxs(Suffix? = nil, Parameters? = nil)
  case jxsc(Suffix? = nil, Parameters? = nil)
  case jxsi(Suffix? = nil, Parameters? = nil)
  case jxss(Suffix? = nil, Parameters? = nil)
  case ktx(Suffix? = nil, Parameters? = nil)
  case ktx2(Suffix? = nil, Parameters? = nil)
  case naplps(Suffix? = nil, Parameters? = nil)
  case png(Suffix? = nil, Parameters? = nil)
  case pwgRaster(Suffix? = nil, Parameters? = nil)
  case svg(Suffix? = nil, Parameters? = nil)
  case t38(Suffix? = nil, Parameters? = nil)
  case tiff(Suffix? = nil, Parameters? = nil)
  case tiffFx(Suffix? = nil, Parameters? = nil)
  case wmf(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Image: CustomStringConvertible { 
  public var description: String {
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
    case .heic(let suffix, let parameters):             return "heic\(suffix)\(parameters)"
    case .heicSequence(let suffix, let parameters):     return "heic-sequence\(suffix)\(parameters)"
    case .heif(let suffix, let parameters):             return "heif\(suffix)\(parameters)"
    case .heifSequence(let suffix, let parameters):     return "heif-sequence\(suffix)\(parameters)"
    case .hej2k(let suffix, let parameters):            return "hej2k\(suffix)\(parameters)"
    case .hsj2(let suffix, let parameters):             return "hsj2\(suffix)\(parameters)"
    case .jls(let suffix, let parameters):              return "jls\(suffix)\(parameters)"
    case .jp2(let suffix, let parameters):              return "jp2\(suffix)\(parameters)"
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
    case .other(let value, let suffix, let parameters): return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):         return "*\(suffix)\(parameters)"
    }
  }
}

extension Image: MediaSubtype { public var type: MediaType { .image(self) } }
