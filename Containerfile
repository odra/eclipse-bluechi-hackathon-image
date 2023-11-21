# FROM localhost/autosd-eclipse:latest
FROM quay.io/lrossett/autosd-eclipse:dev

RUN dnf install -y jq

RUN mkdir /usr/bin/grpcurl.d && \
curl -sSL https://github.com/fullstorydev/grpcurl/releases/download/v1.8.7/grpcurl_1.8.7_linux_x86_64.tar.gz | tar -xvz --directory /usr/bin/grpcurl.d && \
ln /usr/bin/grpcurl.d/grpcurl /usr/bin/grpcurl

RUN rm -rf /etc/containers/systemd/*

COPY /files/ /
