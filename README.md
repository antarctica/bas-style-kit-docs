# BAS Style Kit Documentation

Master: [![Build Status](https://semaphoreci.com/api/v1/antarctica/bas-style-kit-docs/branches/master/badge.svg)](https://semaphoreci.com/antarctica/bas-style-kit-docs)
Develop: [![build status](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/badges/develop/build.svg)](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/commits/develop)

End-user documentation for the BAS Style Kit, documenting what it includes, and how to use it to build websites and
web-applications.

This documentation is built as a static website, using Jekyll.

**This project uses version 0.1.0 of the Base flavour of the BAS Base Project - Pristine**.

**Note:** Production instances of this project are currently **NOT** supported.

**Note:** This project is currently being updated to use Docker, and switch CI/CD provider to GitLab.

## Editing

See the relevant documentation for how this documentation is put together:

* [site structure](docs/editing/site-structure.md)
* [topics](docs/editing/topics.md)
* [topic sections](docs/editing/topic-sections.md)
* [jira issues plugin](docs/editing/plugin-jira-issues.md)

## Setup

**Note:** This information is out of date and should not be relied upon.

To bring up the staging environment:

1. Ensure you meet all the
[requirements](https://paper.dropbox.com/doc/BAS-Base-Project-Pristine-Base-Flavour-Usage-ZdMdHHzf8xB4HjxcNuDXa#:h2=Environment---staging-(static-)
2. Checkout this project locally `$ git clone ssh://git@stash.ceh.ac.uk:7999/bsk/bas-style-kit-docs.git`
3. `$ cd bas-style-kit-docs/provisioning/site-staging`
4. `$ terraform plan`
5. `$ terraform apply`
6. `$ cd ../..` (back to *bas-style-kit-docs*)
7. Commit Terraform state files to project repository
8. Complete the relevant
[setup tasks](https://paper.dropbox.com/doc/BAS-Base-Project-Pristine-Base-Flavour-Usage-ZdMdHHzf8xB4HjxcNuDXa#:h2=Environment---staging-(static-)
with these settings:
    * For Semaphore:
        * Add these environment variables:
            * `JEKYLL_ENV`
                * Set to: `production`
            * `JEKYLL_JIRA_ISSUE_PLUGIN_ACCOUNT_PASSWORD`
                * The value for this variable is secret, contact the
                [BAS Web & Applications Team](mailto:webapps@bas.ac.uk) for access

## Usage

**Note:** This information is out of date and should not be relied upon.

To deploy changes to the staging environment:

1. Commit project changes to project repository

Continuous Deployment will automatically detect these changes and deploy them into staging.

Note: Due to caching, these changes may not appear immediately.

To deploy changes to the production environment:

1. Commit project changes to project repository

Continuous Deployment will automatically detect these changes and deploy them into production.

Note: Due to caching, these changes may not appear immediately.

## Developing

[Docker](https://www.docker.com/products/docker) and access to the private
[BAS Docker Registry](https://docker-registry.data.bas.ac.uk) are required to build this project locally.

On macOS:

```shell
$ brew install git
$ brew cask install docker
$ docker login docker-registry.data.bas.ac.uk

$ git clone -b develop https://bitbucket.org/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit-docs

$ docker run -t -i -p 9000:9000 -v $(PWD)/site:/usr/src/app/site --rm --name bsk-docs docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine
```

Visit [localhost:9000](http://localhost:9000)

**Note:** On Windows install Docker and Git, then start the docker container using:

On Windows:

* Install Docker and Git

```shell
$ docker login docker-registry.data.bas.ac.uk

$ git clone -b develop https://bitbucket.org/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit-docs

$ docker run -t -i -p 9000:9000 -v $PWD\site:/usr/src/app/site --rm --name bsk-docs docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine
```

### Updating dependencies

If new Gem dependencies are introduced, the project Docker image will need to be rebuilt and pushed to the private BAS
Docker Repository.

```shell
$ cd bas-style-kit-docs/
$ docker login docker-registry.data.bas.ac.uk

$ docker build -t docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine .
$ docker push docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine
```





## Feedback

The maintainer of this project is BAS Web & Applications Team, they can be contacted at:
[webapps@bas.ac.uk](mailto:webapps@bas.ac.uk).

The issue tracker for this project is available at: https://trello.com/b/0Mhzizpk/bas-style-kit

## Acknowledgements

The vast majority of this project is based on the [Bootstrap](http://getbootstrap.com) project.

90% of any credit for this project should go to Bootstrap's [authors and contributors](http://getbootstrap.com/about/).

The original Bootstrap licensing statement is shown below,
see their original `LICENSE-BOOTSTRAP-MIT` further licensing information.

> Code and documentation copyright 2011-2015 Twitter, Inc. Code released under
[the MIT license](https://github.com/twbs/bootstrap/blob/master/LICENSE).
Docs released under [Creative Commons](https://github.com/twbs/bootstrap/blob/master/docs/LICENSE).

The authors of this project are incredibly grateful for their work.

## Licence

Copyright 2016 NERC BAS.

Unless stated otherwise, all documentation is licensed under the Creative Commons Public License - version 3.
All code is licensed under the MIT license.

Copies of these licenses are included within this project.
