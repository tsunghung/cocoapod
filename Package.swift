// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "GoogleTagManager",
  platforms: [.iOS(.v9)],
  products: [
    .library(
      name: "GoogleTagManager",
      targets: ["GoogleTagManagerTarget"]
    ),
  ],
  dependencies: [
    .package(
      name: "Firebase",
      url: "https://github.com/firebase/firebase-ios-sdk.git",
      "8.0.0" ..< "9.0.0"
    ),
  ],
  targets: [
    .target(
      name: "GoogleTagManagerTarget",
      dependencies: [
//        .target(name: "GoogleTagManager", condition: .when(platforms: [.iOS])),
//        .target(name: "GoogleAnalytics", condition: .when(platforms: [.iOS])),
//        .product(name: "FirebaseAnalytics",
//                 package: "Firebase",
//                 condition: .when(platforms: [.iOS])),
      ],
      path: "GoogleTagManagerWrapper",
//      linkerSettings: [
//        .linkedLibrary("sqlite3"),
//        .linkedLibrary("z"),
//        .linkedFramework("AdSupport"),
//        .linkedFramework("CoreData"),
//        .linkedFramework("CoreTelephony"),
//        .linkedFramework("JavaScriptCore"),
//        .linkedFramework("SystemConfiguration"),
//        .linkedFramework("UIKit"),
//      ]
    ),
    .binaryTarget(
      name: "GoogleTagManager",
      url: "https://tsunghung.github.io/GoogleTagManager.zip",
      checksum: "a20a39c071ae5174b3d140bc40e1cd5dbc7e5ec42adc1647dda6f56adb9ef9f9"
    ),
    .binaryTarget(
      name: "GoogleAnalytics",
      url: "https://tsunghung.github.io/GoogleAnalytics.zip",
      checksum: "85c7c5b63e27ece7ce8ac417267a1a617ef368a7164b8208af3d2579c6ee1041"
    ),
  ],
  cLanguageStandard: .c99,
  cxxLanguageStandard: CXXLanguageStandard.gnucxx14
)
