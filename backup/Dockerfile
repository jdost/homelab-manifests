FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        postgresql-client \
        wget \
    && rm -rf /var/lib/apt/lists/* \
      /var/cache/apt/* \
      /var/log/* \
      /usr/share/man \
      /usr/share/doc
# Get kubectl
RUN curl -LO \
        https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && mv ./kubectl /usr/bin/kubectl
# Get minio client
RUN curl -LO https://dl.min.io/client/mc/release/linux-amd64/mc \
    && chmod +x mc \
    && mv ./mc /usr/bin/mc

ENTRYPOINT ["/bin/bash"]
