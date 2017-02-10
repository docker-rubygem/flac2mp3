FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.2

RUN gem install flac2mp3 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["flac2mp3"]
CMD ["--help"]
