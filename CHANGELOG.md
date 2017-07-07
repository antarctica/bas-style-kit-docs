# BAS Style Kit Documentation - Change log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

### Changed

* Checks for the site environment check if the site *isn't* production, rather than if it *is* staging

### Removed

* Unnecessary local styles that have been replaced by improvements or additions to the Style Kit

## v1.0.1 - 01/06/2017

### Added

* Documentation on how locally test a production build of the static site

### Fixed

* Forgot to bump prod version number

## v1.0.0 - 26/05/2017

### Added

* [site] Added documentation on image jumbrontons and jumbronton header text overlays
* [site] Added notices for elements awaiting styling
* [site] Copyright year added to footer examples
* [site] Build date in footer
* [site] Year to copyright statement in footer
* [site] Documentation section on navbar items
* [site] Additional markdown examples for referencing images from the same website
* [site] Accessibility resources section
* [site] What's New page, to document key changes between versions
* [project] New project! - initial version based on 0.1.0 of the Base flavour of the BAS Base Project - Pristine
* [project] internal documentation updated over restrictions for using the topic-metadata snippet

### Fixed

* [site] Checking the site environment as to whether to show the testing stripe under the nav-bar
* [site] Corrected spelling error in definition 'lists', was definition 'links'
* [site] Updated all 'app-' classes to 'bsk-docs-' for consistency
* [site] Modifier classes used in split button example
* [site] Fixing typo in sidebar documentation
* [project] Updated references to the BAS Package Service
* [project] Running development Jekyll build job in all but the master branch
* [site] Using DIV tag for beta banner, rather than P tag which is semantically incorrect
* [project] CI tasks now distinguish between development/staging/production, rather than development/production
* [project] Fixed change log file name
* [project] Corrected copyright date in license file
* [project] CI badge corrected
* [project] Documentation revision link variable was incorrectly referenced

### Changed

* [site] Splitting list elements into a separate page in core
* [site] Improving licensing statement in footer
* [site] Updating SRI values
* [site] Changing highlighted sections for drop-down component to improve discoverability of (split-)button drop-downs
* [site] Removing warnings for using buttons and drop-down menus in input groups
* [site] Reducing warning for using split button drop-down menus in input groups
* [site] Removing warning for using brand text and images within a navbar
* [site] Adopting fixed width icons across the documentation site
* [site] Removing margin from topic table of contents items
* [project] Updating copyright date
* [project] Refactoring Terraform configuration into a single set of configuration files
* [project] 'develop' branch changed to 'master' branch to fit with GitLab conventions
* [project] tagged master branch commits replace 'master' branch as the source for production ready updates

### Removed

* [site] Removing un-needed 'back to top' include usage
