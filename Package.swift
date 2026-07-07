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
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "1.0.0"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTJPushNotification/2.0.2-dev-1480315/BTJPushNotification.xcframework.zip",
            checksum: "13cffb96fe5223d456884ac10cd883554adff6c3d707c83d5fe7bc4a7a285cd2"
        )
    ]
)
