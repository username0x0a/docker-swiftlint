
# Explicitly specify `focal` because:
# - `swift:latest` does not use `ubuntu:latest`
# - SwiftLint binary has been compiled on Focal

ARG SWIFT_VERSION=5.6.0
ARG SWIFTLINT_VERSION=0.47.0

ARG BUILDER_IMAGE=swift:${SWIFT_VERSION}-focal
ARG RUNTIME_IMAGE=ubuntu:focal

#####################
# Builder image
#####################

FROM ${BUILDER_IMAGE} AS builder
ARG SWIFTLINT_VERSION
RUN apt update && apt install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    binutils \
    wget \
    zip \
 && rm -r /var/lib/apt/lists/*
WORKDIR /workdir

RUN wget https://github.com/realm/SwiftLint/releases/download/$SWIFTLINT_VERSION/swiftlint_linux.zip \
 && unzip swiftlint_linux.zip \
 && mv swiftlint /usr/bin \
 && rm *

RUN strip --strip-all /usr/lib/libsourcekitdInProc.so \
                      /usr/lib/swift/linux/libBlocksRuntime.so \
                      /usr/lib/swift/linux/libdispatch.so \
                      /usr/lib/swift/linux/lib_InternalSwiftSyntaxParser.so \
                      /usr/bin/swiftlint

# CMD ["bash"]

#####################
# Runtime image
#####################

FROM ${RUNTIME_IMAGE}
LABEL org.opencontainers.image.source https://github.com/username0x0a/docker-swiftlint
RUN apt update && apt install -y \
    libcurl4 \
    libxml2 \
 && rm -r /var/lib/apt/lists/* \
 && apt autoremove -y \
 && apt clean -y
WORKDIR /lintdir

COPY --from=builder /usr/lib/libsourcekitdInProc.so /usr/lib
COPY --from=builder /usr/lib/swift/linux/libBlocksRuntime.so /usr/lib
COPY --from=builder /usr/lib/swift/linux/libdispatch.so /usr/lib
COPY --from=builder /usr/lib/swift/linux/lib_InternalSwiftSyntaxParser.so /usr/lib
COPY --from=builder /usr/bin/swiftlint /usr/bin

RUN swiftlint --version

CMD ["swiftlint", "lint"]
