FROM alpine:3.4
MAINTAINER Daniil Pokrovsky (Linus Gubenis)

RUN apk add --no-cache \
  bash \
  curl \
  git \
  python \
  nodejs \
  openssh-client \
  py-pip && \
  pip install --upgrade awscli \
  mkdir /root/.aws

# Set up the command arguments.
ENTRYPOINT ["bash"]
