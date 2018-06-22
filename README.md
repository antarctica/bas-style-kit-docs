# BAS Style Kit Documentation

End-user documentation for the BAS Style Kit, documenting what it includes and how to use it to build websites and
web-applications. Built using Jekyll as a static website.

## Editing

See the relevant documentation for how documentation is organised and managed:

* [site structure](docs/editing/site-structure.md)
* [topics](docs/editing/topics.md)
* [topic sections](docs/editing/topic-sections.md)

## Usage

### Docker Compose

[Git](https://git-scm.com), [Docker](https://www.docker.com/community-edition) and
[Docker Compose](https://docs.docker.com/compose/) are required to build this project locally.

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
$ git clone https://github.com/antarctica/bas-style-kit-doc.git
$ cd bas-style-kit-docs/
$ docker-compose build
$ docker-compose up
```

This will launch a single container to build the site using `jekyll serve`.

Incremental building is enabled, meaning single files are re-generated when changed. If editing a file has other
side-effects (such as changing global menu items), a full site re-build will be needed by re-launching the container.

When finished, exit the Docker container using `ctrl` + `c`, then run bring down Docker Compose, `docker-compose down`.

Visit [localhost:9000](http://localhost:9000) to access a local version of the documentation site.

[1] If you have access to the [BAS GitLab](https://gitlab.data.bas.ac.uk) instance, you will need to authenticate to use
the BAS private Docker registry initially:

```
$ docker login docker-registry.data.bas.ac.uk
```

### Simulating production environment

To simulate a production build of the documentation site add this environment variable to the `app` service in
`docker-compose.yml`:

```yaml
---
version: '2'

services:
  app:
    ...
    ports:
      - "9000:9000"
    environment:
      - JEKYLL_ENV=production
```

**Note:** You will need to delete `site/_site/` as incremental building is used by default.

## Developing

### Updating dependencies

If new Gem dependencies are introduced, the project Docker image will need to be rebuilt and pushed to the private BAS
Docker Repository [1].

The current date is used as part of the project Docker image tag to ensure the latest version is used by all developers.
Before rebuilding this image you **MUST** update this tag value in `docker-compose.yml` and `.gitlab-ci.yml` first.

```
$ git clone https://github.com/antarctica/bas-style-kit-doc.git
$ cd bas-style-kit-docs/
$ docker-compose build app
$ docker-compose push app
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

[Git](https://git-scm.com), [Docker](https://www.docker.com/community-edition) and
[Docker Compose](https://docs.docker.com/compose/) are required to provision this project.

 will also need access to the [BAS AWS](https://bitbucket.org/antarctica/bas-aws) and
[BAS Core Domains](https://bitbucket.org/antarctica/bas-core-domains) projects. Contact the [BAS Web & Applications Team](mailto:servicedesk@bas.ac.uk) if you don't yet have access.

```
$ git clone https://github.com/antarctica/bas-style-kit-doc.git
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
Access credentials for this user will need to generated manually through the AWS Console and set as secret variables.

See the `.gitlab-ci.yml` file for specifics on which user to generate credentials for, and what to name them.

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
