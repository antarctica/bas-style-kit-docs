---
item_type: Pattern
title: Item type header
menus:
  primary_patterns:
    weight: 2
sections:
  -
    title: Overview
  -
    title: Uses
  -
    title: Basic
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this component pattern to indicate what type or kind of *thing* the subject of a page is about. For example 'person'
where a page is about an individual.

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Use this pattern when:

* the page is about a single subject, such as a dataset or person

Use this pattern, do:

* use the singular term for the type or kind of thing (e.g. 'person' not 'people')

When using this pattern, do not:

* make the item type a link

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
  included="yes"
%}

Use the [stacked page header]({{ '/components/page-header/#stacked-page-header' | prepend: site.baseurl }}) component
to create an item header:

{% example html %}
<header class="bsk-page-header bsk-page-header-stacked">
  <h1>
    <small>Project</small>
    <br>
    Aerosol-Cloud Coupling And Climate Interactions in the Arctic
  </h1>
</header>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0018--item-type-header.html){:.bsk-btn.bsk-btn-default}
