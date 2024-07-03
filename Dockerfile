FROM ruby:3.2.2

RUN mkdir /app
WORKDIR /app

RUN apt-get update -qq && \
    apt-get -y install build-essential

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && \
    gem install mysql2 && \
    bundle install --jobs 4

COPY . .

EXPOSE 3000

CMD [ "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]