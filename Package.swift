// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTJPushNotification",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTJPushNotification",
            targets: ["BTJPushNotificationWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "2.0.2"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "BTJPushNotificationWrapper",
            dependencies: [
                .byName(name: "BTJPushNotification"),
                .product(name: "UnityBridge", package: "UnityBridge"),
                .product(name: "BTSDKUIKitCore", package: "BTSDKUIKitCore"),
            ],
            path: "BTJPushNotificationWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTJPushNotification",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTJPushNotification/2.0.2-dev-1481092/BTJPushNotification.xcframework.zip",
            checksum: "ecf35436d3e9572ff0ed4a8c3207f4b91b2ca63885578d274cf357ec87a890cf"
        )
    ]
)
