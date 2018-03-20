---
title: Breadcrumb
menus:
  primary_components:
    weight: 5
sections:
  -
    title: Overview
  -
    title: Default breadcrumb
  -
    title: States
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-breadcrumb` class with a list of navigation items to indicate the current page's location within a
hierarchy.

Each navigation item **must** use an <code>&lt;a&gt;</code> element, **except** for the last item.

{% capture alert_content %}
For assistive technologies, all navigation elements should use a `role=navigation` attribute on an element which wraps
around the element using the `.bsk-nav` class.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default breadcrumb"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<nav role="navigation">
  <ol class="bsk-breadcrumb">
    <li><a href="#">Level 1</a></li>
    <li><a href="#">Level 2</a></li>
    <li class="bsk-active"><span class="bsk-sr-only">(current)</span>Level 3</li>
  </ol>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Active item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-active` class to the drop-down menu item currently active, to highlight where the end user is in the site.

{% capture alert_content %}
Make sure to include a `<span class="bsk-sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<nav role="navigation">
  <ol class="bsk-breadcrumb">
    <li><a href="#">Level 1</a></li>
    <li><a href="#">Level 2</a></li>
    <li class="bsk-active"><span class="bsk-sr-only">(current)</span>Level 3</li>
  </ol>
</nav>
{% endexample %}
