FROM ruby:2.5.1
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs

ENV INSTALL_PATH /crypto_wallet
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY Gemfile ./
ENV BUNDLE_PATH /box
COPY . .
