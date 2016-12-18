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

[Git](https://git-scm.com), [Docker](https://www.docker.com/products/docker) and access to the private
[BAS Docker Registry](https://docker-registry.data.bas.ac.uk) [1] are required to build this project locally.

Once the Docker container is running visit: [localhost:9000](http://localhost:9000).

Jekyll will detect any changes to files within `/site` and automatically rebuild the relevent parts of the site.

**On macOS**

```shell
$ brew install git
$ brew cask install docker

$ git clone -b develop https://bitbucket.org/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit-docs

$ docker run -t -i -p 9000:9000 -v $(PWD)/site:/usr/src/app/site --rm --name bsk-docs docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine
```

**On Windows**

* Install Docker and Git

```shell
$ git clone -b develop https://bitbucket.org/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit-docs

$ docker run -t -i -p 9000:9000 -v $PWD\site:/usr/src/app/site --rm --name bsk-docs docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine
```

[1] The first time you use this registry, you will need to authenticate using:

```shell
$ docker login docker-registry.data.bas.ac.uk
```

### Updating dependencies

If new Gem dependencies are introduced, the project Docker image will need to be rebuilt and pushed to the private BAS
Docker Repository [1].

```shell
$ cd bas-style-kit-docs/

$ docker build -t docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine .
$ docker push docker-registry.data.bas.ac.uk/bsk/bas-style-kit-docs:alpine
```

[1] The first time you use this registry, you will need to authenticate using:

```shell
$ docker login docker-registry.data.bas.ac.uk
```

## Continuous Integration

The BAS GitLab instance is used for [Continuous Integration](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/builds)
using settings defined in `.gitlab-ci.yml` using these jobs and stages.

| Stage | Job                       | Trigger                             | Type      | Notes                           |
| ----- | ------------------------- | ----------------------------------- | --------- | ------------------------------- |
| Build | `jekyll-build-staging`    | Commits to the *develop* branch [1] | Automatic | Builds site in development mode |

**Note:** Ensure you commit changes to the `develop` branch only.

[1] To commit to the develop branch, use the BAS GitLab remote [2]:

```shell
$ git add foo.bar
$ git commit -m "..."
$ git push bas-gl
```

[2] To add the BAS GitLab as a Git remote:

```shell
$ cd bas-style-kit-docs/
$ git remote add bas-gl https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs.git
```

## Continuous Deployment

The BAS GitLab instance is used for [Continuous Deployment](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-docs/builds)
using settings defined in `.gitlab-ci.yml` using these jobs and stages.

**Note:** Due to caching, deployed changes may not appear for up to 30 minutes.

| Stage   | Job                      | Trigger                                                       | Type      | Notes                              |
| ------- | ------------------------ | ------------------------------------------------------------- | --------- | ---------------------------------- |
| Package | `package-site-content`   | `jekyll-build-staging` passes                                 | Automatic | -                                  |
| Deploy  | `s3-snapshot-staging`    | `package-site-content` triggered by `jekyll-build-staging`    | Automatic | [1]                                |
| Deploy  | `s3-website-staging`     | `package-site-content` triggered by `jekyll-build-staging`    | Automatic | [2]                                |

[1] And then available from the *development* instance of the BAS Packages Service.

[2] And then available at: [style-kit-testing.web.bas.ac.uk](https://style-kit-testing.web.bas.ac.uk).

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

See the `.gitlab-ci.yml` file for specifics which user to generate credentials for, and what to name these variables.

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

Copyright 2016 NERC BAS.

Unless stated otherwise, all documentation is licensed under the Creative Commons Public License - version 3.
All code is licensed under the MIT license.

Copies of these licenses are included within this project.
