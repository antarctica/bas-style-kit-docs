FROM antarctica/jekyll-image:alpine-0.1.0

# Setup dependencies
ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app
RUN bundle install

# Setup site
VOLUME /usr/src/app/site
WORKDIR /usr/src/app/site

# Setup Jekyll serve
EXPOSE 9000
ENTRYPOINT ["jekyll"]
CMD ["serve", "--incremental", "--force_polling"]
