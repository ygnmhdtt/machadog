FROM ruby:2.4.3

ADD Gemfile* /app/
WORKDIR /app
RUN bundle install --retry 5

ADD . /app/

EXPOSE 3000

CMD ["/app/scripts/start-server.sh"]
