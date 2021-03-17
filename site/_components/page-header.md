---
item_type: Component
title: Page header
menus:
  primary_components:
    weight: 18
sections:
  -
    title: Overview
  -
    title: Default page header
  -
    title: Stacked page header
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.page-header` class to title a page, or section within a page, using a more prominent heading with extra
spacing.

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default page header"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<header class="bsk-page-header">
  <h1>Example page header <small>Subtext for header</small></h1>
</header>
{% endexample %}

{% include topic-section-metadata.html
  title="Stacked page header"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
  included="yes"
%}

Add the `.bsk-page-header-stacked` class and place the subtitle on a new line before the main title to create a stacked
page header.

{% capture alert_content %}
Stacked page headers are used in the
[item type header]({{ '/patterns/item-type-header' | prepend: site.baseurl }}){: .bsk-alert-link } pattern.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<header class="bsk-page-header bsk-page-header-stacked">
  <h1>
    <small>Item type</small>
    <br>
    Example item header
  </h1>
</header>
{% endexample %}
