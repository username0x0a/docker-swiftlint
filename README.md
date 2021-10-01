# SwiftLint on Docker ⌨️

Very simple, minimalistic, yet effective Ubuntu image with required Swift binaries and pre-compiled SwiftLint command installed.

Can be easily used locally, on your GitHub/GitLab CI machines, etc. 👍

## Usage 🕹

Running `swiftlint`:

```
docker run username0x0a/swiftlint:latest swiftlint lint
```

## Version specification 🔍

Full tags list is available [here](https://hub.docker.com/r/username0x0a/swiftlint/tags).

| SwiftLint + Swift version | Version tag          | Compatible Xcode         | Xcode tag    | Latest   |
|---------------------------|----------------------|--------------------------|--------------|----------|
| `0.45.0` + `5.5.0`        | `0.45.0_swift-5.5.0` | Xcode 13.0 / Swift 5.5   | `xcode-13.0` | `latest` |
| `0.44.0` + `5.4.2`        | `0.44.0_swift-5.4.2` | Xcode 12.5.x / Swift 5.4 | `xcode-12.5` |          |
