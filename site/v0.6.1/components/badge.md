---
item_type: Component
title: Badge
menus:
  primary_components:
    weight: 3
sections:
  -
    title: Overview
  -
    title: Default badge
  -
    title: Sizes
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-badge` class to highlight a count, such as items needing further attention. An empty badge will
automatically collapse and be hidden.

{% capture alert_content %}
Badges are only intended for numbers. For more general purposes, use
[Labels]({{ '/components/label' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default badge"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<p><a href="#">Unread notifications <span class="bsk-badge">42</span></a></p>
<!-- Empty badges automatically hide -->
<p><a href="#">Unread notifications <span class="bsk-badge"></span></a></p>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
%}

Badges will scale with their parent element.

{% example html %}
<p><button class="bsk-btn bsk-btn-default bsk-btn-sm" type="button">Items <span class="bsk-badge">4</span></button></p>
<p><button class="bsk-btn bsk-btn-default" type="button">Items <span class="bsk-badge">4</span></button></p>
<p><button class="bsk-btn bsk-btn-default bsk-btn-lg" type="button">Items <span class="bsk-badge">4</span></button></p>
{% endexample %}
