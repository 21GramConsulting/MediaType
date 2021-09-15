import Foundation

public extension MediaTypeEnum {
  enum Model {
    case _3mf
    case e57
    case example
    case gltfBinary
    case gltf
    case iges
    case mtl
    case obj
    case step
    case stepXml
    case stl
    case x3dVrml
    case x3d
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Model: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Model: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Model: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "3mf":         self = ._3mf
    case "e57":         self = .e57
    case "example":     self = .example
    case "gltf-binary": self = .gltfBinary
    case "gltf":        self = .gltf
    case "iges":        self = .iges
    case "mtl":         self = .mtl
    case "obj":         self = .obj
    case "step":        self = .step
    case "step-xml":    self = .stepXml
    case "stl":         self = .stl
    case "x3d-vrml":    self = .x3dVrml
    case "x3d":         self = .x3d
    case "*":           self = .any
    default:            self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case ._3mf:             return "3mf"
    case .e57:              return "e57"
    case .example:          return "example"
    case .gltfBinary:       return "gltf-binary"
    case .gltf:             return "gltf"
    case .iges:             return "iges"
    case .mtl:              return "mtl"
    case .obj:              return "obj"
    case .step:             return "step"
    case .stepXml:          return "step-xml"
    case .stl:              return "stl"
    case .x3dVrml:          return "x3d-vrml"
    case .x3d:              return "x3d"
    case .other(let other): return other
    case .any:              return "*"
    }
  }
}
