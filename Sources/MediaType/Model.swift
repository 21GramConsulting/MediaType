import Foundation

/// Represents the `model` media type. See the
/// [official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#model) for details.
public enum Model {
  /// Represents the `3mf` subtype.
  case _3mf(Suffix? = nil, Parameters? = nil)
  /// Represents the `e57` subtype.
  case e57(Suffix? = nil, Parameters? = nil)
  /// Represents the `example` subtype.
  case example(Suffix? = nil, Parameters? = nil)
  /// Represents the `gltf-binary` subtype.
  case gltfBinary(Suffix? = nil, Parameters? = nil)
  /// Represents the `gltf` subtype.
  case gltf(Suffix? = nil, Parameters? = nil)
  /// Represents the `iges` subtype.
  case iges(Suffix? = nil, Parameters? = nil)
  /// Represents the `mesh` subtype.
  case mesh(Suffix? = nil, Parameters? = nil)
  /// Represents the `mtl` subtype.
  case mtl(Suffix? = nil, Parameters? = nil)
  /// Represents the `obj` subtype.
  case obj(Suffix? = nil, Parameters? = nil)
  /// Represents the `step` subtype.
  case step(Suffix? = nil, Parameters? = nil)
  /// Represents the `step-xml` subtype.
  case stepXml(Suffix? = nil, Parameters? = nil)
  /// Represents the `stl` subtype.
  case stl(Suffix? = nil, Parameters? = nil)
  /// Represents the `vrml` subtype.
  case vrml(Suffix? = nil, Parameters? = nil)
  /// Represents the `x3d-vrml` subtype.
  case x3dVrml(Suffix? = nil, Parameters? = nil)
  /// Represents the `x3d` subtype.
  case x3d(Suffix? = nil, Parameters? = nil)
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
    case "mesh":        self = .mesh(suffix, parameters)
    case "mtl":         self = .mtl(suffix, parameters)
    case "obj":         self = .obj(suffix, parameters)
    case "step":        self = .step(suffix, parameters)
    case "step-xml":    self = .stepXml(suffix, parameters)
    case "stl":         self = .stl(suffix, parameters)
    case "vrml":        self = .vrml(suffix, parameters)
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
    case .mesh(let suffix, let parameters):             return "mesh\(suffix)\(parameters)"
    case .mtl(let suffix, let parameters):              return "mtl\(suffix)\(parameters)"
    case .obj(let suffix, let parameters):              return "obj\(suffix)\(parameters)"
    case .step(let suffix, let parameters):             return "step\(suffix)\(parameters)"
    case .stepXml(let suffix, let parameters):          return "step-xml\(suffix)\(parameters)"
    case .stl(let suffix, let parameters):              return "stl\(suffix)\(parameters)"
    case .vrml(let suffix, let parameters):             return "vrml\(suffix)\(parameters)"
    case .x3dVrml(let suffix, let parameters):          return "x3d-vrml\(suffix)\(parameters)"
    case .x3d(let suffix, let parameters):              return "x3d\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters): return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):         return "*\(suffix)\(parameters)"
    }
  }

}

extension Model: MediaSubtype { public var type: MediaType { .model(self) } }

extension Model: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case ._3mf(let lhsSuffix, let lhsParameters):
      guard case let ._3mf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .e57(let lhsSuffix, let lhsParameters):
      guard case let .e57(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .example(let lhsSuffix, let lhsParameters):
      guard case let .example(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .gltfBinary(let lhsSuffix, let lhsParameters):
      guard case let .gltfBinary(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .gltf(let lhsSuffix, let lhsParameters):
      guard case let .gltf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .iges(let lhsSuffix, let lhsParameters):
      guard case let .iges(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mesh(let lhsSuffix, let lhsParameters):
      guard case let .mesh(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mtl(let lhsSuffix, let lhsParameters):
      guard case let .mtl(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .obj(let lhsSuffix, let lhsParameters):
      guard case let .obj(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .step(let lhsSuffix, let lhsParameters):
      guard case let .step(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .stepXml(let lhsSuffix, let lhsParameters):
      guard case let .stepXml(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .stl(let lhsSuffix, let lhsParameters):
      guard case let .stl(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vrml(let lhsSuffix, let lhsParameters):
      guard case let .vrml(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .x3dVrml(let lhsSuffix, let lhsParameters):
      guard case let .x3dVrml(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .x3d(let lhsSuffix, let lhsParameters):
      guard case let .x3d(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case ._3mf(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .e57(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .example(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .gltfBinary(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .gltf(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .iges(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mesh(let suffix, let parameters):
      hasher.combine(6)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mtl(let suffix, let parameters):
      hasher.combine(7)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .obj(let suffix, let parameters):
      hasher.combine(8)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .step(let suffix, let parameters):
      hasher.combine(9)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .stepXml(let suffix, let parameters):
      hasher.combine(10)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .stl(let suffix, let parameters):
      hasher.combine(11)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vrml(let suffix, let parameters):
      hasher.combine(12)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .x3dVrml(let suffix, let parameters):
      hasher.combine(13)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .x3d(let suffix, let parameters):
      hasher.combine(14)
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
