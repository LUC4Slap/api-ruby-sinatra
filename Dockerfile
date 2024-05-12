# Dockerfile

FROM ruby:3.1.1

WORKDIR /code
COPY . /code
RUN gem install puma -v 6.0.0
RUN gem install sinatra
RUN gem install sinatra-contrib
RUN gem install mongoid
# RUN bundle install

EXPOSE 4567
# , "rackup", "--host", "0.0.0.0", "-p", "4567"
CMD ["ruby", "server.rb"]
