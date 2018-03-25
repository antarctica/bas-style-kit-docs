# BAS Style Kit Documentation

End-user documentation for the BAS Style Kit, documenting what it includes and how to use it to build websites and
web-applications. Built using Jekyll as a static website.

## Editing

See the relevant documentation for how this documentation is put together:

* [site structure](docs/editing/site-structure.md)
* [topics](docs/editing/topics.md)
* [topic sections](docs/editing/topic-sections.md)

## Developing

[Git](https://git-scm.com), [Docker](https://www.docker.com/community-edition), Docker Compose and access to the private
[BAS Docker Registry](https://docker-registry.data.bas.ac.uk) [1] are required to build this project locally.

Source for this project is available from two repositories:

* BAS GitLab [Private] - https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-docs
* BAS GitHub [Public] - https://github.com/antarctica/bas-style-kit-docs

**Note:** The Docker image for this project relies on a private base image, and therefore cannot be built without access
to the BAS private Docker Registry.

To build and run a local copy of this project:

```shell
$ cd bas-style-kit-docs
$ docker-compose up
```

This will bring up a Docker container running `jekyll serve` and trigger a full site build.

Incremental building is enabled, meaning single files are re-generated when changed. If editing a file has other
side-effects (such as changing global menu items), a full site re-build will be needed by re-launching the container.

When finished, exit the Docker container using `ctrl` + `c`, then run bring down Docker Compose, `docker-compose down`.

[1] The first time you use this registry, you will need to authenticate using:
`docker login docker-registry.data.bas.ac.uk`

### Updating dependencies

If new Gem dependencies are introduced, the project Docker image will need to be rebuilt and pushed to the private BAS
Docker Repository [1].

The current date is used as part of the project Docker image tag to ensure the latest version is used by all developers.
Before rebuilding this image you **MUST** update this tag value in `docker-compose.yml` and `.gitlab-ci.yml` first.

```shell
$ cd bas-style-kit-docs/

$ docker-compose build app
$ docker-compose push app
```

[1] The first time you use this registry, you will need to authenticate using:
`docker login docker-registry.data.bas.ac.uk`

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

## Branching model

There is only one long-term branch in this repository, *master*, which represents a working, stable, version of the
project, but is not necessarily the released version.

All changes are made in other branches and merged into the Master branch when ready. Multiple branches may be active at
any one time, and **MUST** therefore be rebased on *master* before they are merged.

When required, a release is made using a release branch. This is then merged with *master* and tagged.
This triggers the relevant deployment tasks to release a new version.

## Provisioning

[Terraform](https://terrafrom.io) [1] and access to the [BAS AWS](https://bitbucket.org/antarctica/bas-aws) and
[BAS Core Domains](https://bitbucket.org/antarctica/bas-core-domains) projects are required to provision resources
for this project [2].

Provisioned resources are defined in Terraform configuration files contained in `provisioning/terraform`.

```shell
$ cd provisioning/terraform
$ terraform plan
$ terraform apply
```

During provisioning, an AWS IAM user will be created with least-privilege permissions to enable Continuous Deployment.
Access credentials for this user will need to generated manually through the AWS Console and set as secret variables.

See the `.gitlab-ci.yml` file for specifics on which user to generate credentials for, and what to name them.

**Note:** Commit all Terraform state files to this repository.

[1] https://www.terraform.io/downloads.html

[2] Contact the [BAS Web & Applications Team](mailto:webapps@bas.ac.uk) if you don't yet have access.

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
