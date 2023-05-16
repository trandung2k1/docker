FROM ruby:3.1.2-buster

WORKDIR /app

COPY . .

RUN gem install puma sinatra

EXPOSE 3000

CMD ruby app.rb