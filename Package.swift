// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "MediaType",
  products: [
    .library(
      name: "MediaType",
      targets: ["MediaType"]
    ),
  ],
  targets: [
    .target(name: "MediaTypeEnums"),
    .target(name: "MediaTypeUtilities", dependencies: [
      .byName(name: "MediaTypeEnums")
    ]),
    .target(name: "MediaType", dependencies: [
      .byName(name: "MediaTypeEnums"),
      .byName(name: "MediaTypeUtilities")
    ]),
    .testTarget(name: "MediaTypeTests", dependencies: [.byName(name: "MediaType")])
  ]
)
