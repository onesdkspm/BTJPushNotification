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
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "BTJPushNotificationWrapper",
            dependencies: [
                .byName(name: "BTJPushNotification"),
                .product(name: "UnityBridge", package: "UnityBridge"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTJPushNotification/2.0.0/BTJPushNotification.xcframework.zip",
            checksum: "823afe66b085119354beb1411b0699ee3d57a651a522927b9feaa9f242f57f8a"
        )
    ]
)
