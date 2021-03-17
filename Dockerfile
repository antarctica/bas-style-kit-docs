FROM docker-registry.data.bas.ac.uk/web-apps/infrastructure/bdi/jekyll-image:0.7.0-alpine

LABEL maintainer = "Felix Fennell <felnne@bas.ac.uk>"

# Setup project
WORKDIR /usr/src/app

# Setup dependencies
ADD Gemfile /usr/src/app/
RUN apk add --no-cache build-base libffi && \
    bundle install && \
    apk del build-base

# Patch Jekyll menus (needed until https://github.com/forestryio/jekyll-menus/issues/18 is fixed)
ADD support/gems/jekyll-menus/lib/jekyll/menus.rb /usr/local/bundle/gems/jekyll-menus-0.6.1/lib/jekyll/menus.rb

# Setup runtime
CMD ["serve"]
