FROM ubuntu:20.04

###
# Install git and uuid-runtime (to support development)
# Install jq (to parse json via CLI)
# Install unzip and zip (to support GitHub actions artifact processing)
# Install curl, tar and xz (to install Node.js)
###
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update -y \
  && apt-get install -y \
  git \
  uuid-runtime \
  jq \
  unzip \
  zip \
  curl \
  tar \
  xz-utils

###
# Install Node.js
###
ENV NODE_VERSION "12.16.3"
ENV NODE_DIR "/usr/local/node"
ENV NODE_PATH "${NODE_DIR}/v${NODE_VERSION}"
ENV NODE_PATH_BIN "${NODE_PATH}/bin"
ENV PATH "${NODE_PATH_BIN}:${PATH}"

RUN mkdir -p "${NODE_DIR}" \
  && curl "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz" \
  | tar -xJ -C "${NODE_DIR}" \
  && mv "${NODE_DIR}/node-v${NODE_VERSION}-linux-x64" "${NODE_PATH}"

###
# Support local development
###
ENV PORT 80
EXPOSE 80
WORKDIR "/opt/evernaut"
