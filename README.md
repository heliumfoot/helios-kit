# HeliosKit

Helium Foot's Core Support Package for Swift-Android Toolchain based crossplatform libraries.

## Warning

This currently doesn't build without `Glibc`. This package would need to be built by a modified version of the Swift Package Manager that uses a version of Swift that is linked with `Glibc`. You can get all that from the [Swift-Android Toolchain](https://github.com/readdle/swift-android-toolchain).

## Requirements

1.  [Homebrew](brew.sh)
1.  [Direnv](https://direnv.net/docs/installation.html)

1.  Copy the `.envrc.sample` file to a file called `.envrc`.

        mv .envrc.sample .envrc

1.  Make sure to run `direnv allow .` to have `direnv` load the environment from the `.envrc` file.
