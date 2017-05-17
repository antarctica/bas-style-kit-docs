# BAS Style Kit Documentation - Change log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

### Added

* [site] Added documentation on image jumbrontons and jumbronton header text overlays
* [site] Added notices for elements awaiting styling
* [site] Copyright year added to footer examples
* [site] Build date in footer
* [site] Year to copyright statement in footer
* [project] New project! - initial version based on 0.1.0 of the Base flavour of the BAS Base Project - Pristine

### Fixed

* [site] Checking the site environment as to whether to show the testing stripe under the nav-bar
* [site] Corrected spelling error in definition 'lists', was definition 'links'
* [site] Updated all 'app-' classes to 'bsk-docs-' for consistency
* [project] Updated references to the BAS Package Service
* [project] Running development Jekyll build job in all but the master branch
* [site] Using DIV tag for beta banner, rather than P tag which is semantically incorrect
* [project] CI tasks now distinguish between development/staging/production, rather than development/production
* [project] Fixed change log file name

### Changed

* [site] Splitting list elements into a separate page in core
* [site] Improving licensing statement in footer
* [project] Updating copyright date
* [project] Refactoring Terraform configuration into a single set of configuration files
* [project] 'develop' branch changed to 'master' branch to fit with GitLab conventions
* [project] 'release' branch added to replace 'master' branch as a stable branch used for production ready updates

### Removed

* [site] Removing un-needed 'back to top' include usage