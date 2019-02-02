FROM ruby:2.6.0

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get update -qq \
  && apt-get install --yes --no-install-recommends mysql-client nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app
