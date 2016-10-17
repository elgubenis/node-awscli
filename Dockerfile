FROM alpine:3.4
MAINTAINER Daniil Pokrovsky

RUN apk add --no-cache \
  bash \
  curl \
  less \
  git \
  groff \
  python \
  nodejs \
  py-pip && \
  pip install --upgrade awscli s3cmd && \
  mkdir /root/.aws

RUN npm set progress=false && \
  npm install -g --progress=false yarn

VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments.
ENTRYPOINT ["bash"]
