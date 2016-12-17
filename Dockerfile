FROM antarctica/jekyll-image:alpine-0.1.1

# Setup dependencies
ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app
RUN bundle install

# Setup site
VOLUME /usr/src/app/site
WORKDIR /usr/src/app/site

# Setup Jekyll serve
EXPOSE 9000
ENTRYPOINT []
CMD ["jekyll", "serve", "--incremental", "--force_polling"]

# Ideally we wouldn't override the ENTRYPOINT defined by the 'antarctica/jekyll-image' image, however GitLab CI doesn't
# yet support using, or overriding, this property properlly yet. Once this is fixed the 'jekyll' element can be removed
# from the CMD for this image, and from the relevant script in '.gitlab-ci.yml'.
