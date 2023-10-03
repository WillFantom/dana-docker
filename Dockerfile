FROM --platform=amd64 ubuntu:22.04

ARG TARGET=ubu64
ARG VERSION=265
WORKDIR /etc/dana

RUN apt-get update && \
    apt-get install -yq \
    curl \
    unzip && \
    rm -rf /var/lib/apt/lists/* && \
    curl -fsSL --insecure "https://projectdana.com/download/${TARGET}/${VERSION}" -o dana.zip && \
    unzip -o dana.zip && \
    rm -rf dana.zip HowToInstall.txt && \
    chmod +x dana dnc && \
    apt-get purge -yq curl unzip

ENV DANA_HOME=/etc/dana/
ENV PATH=$PATH:$DANA_HOME

