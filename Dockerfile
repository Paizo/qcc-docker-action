FROM --platform=linux/amd64 alpine:latest
ARG TARGETARCH

LABEL org.opencontainers.image.authors="https://github.com/Paizo https://x.com/PaizoKeizo"
LABEL "com.github.actions.name"="qcc-docker-action"
LABEL "com.github.actions.description"="Build Quake maps and qc sources"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/Paizo/qcc-docker-action"
LABEL "homepage"="https://github.com/Paizo/qcc-docker-action"

RUN apk add --no-cache bash curl unzip libc6-compat libstdc++

RUN curl -L -o fteqcc.zip https://www.fteqcc.org/dl/fteqcc_linux64.zip && \
    curl -L -o ericw-tools.zip https://github.com/ericwa/ericw-tools/releases/download/v0.18.1/ericw-tools-v0.18.1-Linux.zip && \
    mkdir -p /qtools/bin && \
    unzip -o -j ericw-tools.zip -d /qtools/bin && \
    unzip -o fteqcc.zip -d /qtools/bin && \
    rm -f fteqcc.zip ericw-tools.zip 

COPY entrypoint.sh README.md ./

ENTRYPOINT ["/entrypoint.sh"]
