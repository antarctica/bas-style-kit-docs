# BAS Style Kit Documentation - Change log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

### Removed

* Support for warning validation state in forms

### Added

* Oracle Apex theme for the Style Kit
* 'problem with this service' pattern
* 'service unavailable' pattern
* 'Page not found' pattern
* Favicon core component
* Dropzone, drag and drop file upload JavaScript component
* Full support for interactive tabs and pills
* Full support for using modals
* Full support for using pop-overs and tool-tips
* Full support for tab navigation
* BAS theme colours
* BAS facility colours
* EPS source files for the BAS logo and roundel
* Icons for development phases
* Updating to Style Kit Jekyll theme 0.8.0 and Style Kit 0.5.0
* Adding Font Awesome 5 Pro as an optional icon family
* Updating navigation launcher to include link to Style Kit Testbed
* Guidance to not use primary variants of components for non-primary actions
* Guidance defining how to use the navigation launcher as part of a navbar
* Automatic scanning of dependencies using Snyk

### Fixed

* Updating feedback form to use BAS Feedback API
* Adding variant warning to headers
* Changing headers used in examples to use header classes to prevent being added to the page table of contents
* Changing headers used in block alerts to use header classes to prevent being added to the page table of contents
* Correcting reference to Pug templates NPM package
* Correcting documentation
* Simplifying documentation
* Improving internal consistency of alerts
* Improving documentation consistency
* Improving Dockerfile

### Changed

* Renaming 'examples' to 'more' to reflect it's more general nature
* Changing reference to Style Kit NPM package
* Deprecating list groups
* Deprecating inverse jumbotron
* Deprecating buttons in input-groups
* Rewriting and standardising interactive component documentation
* Updating conventional context icons, the ‘info’ icon is now square and the ‘success’ icon is no longer enclosed
* Updating 404 page to use 'page not found' pattern
* Updating BSK version parameter in feedback page to use BSK Version JS variable
* Updating to latest Terraform and Terraform provider versions
* Including Gem/bundler lock file in project

### Removed

* References to Bootstrap plugins we never officially supported (affix, carousel and scroll-spy)
* References to Font Awesome as a bundled part of the Style Kit
* Deprecated 'wells' component
* Outdated documentation

## v1.4.0 - 31/07/2018

### Added

* More formal, visible, information on integrations of the Style Kit as themes or templates
* Documentation on Pug templates

### Fixed

* License instead of Licence typo
* Class typo on alert links in distribution and colours pages
* Class example for the global prefix
* Links to production documentation site using the wrong variable
* Formatting for NPM package and Jekyll theme installation instructions
* URLs to dependencies

### Changed

* Improved overview text for colours
* Improved SRI value information to clarify which files need a SRI value specified
* Improving getting started information to include JS files
* Reworking existing Jekyll theme information into new themes and template sections

## v1.3.0 - 07/07/2018

### Changed [BREAKING]

* Site rebuilt using the BAS Style Kit Jekyll Theme
* Alert plugin rewritten as an include
* Project relicensed under the OGL

### Removed [BREAKING!]

* Basic and standard templates removed as these didn't really work well in the way they're currently presented

### Added

* guidance for Style Kit 0.4.0 changes and additions
* How to use Cookie Notice alerts with a fluid container
* Guidance on using IE standards mode headers

### Fixed

* Documentation typos
* Packages Service bucket name in CD

### Changed

* Updated to Jekyll 3.8.3
* Updated to BAS Jekyll Docker image 0.4.0
* Updated to BAS Style Kit Jekyll Theme 0.5.0
* Updated to Terraform 11.3
* Updated to use per-domain ACM certificates for CloudFront distributions
* Header image classes updated
* Navbar brand image examples updated
* Browser support section updated
* Updating colour scheme references
* Site development phase updated to Live
* ToC include switched to a liquid implementation rather than karmadown as this can be used in layouts
* Topics updated to use a narrower page-width
* Code and page structure for feedback page simplified
* Code for section indexes simplified
* Jekyll Menu plugin used to define navigation menu
* Simplified homepage content and styles
* Simplified site data and includes as staging and production both use the same CDN endpoint
* Simplified and reduced site styles
* Updated testbed documentation
* Updated copyright holder from NERC to UKRI
* Refactoring and updated README

### Removed

* Band component
* References to Source Maps
* Back to top, Is something wrong and build information from footer, these elements may be re-added later
* Trailing new line in cookies policy

## v1.2.0 - 04/02/2018

### Added

* Transparent background for logo examples
* SRI values for JavaScript libraries
* using SRI checks for JavaScript libraries

### Fixed

* SRI machine-readable link fixed to remove space in URL
* URL to testbed
* Removed invalid (old) deprecation warnings
* Correcting links to the BAS CDN

### Changed

* Switching to self-hosted placeholder images
* Switching to latest jQuery version (3.3.1)
* Refactoring and updating Terraform configuration to use new conventions
* Refactoring and updating CI/CD jobs
* Correcting change log

## v1.1.0 - 09/01/2018

### Added

* New alert plugin for generating new style alerts with icons and various styles
* New grid breakpoint - Full HD (1920px)
* Primary and development phase labels
* Development phase colours
* Alert logo styles, variants and layouts
* Javascript distribution information, including required JS libraries
* Clarification on using right and vertical alignment classes for media objects
* General purpose 'experimental' style and icon for use in buttons, text, alerts and labels

### Fixed

* Breakpoint information for the Extra Large breakpoint
* Incorrect notation for grid column sizes for breakpoints (used `-` minus instead of `~` approximate)
* Adding correct warnings for using buttons in input groups (still not quite there)
* Layout and alignment issues with site footer
* Updating navbar brand image examples to be more generic and complete

### Changed

* Integrating 0.3.0 (final) version of the Style Kit
* Integrating 0.3.0-beta version of the Style Kit
* Integrating 0.3.0-alpha version of the Style Kit
* Refactoring site styles into separate files
* Refactoring site header components (cookie notice, main navigation and development phase)
* Adopting navbar brand image classes
* Adopting elements used for image copyright component
* Documenting body/html background colours
* Updating to latest alert classes
* Checks for the site environment check if the site *isn't* production, rather than if it *is* staging
* Changing 'Part of the British Antarctic Survey' to 'Part of British Antarctic Survey' account for the
 larger navbar font size and breaking the navbar layout at smaller screen sizes
* Documenting updated CSS grid classes for the 'standard' (previously 'default') and 'alternate' (previously
'BAS Style Kit') grids
* Updated visibility examples to include new Full HD breakpoint
* Updated URLs to reflect change in project location in GitHub (you may need to re-pull the project Docker image)
* Updated interactive plugins documentation where a Style Kit specific version exists
* Image Purchase component replaced with Image Copyright component for greater flexibility
* Band component is now deprecated and will be removed in the 0.3.0 final release
* Updated feedback page to use new styles

### Removed

* Unnecessary local styles that have been replaced by improvements or additions to the Style Kit
* HTML5 Shim and Respond.JS as the versions of Internet Explorer these were needed for are no longer supported
* Warnings for styles incompatible with older versions of Internet Explorer as they are no longer supported
* Site testing banner (header/footer) but not icon in main navigation and home page
* Workaround for tabindex -1 accessibility workaround

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
