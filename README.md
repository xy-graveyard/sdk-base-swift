[logo]: https://cdn.xy.company/img/brand/XYO_full_colored.png

[![logo]](https://xyo.network)

# sdk-base-swift

![](https://github.com/XYOracleNetwork/sdk-base-swift/workflows/Base%20Build/badge.svg)
[![BCH compliance](https://bettercodehub.com/edge/badge/XYOracleNetwork/sdk-base-swift?branch=master&token=0c95939d44cd72eb10c7a4391e99343599ed0c44)](https://bettercodehub.com/) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/f0e5f13a91e84387995f21225d9ac962)](https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=XYOracleNetwork/sdk-base-swift&amp;utm_campaign=Badge_Grade) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Table of Contents

-   [Title](#sdk-base-swift)
-   [Getting Started](#getting-started)
-   [Maintainers](#maintainers)
-   [License](#license)
-   [Credits](#credits)

## Getting Started 

### Swift Package Manager

```swift
  .package(url: "https://github.com/XYOracleNetwork/sdk-base-swift.git", from: "1.0.4")
```

### Carthage

- If you do not have Carthage, install
```sh
  brew install carthage
```
- Check for the most recent version if necessary
```sh
  carthage version
```
- Create a Cartfile in the root directory of your project
```sh
  touch Cartfile
```

- In your Cartfile, add `sdk-base-swift` as a dependency
```sh
  github "https://github.com/XYOracleNetwork/sdk-base-swift"
```

- Clone the `sdk-base-swift` dependency and build it into a framework
```sh
  carthage update
```

You should now see an update to your project structure with these inclusions
```sh
- your-root-project
  - Carthage
    - Checkouts
  - Cartfile.resolved
```

- Now open xcode 

- Open the newly created Carthage directory 
```sh
  open Carthage
```

- Go to the `Carthage/Build/` directory
- Then open the `iOS` folder
- Grab both `XyBaseSdk` frameworks and drag them into xcode


### Requirements
- iOS 11.0+
- Xcode 10.1+
- Swift 4.2+

## Maintainers 
- Arie Trouw

## License

See the [LICENSE](LICENSE) file for license details.

## Credits

Made with 🔥and ❄️ by [XYO](https://www.xyo.network)
