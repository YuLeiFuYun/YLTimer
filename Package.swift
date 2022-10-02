// swift-tools-version: 5.7

 import PackageDescription

 let package = Package(
     name: "YLTimer",
     products: [
         .library(name: "YLTimer", targets: ["YLTimer"]),
     ],
     dependencies: [ ],
     targets: [
         .target(name: "YLTimer", dependencies: [])
     ]
 )
