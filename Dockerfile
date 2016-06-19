FROM alpine:3.4
MAINTAINER Daniil Pokrovsky

RUN apk add --no-cache \
  bash \
  curl \
  less \
  groff \
  python \
  nodejs \
  py-pip && \
  pip install --upgrade awscli s3cmd && \
  mkdir /root/.aws

VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments.
ENTRYPOINT ["bash"]
