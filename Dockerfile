FROM ruby:2.5

ADD . /pythonacademy/

WORKDIR /pythonacademy

RUN gem install bundle
RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0"]
