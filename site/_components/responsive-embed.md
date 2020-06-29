---
item_type: Component
title: Responsive embed
menus:
  primary_components:
    weight: 22
sections:
  -
    title: Overview
  -
    title: Supported elements
  -
    title: Responsive embed 16:9
  -
    title: Responsive embed 4:3
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-embed-responsive` class on an element wrapped around a video or other media item to allow browsers to scale
them.

Use the `.bsk-embed-responsive-item` class for the video or other meida item itself.

{% capture alert_content %}
You **must** pick a [variant]({{ '/core/responsive-embed/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for
each responsive embed, otherwise it will look strange. It is not enough to use `.bsk-embed-responsive` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
You don't need to include `frameborder="0"` on embedded items, as the Style Kit will add this for you.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Supported elements"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

These elements are fully supported:

* `<iframe>`
* `<embed>`
* `<video>`
* `<object>`

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Responsive embed 16:9"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-embed-responsive bsk-embed-responsive-16by9">
  <iframe class="bsk-embed-responsive-item" src="https://player.vimeo.com/video/32397612" allowfullscreen></iframe>
</div>
{% endexample %}

{% example html %}
<div class="bsk-embed-responsive bsk-embed-responsive-16by9">
  <iframe class="bsk-embed-responsive-item" src='https://nercacuk.sharepoint.com/portals/hub/_layouts/15/VideoEmbedHost.aspx?chId=f781382f%2D8cde%2D4116%2D9778%2D6e0106703465&amp;vId=d5221c74%2D7b37%2D4a51%2D8ec6%2D50ce52dbdd4e' allowfullscreen></iframe>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Responsive embed 4:3"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-embed-responsive bsk-embed-responsive-4by3">
  <iframe class="bsk-embed-responsive-item" src="https://player.vimeo.com/video/32397612" allowfullscreen></iframe>
</div>
{% endexample %}
