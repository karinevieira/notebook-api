FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /notebook-api
WORKDIR /notebook-api
ADD Gemfile /notebook-api/Gemfile
ADD Gemfile.lock /notebook-api/Gemfile.lock
RUN bundle install
ADD . /notebook-api