FROM alpine

RUN mkdir -p /opt
WORKDIR /opt

ARG sdk_url="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-323.0.0-linux-x86_64.tar.gz"

RUN apk update && apk upgrade && apk add --no-cache curl git
RUN apk add --no-cache bash
RUN apk add --no-cache python3

RUN curl -f -O $sdk_url

RUN tar -zxf $(basename $sdk_url )

RUN ./google-cloud-sdk/install.sh -q --additional-components cloud_sql_proxy
RUN echo "source /opt/google-cloud-sdk/path.bash.inc" > /root/.bashrc

WORKDIR /root
CMD bash