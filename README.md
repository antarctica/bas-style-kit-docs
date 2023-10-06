# BAS Style Kit Documentation

End-user documentation for the BAS Style Kit.

Details what it is and how to use it to build websites and applications. Built as a static website using Jekyll.

## Usage

### Editing

See the relevant documentation for how documentation is organised and managed:

* [site structure](docs/editing/site-structure.md)
* [topics](docs/editing/topics.md)
* [topic sections](docs/editing/topic-sections.md)

### Docker Compose

These instructions show how to setup a development environment for the Style Kit documentation.

Source code is available from two repositories:

* [BAS GitLab](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-docs) (canonical, private)
* [BAS GitHub](https://github.com/antarctica/bas-style-kit-docs) (read-only mirror, public)

To create a local development environment using the *GitLab* repository [1]:

```
$ git clone https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-docs.git
$ cd bas-style-kit-docs/
$ docker-compose pull
$ docker-compose up
```

To create a local development environment using the *GitHub* repository:

```
$ git clone https://github.com/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit-docs/
$ docker-compose build
$ docker-compose up
```

This will launch a single container to build the site using `jekyll serve`, with incremental building enabled.

Visit [localhost:9000](http://localhost:9000) to access a local version of the documentation site.

[1] If you have access to the [BAS GitLab](https://gitlab.data.bas.ac.uk) instance, you will need to authenticate to use
the BAS private Docker registry initially:

```
$ docker login docker-registry.data.bas.ac.uk
```

### Simulating production environment

To simulate a production build of the documentation site, add this environment variable to the `app` service in
`docker-compose.yml`:

```yaml
---
version: '2'

services:
  app:
    ...
    environment:
      - JEKYLL_ENV=production
```

**Note:** You will need to delete `site/_site/` to force a global site rebuild, as incremental building is enabled.

## Developing

### Updating dependencies

If new Gem dependencies are introduced, the project Docker image will need to be rebuilt and pushed to the private BAS
Docker Repository [1]. A new `Gemfile.lock` file will also need to be generated for use with
[Dependency vulnerability scanning](#dependency-vulnerability-scanning).

The current date is used as part of the project Docker image tag to ensure the latest version is used by all developers.
Before rebuilding this image you **MUST** update this tag value in `docker-compose.yml` and `.gitlab-ci.yml` first.

```shell
# build image to install updated dependencies
$ docker-compose build app
$ docker-compose push app # gets the date from the tag used in the docker-compose.yml

# copy Gemfile.lock into project from the updated image
$ docker-compose run --entrypoint="" app ash
$ cd ..
$ bundle install
$ mv Gemfile.lock site/
$ exit
$ docker-compose down
$ mv site/Gemfile.lock ./
```

[1] You will need to authenticate to use the BAS private Docker registry initially:

```
$ docker login docker-registry.data.bas.ac.uk
```

## Continuous Integration

The BAS GitLab instance is used for
[Continuous Integration](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-docs/pipelines) using settings defined
in `.gitlab-ci.yml`.

## Continuous Deployment

To deploy changes it is likely that the docker images will need to be updated. The following commands should make that process easy:
```shell
# build image to install updated dependencies
$ docker-compose build app
$ docker-compose push app
```
Alternatively manually tagging and pushing the new image will work as well. The current date is used as part of the project Docker image tag to ensure the latest version is used by all developers.
Before rebuilding this image you **MUST** update this tag value in `docker-compose.yml` and `.gitlab-ci.yml` first.

The BAS GitLab instance is used for
[Continuous Deployment](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-docs/builds) using settings defined in
`.gitlab-ci.yml`.

Changes pushed to the *master* branch will be available at: https://style-kit-testing.web.bas.ac.uk.

Tagged commits will be available at: https://style-kit.web.bas.ac.uk.

**Note:** Due to caching, deployed changes may not appear for up to 1 hour.

## Branching model

There is only one long-term branch in this repository, *master*, which represents a working, stable, version of the
project, but is not necessarily the released version.

All changes are made in other branches and merged into the Master branch when ready. Multiple branches may be active at
any one time, and **MUST** therefore be rebased on *master* before they are merged.

When required, a release is made using a release branch. This is then merged with *master* and tagged.
This triggers the relevant deployment tasks to release a new version.

## Provisioning

[Git](https://git-scm.com), [Terraform](https://terrafrom.io) and permissions to the
[BAS AWS](https://gitlab.data.bas.ac.uk/WSF/bas-aws) environment are required to provision resources for this project.

```
$ git clone https://github.com/antarctica/bas-style-kit-docs.git
$ cd bas-style-kit-docs/provisioning/terraform
$ docker-compose run terraform
$ terraform init
$ terraform validate
$ terraform fmt
$ terraform apply
$ exit
$ docker-compose down
```

During provisioning, an AWS IAM user will be created with least-privilege permissions to enable Continuous Deployment.

Access credentials for this user will need to generated manually through the AWS Console and set as secret variables
within GitLab. See the `.gitlab-ci.yml` file for specifics on how to do this.

**Note:** Commit all Terraform state files to this repository.

## Issue tracking

This project uses [issue tracking](https://trello.com/b/0Mhzizpk/bas-style-kit) to manage development of new
features/improvements and reporting bugs.

## Feedback

The maintainer of this project is the BAS Web & Applications Team, they can be contacted through the
[BAS Service Desk](mailto:servicedesk@bas.ac.uk)

## Acknowledgements

The vast majority of this project is based on the [Bootstrap](http://getbootstrap.com) project.

50% of any credit for this project should go to Boostrap's [authors and contributors](http://getbootstrap.com/about/).

## Licence

This project is a derivative of the [Bootstrap framework](http://getbootstrap.com) and includes additional code unique
to this project.

See [Licence.md](/license.md) for more information.
