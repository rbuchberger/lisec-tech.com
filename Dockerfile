from jekyll/jekyll:4

WORKDIR /tmp
ENV BUNDLER_VERSION 2.2.12
ENV NOKOGIRI_USE_SYSTEM_LIBRARIES 1
ADD ./Gemfile /tmp/
ADD ./Gemfile.lock /tmp/

run gem install bundler -i /usr/gem -v 2.2.12
run bundle install

COPY . ./

CMD ["jekyll", "build"]
