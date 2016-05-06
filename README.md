# BAS Style Kit Documentation

Master: [![Build Status]()](https://semaphoreci.com/antarctica/bas-style-kit-docs)
Develop: [![Build Status]()](https://semaphoreci.com/antarctica/bas-style-kit-docs)

End-user documentation for the BAS Style Kit, a collection of HTML, CSS, and JS components for developing web projects 
consistent with the BAS brand.

**This project uses version 0.1.0 of the Base flavour of the BAS Base Project - Pristine**.

**Note:** Production instances of this project are currently **NOT** supported.

## Overview

This project is part of the BAS Style Kit. It provides documentation on the various features and components the Style 
Kit contains, and these can be used in websites and applications.

This project uses Jekyll, a static website builder, to convert Markdown documents into HTML pages. Continuous 
Integration and Continuous Deployment services are used to trigger Jekyll builds automatically as changes are made.

Please contact the [BAS Web & Applications Team](mailto:webapps@bas.ac.uk) for a further overview of how this works.

## Site structure

* Collection (e.g. `core` - *Core styles*)
    * Topic (e.g. `type` - *Typography*)
        * Section (e.g. `alignment` - *Alignment classes*)

## Section anchors

The methods used by Kramdown and Jekyll differ, therefore Kramdown's automatic anchor generation is disabled and must 
be set manually to use the Jekyll slugify method to ensure navigation links match page anchors.

E.g.

> ## HTML5
> {: #{{ 'HTML5' | slugify }} }
>
> ...

## TODO

* When SSL available:
  * https://github.com/js-cookie/js-cookie/tree/v2.1.0#secure
* Add new set of requirements for static sites (i.e. no Ansible etc.)
    * Semaphore permissions
    * S3 IAM user with inline policy for deploying from CD [1]

[1] AWS IAM inline policy:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ListAllBuckets",
            "Effect": "Allow",
            "Action": [
                "s3:ListAllMyBuckets",
                "s3:GetBucketLocation"
            ],
            "Resource": [
                "arn:aws:s3:::*"
            ]
        },
        {
            "Sid": "MinimalSemaphoreS3DeploymentPermissions",
            "Effect": "Allow",
            "Action": [
                "s3:CreateBucket",
                "s3:ListAllMyBuckets",
                "s3:ListBucket",
                "s3:PutBucketWebsite",
                "s3:PutObject",
                "s3:DeleteObject",
                "s3:GetObjectAcl",
                "s3:PutObjectAcl"
            ],
            "Resource": [
                "arn:aws:s3:::bas-style-kit-docs-prod",
                "arn:aws:s3:::bas-style-kit-docs-prod/*"
            ]
        }
    ]
}
```

## Setup

To bring up a local development environment:

1. Ensure you meet all the
[requirements](https://paper.dropbox.com/doc/BAS-Base-Project-Pristine-Base-Flavour-Usage-ZdMdHHzf8xB4HjxcNuDXa#:h=Environment---local-developmen)
to bring up a local development environment
2. `$ git clone ssh://git@stash.ceh.ac.uk:7999/bsk/bas-style-kit-docs.git`
3. `$ cd bas-style-kit-docs/provisioning/site-development-local`
4. `$ vagrant up`
5. `$ cd ..` (back to *provisioning*)
6. `$ ansible-playbook site-development-local.yml`
7. `$ cd ..` (back to *bas-style-kit-docs*)

To bring up the production environment:

1. Ensure you meet all the
[requirements](https://paper.dropbox.com/doc/BAS-Base-Project-Pristine-Base-Flavour-Usage-ZdMdHHzf8xB4HjxcNuDXa#:h=Environment---production)
to bring up a production environment
2. Checkout this project locally `$ git clone ssh://git@stash.ceh.ac.uk:7999/bsk/bas-style-kit-docs.git`
3. `$ cd bas-geomap-features/provisioning/site-production`
4. `$ terraform plan`
5. `$ terraform apply`
7. `$ cd ../..` (back to *bas-style-kit-docs*)
8. Commit Terraform state to project repository
9. Setup Continuous Integration:
    1. Ensure you have appropriate rights in *SemaphoreCI* to create new projects [1]
    2. Create a new Semaphore project linked to the project repository master branch
    3. Set build settings to:
      * Language: *Ruby*
      * Ruby version: *2.2.2*
      * Database.yml for: *Don't generate*
      * Setup commands (per line):
        * `gem install jekyll --no-document`
      * Thread 1 commands (per line) - renamed to `Jekyll Build`:
        * `cd site`
        * `jekyll build`
10. Setup Continuous Deployment
    1. Ensure you have appropriate rights in *SemaphoreCI* to create new deployments [1]
    2. Create a new deployment linked to the project repository master branch
    3. Choose the:
        * *AWS S3* deployment option
        * *Automatic* deployment strategy
        * *master* deployment branch
        * *Ireland (eu-west-1)* AWS region
        * *site/_site* as the directory to upload
        * Build commands:
            * `gem install jekyll --no-document`
            * `cd site`
            * `jekyll build`
            * `cd ..`
        * *bas-style-kit-docs-prod* S3 bucket
        * *Production* deployment name
        * *https://style-kit.web.bas.ac.uk* deployment URL   
    4. Edit the created deployment profile before deploying
        * Change the `aws s3 sync` command to:
            * `aws s3 sync $S3_DIRECTORY s3://$S3_BUCKET_NAME/ --delete`
    5. Run the deployment
11. Setup CloudFront distribution
    * Use the AWS portal to create a new distribution:
        * Use `bas-style-kit-docs-prod.s3-website-eu-west-1.amazonaws.com` as the origin
        * Use `style-kit.web.bas.ac.uk` as a CNAME
        * Use `star.web.bas.ac.uk` as the SSL certificate
        * Choose to redirect HTTP requests to HTTPS
    * Ask BAS ICT to create a CNAME for `style-kit.web.bas.ac.uk` pointing to domain name of the distribution

[1] Contact the [BAS Web & Applications Team](mailto:webapps@bas.ac.uk) if you don't

## Usage

To apply and view changes you've made to site content in a local development environment:

1. `$ cd bas-style-kit-docs/provisioning/site-development-local`
2. `$ vagrant ssh bas-style-kit-docs-dev-node1`
3. `$ cd /srv/apps/bas-style-kit-docs/site`
4. `$ jekyll serve`
5. Visit [bas-style-kit-docs-dev-node1.v.m:9000](http://bas-style-kit-docs-dev-node1.v.m:9000)

To deploy changes to a production environment:

1. Commit project changes to project repository

Continuous Deployment will automatically detect these changes and deploy them into production.

Note: Due to caching, these changes may not appear immediately.

## Developing

### Version control

This project uses version control. The project repository is located at:
`ssh://git@stash.ceh.ac.uk:7999/bsk/bas-style-kit-docs.git`

Write access to this repository is restricted. Contact the project maintainer to request access.

A read-only mirror of this repository is maintained on GitHub, located at:
`https://github.com/antarctica/bas-style-kit-docs.git`

## Feedback

The maintainer of this project is BAS Web & Applications Team, they can be contacted at: webapps@bas.ac.uk.

This uses issue tracking for feedback. The project issue tracker is located at:
`https://jira.ceh.ac.uk/BSK`

## Acknowledgements

The vast majority of this project is based on the [Bootstrap](http://getbootstrap.com) project.

90% of any credit for this project should go to Boostrap's [authors and contributors](http://getbootstrap.com/about/).

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

