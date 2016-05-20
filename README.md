# BAS Style Kit Documentation

Master: [![Build Status](https://semaphoreci.com/api/v1/antarctica/bas-style-kit-docs/branches/master/badge.svg)](https://semaphoreci.com/antarctica/bas-style-kit-docs)
Develop: [![Build Status](https://semaphoreci.com/api/v1/antarctica/bas-style-kit-docs/branches/develop/badge.svg)](https://semaphoreci.com/antarctica/bas-style-kit-docs)

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

**Note:** An anchor is required for any heading which should be included in the table of contents for each page.

## Section metadata

Each section should include metadata to indicate:

* the phase of development for the style/component (i.e. live (stable), experimental (alpha/beta), deprecated)
* the version at which the relevant phase was reached (live since version x.x.x, etc.)
* where the style/component came from
* whether the style/component is included in the core Style Kit release or if its optional (e.g. devicons, data-tables)

The structure of this metadata is:

```markdown
## Section title
{: #{{ 'Section title' | slugify }} }

* List of metadata elements
{: .bsk-docs-section-metadata }
```

### section phases

The following phases can be used:

* Alpha - where a style/component is under construction, or newly imported and not yet polished and intended for use
* Beta - where a style/component is in its final form with only minor corrections/tweaks before ready for general use
* Live - where a style/component is well formed, polished and intended for everyday use
* Deprecated - where a style/component is no longer needed and will be removed in a future version

Note: When using the *deprecated* phase, use the form 'Deprecated since version x.y.z, to be removed in version x.y.z'.

A style/component is expected to move through these phases, but may loop through the Alpha-Beta-Live phases numerous
times. A style/component may be multiple phases, providing these are in different versions.

E.g. A component *Foo* is developed as part of version `0.2.0`, and then updated with a new design in version `0.3.0`

* When the component is first developed it will be in *Alpha* only (i.e. *Alpha since version 0.2.0-alpha*)
* The design is refined and moves to the *Beta* phase only (i.e. *Beta since version 0.2.0-beta*)
* The component is now released and ready for use in the *Live* phase (i.e. *Live since version 0.2.0*)
* Changes are proposed to the component, these are trailed as an *Alpha* phase (i.e. *Live since version 0.2.0, Alpha since version 0.3.0-alpha*)
* The changes are agreed and further developed in a *Beta* phase (i.e. *Live since version 0.2.0, Beta since version 0.3.0-beta*)
* The component is now updated and returns to being live only again (i.e. *Live since version 0.3.0*)

Note: This makes it look like the component was only ever available since *0.3.0* however that's true as it will be
shown in its current `0.3.0` state. I.e. It would be misleading to indicate the component could be used in `0.2.0`.

The syntax of a phase is:

```markdown
* <span class="label label-phase-PHASE">PHASE</span> since version **x.y.z**
```

E.g.

```markdown
* <span class="label label-phase-alpha">Alpha</span> since version **0.2.0-alpha**
```

Where a style/component is in two phases use two definitions:

E.g.

```markdown
* <span class="label label-phase label-phase-live">Live</span> since version **0.2.0**
* <span class="label label-phase label-phase-alpha">Alpha</span> since version **0.3.0-alpha**
```

### Section origin

Use one of:

* Bootstrap {style|component}
* Customised Bootstrap {style|component}
* Third Party {style|component}
* Customised Third Party {style|component}
* Native {style|component}

E.g.

```markdown
* Customised Bootstrap style
```

### Section availability

Use one of:

```markdown
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
```

OR

```markdown
* {: .text-danger } <i class="fa fa-exclamation-circle" aria-hidden="true"></i> Not included in Core Style Kit
```

## Topic table of contents

Include the following snippet immediately after the front matter of a topic page:

```markdown
## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}
```

**Note:** If a topic page uses HTML, this won't work and a manually created list will be required instead.

## Topic sorting

For some collections sorting is used to control the order in which topics are presented in topic indexes, and the drop
down navigation. By default collections sort topics in file order (i.e. `1-numbers`, `and-then-letters`).

Collections using topic sorting:

* Start

A property `sort_index`, defined as front-matter, is used to control the order of topics, with `0` being first.
Any topic without this property are listed first, therefore all topics **must** define this property.



Example front-matter:

```
---
sort_index: 2
title: Foo
---
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

TO bring up the staging environment:

1. Ensure you meet all the
[requirements](https://paper.dropbox.com/doc/BAS-Base-Project-Pristine-Base-Flavour-Usage-ZdMdHHzf8xB4HjxcNuDXa#:h2=Environment---staging-(static-)
2. Checkout this project locally `$ git clone ssh://git@stash.ceh.ac.uk:7999/bsk/bas-style-kit-docs.git`
3. `$ cd bas-style-kit-docs/provisioning/site-staging`
4. `$ terraform plan`
5. `$ terraform apply`
6. `$ cd ../..` (back to *bas-style-kit-docs*)
7. Commit Terraform state files to project repository
9. Complete the relevant
[setup tasks](https://paper.dropbox.com/doc/BAS-Base-Project-Pristine-Base-Flavour-Usage-ZdMdHHzf8xB4HjxcNuDXa#:h2=Environment---staging-(static-)
with these settings:
    * For CloudFront distribution:
        * S3 bucket name: `bas-style-kit-docs-stage`
        * Alternate domain names (CNAMEs):
            * `style-kit-testing.web.bas.ac.uk`
            * `stylekit-testing.web.bas.ac.uk`
        * SSL certificate: `star-web-bas-ac-uk`
10. Ask BAS ICT to create a CNAMES for:
    * `style-kit-testing.web.bas.ac.uk` pointing to the domain name of the distribution
    * `stylekit-testing.web.bas.ac.uk` pointing to `style-kit-testing.web.bas.ac.uk`

To bring up the production environment:

[TODO]

## Usage

To apply and view changes you've made to site content in a local development environment:

1. `$ cd bas-style-kit-docs/provisioning/site-development-local`
2. `$ vagrant ssh bas-style-kit-docs-dev-node1`
3. `$ cd /srv/apps/bas-style-kit-docs/site`
4. `$ jekyll serve`
5. Visit [bas-style-kit-docs-dev-node1.v.m:9000](http://bas-style-kit-docs-dev-node1.v.m:9000)

To deploy changes to the staging environment:

1. Commit project changes to project repository

Continuous Deployment will automatically detect these changes and deploy them into staging.

Note: Due to caching, these changes may not appear immediately.

To deploy changes to the production environment:

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

