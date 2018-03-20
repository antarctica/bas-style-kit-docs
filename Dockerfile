FROM docker-registry.data.bas.ac.uk/web-apps/infrastructure/bdi/jekyll-image:0.3.0-alpine

LABEL maintainer = "Felix Fennell <felnne@bas.ac.uk>"

# Setup project
VOLUME ["/usr/src/app"]
WORKDIR /usr/src/app

# Setup dependencies
ADD Gemfile /usr/src/app/
RUN apk add --no-cache build-base libffi && \
    bundle install && \
    apk del build-base

# Setup runtime
CMD ["serve"]
