---
item_type: Start
sort_index: 4
title: What's new
menus:
  primary_start:
    weight: 5
sections:
  -
    title: Latest version
  -
    title: v0.6.1
  -
    title: v0.6.0
  -
    title: v0.5.0
  -
    title: v0.4.0
  -
    title: v0.3.0
  -
    title: v0.2.0
  -
    title: v0.1.0
---

This page lists changes made to the BAS Style Kit and this documentation. Technical changes to areas such as the build
process are not included here.

See the relevant project change log for this information:

* [BAS Style Kit change log]({{ site.data.variables.source_code_url }}/blob/master/CHANGELOG.md)
* [BAS Style Kit documentation change log]({{ site.data.variables.docs_source_code_url }}/blob/master/CHANGELOG.md)

{% include topic-section-metadata.html
  title="Latest version"
  heading_level=2
%}

The latest stable version of the BAS Style Kit is **{{ site.data.variables.bsk_version_production }}**.

The latest development version of the BAS Style Kit is **{{ site.data.variables.bsk_version_staging }}**.

Key changes in this version:

* Breaking - [grid]({{ '/core/grid' | prepend: site.baseurl }}) - removal of `bsk-col-*-*-*` classes E.g. `bsk-col-12-xs-6` - now uses `bsk-col-md-6`
* Breaking - [offsetting-columns]({{ 'core/grid/#offsetting-columns' | prepend: site.baseurl }}) `bsk-offset-md-*` - instead of `bsk-col-*-md-offset-*`
* Breaking - [nesting-columns]({{  'core/grid/#nesting-columns'  | prepend: site.baseurl }})  - removal of `bsk-col-*-bsk-*-*` classes E.g. `bsk-col-12-bsk-md-8` - now uses `bsk-col-bsk-md-8`
* Breaking - [ordering-columns]({{  'core/grid/#ordering-columns'  | prepend: site.baseurl }})  - removal of `bsk-col-*-md-push-*` classes E.g. `bsk-col-12-md-push-3` - now uses `bsk-col-md-push-3` - also for `pull` classes
* Breaking - [floated-blocks]({{'/core/layout/#floated-blocks' | prepend: site.baseurl }}) - The method of aligning elements is now controlled using Flexbox
* Breaking - panel removed - replaced by [card]({{ '/components/card/' | prepend: site.baseurl }})
* Revisions
  - Alerts
  - Button group
  - Drop down
  - Footer
  - Image copyright
  - Jumbotron
  - Navigation
  - Navbar
  - Pagination
  - Sidebar
  - Social media
  - Thumbnail


{% include topic-section-metadata.html
  title="v0.6.0"
  heading_level=2
%}

Key changes in this version:

* [patterns]({{ '/patterns' | prepend: site.baseurl }}) for
  [start page]({{ '/patterns/start-page' | prepend: site.baseurl }}),
  [sign in to continue page]({{ '/patterns/sign-in-continue' | prepend: site.baseurl }}),
  [standard page header]({{ '/patterns/standard-header' | prepend: site.baseurl }}),
  [item type header]({{ '/patterns/item-type-header' | prepend: site.baseurl }}),
  [ORCID iD]({{ '/patterns/orcid-id' | prepend: site.baseurl }}) and
  [Markdown textarea]({{ '/patterns/markdown-textarea' | prepend: site.baseurl }})
  have been added
* [Microsoft Account]({{ '/core/buttons/#microsoft-sign-in-button' | prepend: site.baseurl }}) sign in button variant
* [page header]({{ '/components/page-header/' | prepend: site.baseurl }}) spacing increased
* [outline]({{ '/components/alert/#outline' | prepend: site.baseurl }}) and
  [highlight]({{ '/components/alert/#highlight' | prepend: site.baseurl }}) alert types now use black text
* deprecated components have been removed (inverse jumbotron, list group, button input group, drop-down button input
  group and split-button input group)
* Academicons icon font removed, replaced by updated
  [Font Awesome]({{ '/core/icons/#font-awesome' | prepend: site.baseurl }}) icon font (for ORCID iD icon)
* 50% smaller NPM package size

{% include topic-section-metadata.html
  title="v0.5.0"
  heading_level=2
%}

Key changes in this version:

* [patterns]({{ '/patterns' | prepend: site.baseurl }}) for
  [page not found]({{ '/patterns/page-not-found' | prepend: site.baseurl }}),
  [service unavailable]({{ '/patterns/service-unavailable' | prepend: site.baseurl }}) and
  [there is a problem with this service]({{ '/patterns/problem-with-this-service' | prepend: site.baseurl }})
  pages have been added
* a [favicon component]({{ '/core/favicon' | prepend: site.baseurl }}) has been added to act as a default across devices
* a [drag and drop file upload (drop-zone) interactive component]({{ '/interactivity/drop-zone/' | prepend: site.baseurl }}) has been added
* the [tabs component]({{ '/components/nav/#tab-navigation' | prepend: site.baseurl }}) has been updated with proper styling
* the deprecated wells component has been removed
* colours for [BAS Themes]({{ '/core/colours/#bas-theme-colours' | prepend: site.baseurl }}) and [BAS Facilities]({{ '/core/colours/#bas-facility-colours' | prepend: site.baseurl }})
* a Style Kit version of the Bootstrap [transitions]({{ '/interactivity/transitions' | prepend: site.baseurl }}) interactivity component has been added
* a Style Kit version of the Bootstrap [pop-over]({{ '/interactivity/pop-over' | prepend: site.baseurl }}) interactivity component has been added
* a Style Kit version of the Bootstrap [tool-tip]({{ '/interactivity/tool-tip' | prepend: site.baseurl }}) interactivity component has been added
* a Style Kit version of the Bootstrap [button]({{ '/interactivity/button' | prepend: site.baseurl }}) interactivity component has been added
* a set of [Pug templates]({{ '/start/distribution/#pug' | prepend: site.baseurl }}) has been added
* an [Oracle Application Express (Apex)]({{ '/start/distribution/#oracle-apex' | prepend: site.baseurl }}) theme has been added
* the [Font Awesome icon font]({{ '/core/icons/#font-awesome' | prepend: site.baseurl }}) has been updated to version 5 (Pro) and is now an optional component
* the [NPM package]({{ '/start/distribution/#nodejs-package' | prepend: site.baseurl }}) for this project is now namespaced
* the [list group component]({{ '/components/list-group/' | prepend: site.baseurl }}) is now deprecated
* the [inverse jumbotron variant]({{ '/components/jumbotron/#inverse-jumbotron' | prepend: site.baseurl }}) is now deprecated
* the [form input drop-down button input group]({{ '/components/input-group/#drop-down-button-input-group' | prepend: site.baseurl }}) is now deprecated
* the [form input split-button drop-down input group]({{ '/components/input-group/#split-button-drop-down-input-group' | prepend: site.baseurl }}) is now deprecated

{% include topic-section-metadata.html
  title="v0.4.0"
  heading_level=2
%}

Key changes in this version:

* CSS files are ~50% smaller in size due to refactoring the Style Kit build pipeline and removing duplication
* this website has been rebuilt to use the BAS Style Kit
  [Jekyll theme]({{ '/start/distribution/#jekyll-theme' | prepend: site.baseurl }})
* all original code (i.e. not part of Bootstrap) is now licensed under the Open Government License
* the starter template has been removed until this can be done properly
* [colours]({{ '/core/colours' | prepend: site.baseurl }}) are now divided into a Standard or Extended colour scheme
* the [testbed]({{ '/examples/testbed' | prepend: site.baseurl }}) has been rebuilt to avoid unsupported technologies
* footers have been updated with a new layout and elements for
  [back to top]({{ '/components/footer/#back-to-top-link' | prepend: site.baseurl }}) links,
  [site feedback]({{ '/components/footer/#is-something-wrong-link' | prepend: site.baseurl }}) links and
  [governance]({{ '/components/footer/#governance' | prepend: site.baseurl }}) information
* the class used for images in [headers]({{ '/components/header/' | prepend: site.baseurl }}) has been changed
* the previously deprecated *band* component has been removed
* this website has been updated to reflect the formation of UKRI

{% include topic-section-metadata.html
  title="v0.3.0"
  heading_level=2
%}

Key changes in this version:

* introduction of the [global prefix]({{ '/start/introduction#global-prefix' | prepend: site.baseurl }})
* introduction of customised [JavaScript plugins]({{ '/start/distribution#bas-cdn' | prepend: site.baseurl }})
* all styles are now [distributed]({{ '/start/distribution#bas-cdn' | prepend: site.baseurl }}) together, rather than
as two separate files
* refactoring [grid classes]({{ '/core/grid#available-grids' | prepend: site.baseurl }})
* [colours]({{ '/core/colours#standard-colours' | prepend: site.baseurl }}) have been updated with standard and extended
colour pallets
* the [base font size]({{ '/core/type#typographic-base' | prepend: site.baseurl }}) is increased from 14 pixels to 16
pixels
* the Image Purchase component replaced by new
[Image Copyright]({{ '/components/image-copyright' | prepend: site.baseurl }}) component
* older Internet Explorer versions (I.E. 8 and 9) are
[no longer officially supported]({{ '/start/standards-accessibility#browser-support' | prepend: site.baseurl }})
* logos for the [BAS logo and roundel]({{ '/core/logos#bas-logo' | prepend: site.baseurl }}) and the
[Open Government Licence symbol]({{ '/core/logos#open-government-license-symbol' | prepend: site.baseurl }})
* Styles for [alerts]({{ '/components/alerts' | prepend: site.baseurl }})
* Styles for [labels]({{ '/components/lables' | prepend: site.baseurl }})
* GDS [development phase colours]({{ '/core/colours#development-phase-colours' | prepend: site.baseurl }})
* Experimental colour (for [buttons]({{ '/core/buttons#experimental-button' | prepend: site.baseurl }}),
[text]({{ '/core/type#experimental-text' | prepend: site.baseurl }}),
[alerts]({{ '/components/alert#experimental-alert' | prepend: site.baseurl }}) and
[labels]({{ '/components/label#experimental-label' | prepend: site.baseurl }}))

{% capture alert_content %}
View the
[complete v0.3.0 change log]({{ site.data.variables.source_code_url }}/blob/v0.3.0/CHANGELOG.md){: .bsk-alert-link }
for more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="v0.2.0"
  heading_level=2
%}

Key changes in this version:

* [navbar]({{ '/components/navbar' | prepend: site.baseurl }}) - brand images and text can now be used together
* [form inputs]({{ '/core/forms/#form-control-sizing' | prepend: site.baseurl }}) - large and small inputs no longer
have rounded edges
* [input group buttons]({{ '/components/input-group/#button-input-group' | prepend: site.baseurl }}) - are now styled
correctly - **note** this does not apply to input group drop-downs or input group split-button drop-downs

{% capture alert_content %}
View the
[complete v0.2.0 change log]({{ site.data.variables.source_code_url }}/blob/v0.2.0/CHANGELOG.md){: .bsk-alert-link }
for more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="v0.1.0"
  heading_level=2
%}

{% capture alert_content %}
This was the first official release of the BAS Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
View the
[complete v0.1.0 change log]({{ site.data.variables.source_code_url }}/blob/v0.1.0/CHANGELOG.md){: .bsk-alert-link }
for more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
