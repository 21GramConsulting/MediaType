import Foundation

public enum Model {
  case _3mf(Suffix? = nil, Parameters? = nil)
  case e57(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case gltfBinary(Suffix? = nil, Parameters? = nil)
  case gltf(Suffix? = nil, Parameters? = nil)
  case iges(Suffix? = nil, Parameters? = nil)
  case mtl(Suffix? = nil, Parameters? = nil)
  case obj(Suffix? = nil, Parameters? = nil)
  case step(Suffix? = nil, Parameters? = nil)
  case stepXml(Suffix? = nil, Parameters? = nil)
  case stl(Suffix? = nil, Parameters? = nil)
  case x3dVrml(Suffix? = nil, Parameters? = nil)
  case x3d(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Model: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Model: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "3mf":         self = ._3mf(suffix, parameters)
    case "e57":         self = .e57(suffix, parameters)
    case "example":     self = .example(suffix, parameters)
    case "gltf-binary": self = .gltfBinary(suffix, parameters)
    case "gltf":        self = .gltf(suffix, parameters)
    case "iges":        self = .iges(suffix, parameters)
    case "mtl":         self = .mtl(suffix, parameters)
    case "obj":         self = .obj(suffix, parameters)
    case "step":        self = .step(suffix, parameters)
    case "step-xml":    self = .stepXml(suffix, parameters)
    case "stl":         self = .stl(suffix, parameters)
    case "x3d-vrml":    self = .x3dVrml(suffix, parameters)
    case "x3d":         self = .x3d(suffix, parameters)
    case "*":           self = .anything(suffix, parameters)
    default:            self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case ._3mf(let suffix, let parameters):             return "3mf\(suffix)\(parameters)"
    case .e57(let suffix, let parameters):              return "e57\(suffix)\(parameters)"
    case .example(let suffix, let parameters):          return "example\(suffix)\(parameters)"
    case .gltfBinary(let suffix, let parameters):       return "gltf-binary\(suffix)\(parameters)"
    case .gltf(let suffix, let parameters):             return "gltf\(suffix)\(parameters)"
    case .iges(let suffix, let parameters):             return "iges\(suffix)\(parameters)"
    case .mtl(let suffix, let parameters):              return "mtl\(suffix)\(parameters)"
    case .obj(let suffix, let parameters):              return "obj\(suffix)\(parameters)"
    case .step(let suffix, let parameters):             return "step\(suffix)\(parameters)"
    case .stepXml(let suffix, let parameters):          return "step-xml\(suffix)\(parameters)"
    case .stl(let suffix, let parameters):              return "stl\(suffix)\(parameters)"
    case .x3dVrml(let suffix, let parameters):          return "x3d-vrml\(suffix)\(parameters)"
    case .x3d(let suffix, let parameters):              return "x3d\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters): return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):         return "*\(suffix)\(parameters)"
    }
  }

}

extension Model: MediaSubtype { public var type: MediaType { .model(self) } }
