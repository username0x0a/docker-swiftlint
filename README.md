
# SwiftLint on Docker ⌨️

Very simple, minimalistic, yet effective Ubuntu image with required Swift binaries and pre-compiled SwiftLint command installed.

Can be easily used locally, on your GitHub/GitLab CI machines, etc. 👍

## Usage 🕹

Running `swiftlint`:

```
docker run -it -v `pwd`:`pwd` -w `pwd` username0x0a/swiftlint:latest swiftlint lint
```

## Version specification 🔍

Full tags list is available [here](https://hub.docker.com/r/username0x0a/swiftlint/tags).

| SwiftLint + Swift version | Version tag          | Compatible Xcode         | Xcode tag    | Latest   |
|---------------------------|----------------------|--------------------------|--------------|----------|
| `0.48.0` + `5.6.2`        | `0.48.0_swift-5.6.2` | Xcode 13.4 / Swift 5.6   | `xcode-13.4` | `latest` |
| `0.47.1` + `5.6.1`        | `0.47.1_swift-5.6.1` | Xcode 13.3 / Swift 5.6   | `xcode-13.3` |          |
| `0.47.0` + `5.6.0`        | `0.47.0_swift-5.6.0` | Xcode 13.3 / Swift 5.6   |              |          |
| `0.46.3` + `5.5.3`        | `0.46.3_swift-5.5.3` | Xcode 13.2 / Swift 5.5   | `xcode-13.2` |          |
| `0.46.1` + `5.5.2`        | `0.46.1_swift-5.5.2` | Xcode 13.2 / Swift 5.5   |              |          |
| `0.45.1` + `5.5.2`        | `0.45.1_swift-5.5.2` | Xcode 13.2 / Swift 5.5   |              |          |
| `0.45.1` + `5.5.1`        | `0.45.1_swift-5.5.1` | Xcode 13.2 / Swift 5.5   |              |          |
| `0.45.0` + `5.5.0`        | `0.45.0_swift-5.5.0` | Xcode 13.0 / Swift 5.5   | `xcode-13.0` |          |
| `0.44.0` + `5.4.2`        | `0.44.0_swift-5.4.2` | Xcode 12.5.x / Swift 5.4 | `xcode-12.5` |          |
