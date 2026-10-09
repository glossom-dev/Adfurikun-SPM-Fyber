// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-Fyber",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunFyber", targets: ["AdfurikunFyber"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.5.0-alpha.3"
        ),
        .package(
            url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git",
            exact: "8.4.10"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunFyber",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
