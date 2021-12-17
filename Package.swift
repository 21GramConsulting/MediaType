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
    .target(name: "MediaType"),
    .testTarget(name: "MediaTypeTests", dependencies: [.byName(name: "MediaType")])
  ]
)
