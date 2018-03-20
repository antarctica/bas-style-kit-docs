---
title: Thumbnail
menus:
  primary_components:
    weight: 25
sections:
  -
    title: Overview
  -
    title: Supported elements
  -
    title: Default thumbnail
  -
    title: Inverse thumbnail
  -
    title: Caption
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-thumbnail` classes to highlight one or more media items, such as images, that are distinct from main
content, but which is shown **within** it, usually as a grid of items.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/thumbnail/#variants' | prepend: site.baseurl }}){: .bsk-alert-link }
for each thumbnail, otherwise it will look strange. It is not enough to use `.bsk-thumbnail` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
Thumbnails are really only intended for media items. For more general purposes, use
[Panel's]({{ '/components/panel' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Thumbnail styles are designed for <code>&lt;div&gt;</code> or <code>&lt;a&gt;</code> elements.

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default thumbnail"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-thumbnail-default` class for standard thumbnails.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-6">
    <div class="bsk-thumbnail bsk-thumbnail-default">
      <img src="{{ '/img/placeholder-256.png' | prepend: site.baseurl }}" alt="thumbnail">
    </div>
  </div>
  <div class="bsk-col-12-md-6">
    <a href="#" class="bsk-thumbnail bsk-thumbnail-default">
      <img src="{{ '/img/placeholder-256.png' | prepend: site.baseurl }}" alt="thumbnail">
    </a>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Inverse thumbnail"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-thumbnail-inverse` class for an alternative thumbnail style. This has no semantic significance.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-6">
    <div class="bsk-thumbnail bsk-thumbnail-inverse">
      <img src="{{ '/img/placeholder-256.png' | prepend: site.baseurl }}" alt="thumbnail">
    </div>
  </div>
  <div class="bsk-col-12-md-6">
    <a href="#" class="bsk-thumbnail bsk-thumbnail-inverse">
      <img src="{{ '/img/placeholder-256.png' | prepend: site.baseurl }}" alt="thumbnail">
    </a>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Caption"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-caption` class on an element within a thumbnail to add additional information, such as a description.

{% example html %}
<div class="bsk-thumbnail bsk-thumbnail-default">
  <img src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="thumbnail">
  <div class="bsk-caption">Thumbnail caption</div>
</div>
{% endexample %}

If using the inverted variant, the caption will be styled accordingly.

{% example html %}
<div class="bsk-thumbnail bsk-thumbnail-inverse">
  <img src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="thumbnail">
  <div class="bsk-caption">Thumbnail caption</div>
</div>
{% endexample %}

Captions can also include more complex markup.

{% example html %}
<div class="bsk-thumbnail bsk-thumbnail-default">
  <img src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="thumbnail">
  <div class="bsk-caption">
    <h3>Thumbnail caption heading</h3>
    <p>Thumbnail caption description</p>
    <a href="#" class="bsk-btn bsk-btn-primary" role="button">Thumbnail caption action</a>
  </div>
</div>
{% endexample %}
