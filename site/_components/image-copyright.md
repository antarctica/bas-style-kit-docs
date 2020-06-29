---
title: Image copyright
menus:
  primary_components:
    weight: 10
sections:
  -
    title: Overview
  -
    title: Figure
  -
    title: Thumbnail
  -
    title: Jumbotron
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-image-copyright` class as a container to identify the copyright holder of an image or other media item.

Use the `.bsk-image-copyright-image` class on the image or media item. Use the `.bsk-image-copyright-attribution` class
to specify the attribution information for the image or media item.

{% capture alert_content %}
This attribution can also include a link, for example to purchase an image from the BAS Image Collection
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Supported elements"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Figure"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use a <code>&lt;figure&gt;</code> element with the `.bsk-image-copyright` class containing:

* an <code>&lt;img&gt;</code> element with the `.bsk-image-copyright-image` class for the image
* a <code>&lt;figcaption&gt;</code> element with the `.bsk-image-copyright-attribution` class for the attribution

{% capture alert_content %}
Only use <code>&lt;figure&gt;</code> and <code>&lt;figcaption&gt;</code> elements if they make semantic sense.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% example html %}
<figure class="bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="placeholder image">
  <figcaption class="bsk-image-copyright-attribution">Copyright holder</figcaption>
</figure>
{% endexample %}

Optionally the attribution information can be a link.

{% example html %}
<figure class="bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="placeholder image">
  <figcaption class="bsk-image-copyright-attribution"><a href="https://www.example.com">Copyright holder</a></figcaption>
</figure>
{% endexample %}

{% include topic-section-metadata.html
  title="Thumbnail"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  revised_version="0.6.0"
  included="yes"
%}

Add the `.bsk-image-copyright` class to a [thumbnail]({{ '/components/thumbnail' | prepend: site.baseurl }}),
containing an <code>&lt;img&gt;</code> with the `.bsk-image-copyright-image` class.

If the thumbnail has a caption, include a <code>&lt;div&gt;</code> element for the attribution with the
`.bsk-image-copyright-attribution` and `.bsk-pull-right` classes.

{% example html %}
<!-- Thumbnail using a div element with a caption -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="thumbnail">
  <div class="bsk-caption">
    Thumbnail caption
    <div class="bsk-image-copyright-attribution bsk-pull-right">Copyright holder</div>
  </div>
</div>

<!-- Thumbnail using a div element with a caption and linked attribution -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="thumbnail">
  <div class="bsk-caption">
    Thumbnail caption
    <a href="https://www.example.com" class="bsk-image-copyright-attribution bsk-pull-right">Copyright holder</a>
  </div>
</div>
{% endexample %}

If the thumbnail doesn't have a caption, use a <code>&lt;div&gt;</code> element for the attribution with the
`.bsk-image-copyright-attribution` class.

{% example html %}
<!-- Thumbnail using a div element without a caption -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="placeholder image">
  <div class="bsk-image-copyright-attribution">Copyright holder</div>
</div>

<!-- Thumbnail using a div element without a caption but with a linked attribution -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="{{ '/img/placeholder-800-600.png' | prepend: site.baseurl }}" alt="placeholder image">
  <a href="https://www.example.com" class="bsk-image-copyright-attribution">Copyright holder</a>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Jumbotron"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

Add the `.bsk-image-copyright` class to a [jumbotron]({{ '/components/jumbotron' | prepend: site.baseurl }}).

Use the `background-image` CSS property to set the image, or other media item, as its background.

Use a <code>&lt;div&gt;</code> element for the attribution with the `.bsk-image-copyright-attribution` class.

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-default bsk-image-copyright">
  <h1>Jumbotron title</h1>
  <div class="bsk-image-copyright-attribution">Copyright holder</div>
</div>

<br />

<!-- With linked attribution -->
<div class="bsk-jumbotron bsk-jumbotron-default bsk-image-copyright">
  <h1>Jumbotron title</h1>
  <a href="https://www.example.com" class="bsk-image-copyright-attribution">Copyright holder</a>
</div>
{% endexample %}
