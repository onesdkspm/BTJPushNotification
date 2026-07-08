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
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.3"),
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "2.0.3"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTJPushNotification/2.0.3-dev-1481394/BTJPushNotification.xcframework.zip",
            checksum: "082cc6e11994ce979637e32960956f09ed6ba85813ba8f721d7d221dfaeb6d98"
        )
    ]
)
