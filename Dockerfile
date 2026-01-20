FROM ruby:3.0-alpine

RUN gem install 3scale_toolbox --no-document

WORKDIR /workspace

CMD ["3scale", "--help","remote", "list"]
