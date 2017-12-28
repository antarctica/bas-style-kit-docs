---
sort_index: 4
title: What's new
sections:
  -
    title: Latest version
  -
    title: v0.3.0
  -
    title: v0.2.0
  -
    title: v0.1.0
---

{% include snippets/table-of-contents.md %}

This page lists changes made to the BAS Style Kit and this documentation. Technical changes to areas such as the build
process are not included here.

See the relevant project change log for this information:

* [BAS Style Kit change log](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit/blob/master/CHANGELOG.md)
* [BAS Style Kit documentation change log](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-docs/blob/master/CHANGELOG.md)

{% include snippets/topic-section-metadata.html
  title="Latest version"
  heading_level=2
%}

The latest version of the BAS Style Kit is **0.3.0-beta**.

The latest stable version of the BAS Style Kit is **0.2.0**.

{% include snippets/topic-section-metadata.html
  title="v0.3.0"
  heading_level=2
%}

{% alert info style=highlight %}
This version has not yet been released
{% endalert %}

Key changes in this version:

* introduction of the [global prefix]({{ '/start/introduction#global-prefix' | prepend: site.baseurl }})
* introduction of customised [JavaScript plugins]({{ '/start/distribution#bas-cdn' | prepend: site.baseurl }})
* all styles are now [distributed]({{ '/start/distribution#bas-cdn' | prepend: site.baseurl }}) together, rather than
as two separate files
* refactoring [grid classes]({{ '/core/grid#available-grids' | prepend: site.baseurl }})
* [colours]({{ '/core/colours#standard-colours' | prepend: site.baseurl }}) have been updated with a full standardised
colour pallet
* the [base font size]({{ '/core/type#typographic-base' | prepend: site.baseurl }}) is increased from 14 pixels to 16 pixels
* the Image Purchase component replaced by new [Image Copyright]({{ '/components/image-copyright' | prepend: site.baseurl }})
component
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

{% include snippets/topic-section-metadata.html
  title="v0.2.0"
  heading_level=2
%}

Key changes in this version:

* [navbar]({{ '/components/navbar' | prepend: site.baseurl }}) - brand images and text can now be used together
* [form inputs]({{ '/core/forms/#form-control-sizing' | prepend: site.baseurl }}) - large and small inputs no longer
have rounded edges
* [input group buttons]({{ '/components/input-group/#button-input-group' | prepend: site.baseurl }}) - are now styled
correctly - **note** this does not apply to input group drop-downs or input group split-button drop-downs

{% alert info style=highlight %}
View the
[complete v0.2.0 change log](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit/blob/master/CHANGELOG.md#020-2017-04-17)
for more information.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="v0.1.0"
  heading_level=2
%}

{% alert info style=highlight %}
This was the first official release of the BAS Style Kit.
{% endalert %}

{% alert info style=highlight %}
View the
[complete v0.1.0 change log](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit/blob/master/CHANGELOG.md#010-2015-10-27)
for more information.
{% endalert %}
