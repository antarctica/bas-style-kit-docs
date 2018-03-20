---
sort_index: 4
title: What's new
menus:
  primary_start:
    weight: 5
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
