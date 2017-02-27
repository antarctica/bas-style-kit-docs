# BAS Style Kit Documentation

Master: [![Build Status](https://semaphoreci.com/api/v1/antarctica/bas-style-kit-docs/branches/master/badge.svg)](https://semaphoreci.com/antarctica/bas-style-kit-docs)
Develop: [![build status](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/badges/develop/build.svg)](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/commits/develop)

End-user documentation for the BAS Style Kit, documenting what it includes, and how to use it to build websites and
web-applications.

This documentation is built as a static website, using Jekyll.

**Note:** Production instances of this project are currently **NOT** supported.

## Editing

See the relevant documentation for how this documentation is put together:

* [site structure](docs/editing/site-structure.md)
* [topics](docs/editing/topics.md)
* [topic sections](docs/editing/topic-sections.md)
* [jira issues plugin](docs/editing/plugin-jira-issues.md)

## Developing

[Git](https://git-scm.com), [Docker](https://www.docker.com/products/docker) [1] and access to the private
[BAS Docker Registry](https://docker-registry.data.bas.ac.uk) [2] are required to build this project locally.

```shell
$ git clone -b develop https://bitbucket.org/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit

$ docker-compose up
```

This will bring up a single docker container, running the `jekyll serve` in a way that will automatically rebuild parts
of the documentation when changes are made to files `/site`.

When finished, exit the Docker Compose using `ctrl` + `c`, then run `docker-compose down`.

[1] To install Git and Docker:

**On macOS**

```shell
$ brew install git
$ brew cask install docker
```

**On Windows**

* Install Docker and Git using their respective installers

[2] The first time you use this registry, you will need to authenticate using:
`docker login docker-registry.data.bas.ac.uk`

### Updating dependencies

If new Gem dependencies are introduced, the project Docker image will need to be rebuilt and pushed to the private BAS
Docker Repository [1].

The current date is used as part of the project Docker image tag to ensure the latest version is used by all developers.
Before rebuilding this image you **MUST** update this tag value in `docker-compose.yml` and `.gitlab-ci.yml` first.

```shell
$ cd bas-style-kit/

$ docker-compose build app
$ docker-compose push app
```

[1] The first time you use this registry, you will need to authenticate using:
`docker login docker-registry.data.bas.ac.uk`

## Continuous Integration

The BAS GitLab instance is used for
[Continuous Integration](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/pipelines) using settings defined in
`.gitlab-ci.yml`.

## Continuous Deployment

The BAS GitLab instance is used for [Continuous Deployment](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/builds)
using settings defined in `.gitlab-ci.yml`.

After deployment changes pushed to the *develop* branch will be available at: https://style-kit-testing.web.bas.ac.uk.

**Note:** Due to caching, deployed changes may not appear for up to 30 minutes.

## Provisioning staging environment

[Terraform](https://terrafrom.io) [1] and access to the [BAS AWS](https://bitbucket.org/antarctica/bas-aws) and
[BAS Core Domains](https://bitbucket.org/antarctica/bas-core-domains) projects are required to provision resources
for this project [2].

Provisioned resources are defined in Terraform configuration files and arranged in multiple environments:

* `provisioning/site-all` - defines resources shared by all environments
* `provisioning/site-staging` - defines resources used by the staging environment

Each environment is similar, but functions independently, except for the `site-all` environment, which all environments
depend on. The instructions below show how to configure the staging environment, but they apply equally to any other.

**Note:** As all environments depend on resources defined in the `site-all` environment, you **MUST** run provisioning
for this first.

```shell
$ cd provisioning/site-all
$ terraform plan
$ terraform apply

$ cd ../site-staging
$ terraform plan
$ terraform apply
```

During provisioning, an AWS IAM user will be created with least-privilege permissions to enable Continuous Deployment.
Access credentials for this user will need to generated manually through the AWS Console and set as secret variables.

See the `.gitlab-ci.yml` file for specifics on which user to generate credentials for, and what to name them.

**Note:** Commit all Terraform state files to this repository.

[1] https://www.terraform.io/downloads.html

[2] Contact the [BAS Web & Applications Team](mailto:webapps@bas.ac.uk) if you don't yet have access.

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

Copyright 2017 NERC BAS.

Unless stated otherwise, all documentation is licensed under the Creative Commons Public License - version 3.
All code is licensed under the MIT license.

Copies of these licenses are included within this project.
