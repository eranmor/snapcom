#FROM ubuntu:20.04

FROM ruby:2.7.2 AS drkiq-development

ENV DEBIAN_FRONTEND=noninteractive

    && sudo apt install -y ruby libssl-dev libreadline-dev

RUN rbenv install 2.7.2

RUN yarn install

RUN git clone https://gitlab.com/snaptravel/infra-takehome.git

RUN gem install bundler -v 2.1.4

RUN bundle install

RUN bundle exec rails server -b 0.0.0.0 -p 5000



