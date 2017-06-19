FROM buildpack-deps:jessie-curl
MAINTAINER bkoerbel@gmail.com

ENV PATH /opt/oauth2-proxy/bin:$PATH

RUN mkdir -p /opt/oauth2-proxy/bin && \
    curl -L -k --silent \
      https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz  | \
      tar xz --strip-components 1 -C /opt/oauth2-proxy/bin

ENTRYPOINT ["oauth2_proxy"]
