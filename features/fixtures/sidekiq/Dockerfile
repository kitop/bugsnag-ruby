ARG RUBY_VERSION
FROM ruby:$RUBY_VERSION

ARG APP_PATH

RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

ARG SIDEKIQ_VERSION
ENV SIDEKIQ_VERSION $SIDEKIQ_VERSION

COPY app/Gemfile $APP_PATH
RUN bundle install

COPY app $APP_PATH

CMD ["bundle", "exec", "sidekiq", "-r", "./app.rb"]