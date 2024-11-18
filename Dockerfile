FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ca-certificates jq curl

RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=v8&source=github" | tar -zx
RUN mv cf8 /usr/local/bin
RUN mv cf /usr/local/bin

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]