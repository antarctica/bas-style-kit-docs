---
title: Responsive embed
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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.embed-responsive` class on an element wrapped around a video or other media item to allow browsers to scale
them.

Use the `.embed-responsive-item` class for the video or other meida item itself.

You **must** pick a [variant]({{ '/core/responsive-embed/#variants' | prepend: site.baseurl }}){: .alert-link } for
each responsive embed, otherwise it will look strange. It is not enough to use `.embed-responsive` on its own.
{: .alert .alert-warning }

You don't need to include `frameborder="0"` on embedded items, as the Style Kit will add this for you.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

This component is supported when used with these elements:

* <code>&lt;iframe&gt;</code>
* <code>&lt;embed&gt;</code>
* <code>&lt;video&gt;</code>
* <code>&lt;object&gt;</code>

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Responsive embed 16:9"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/32397612" allowfullscreen></iframe>
</div>
{% endexample %}

{% example html %}
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src='https://nercacuk.sharepoint.com/portals/hub/_layouts/15/VideoEmbedHost.aspx?chId=f781382f%2D8cde%2D4116%2D9778%2D6e0106703465&amp;vId=d5221c74%2D7b37%2D4a51%2D8ec6%2D50ce52dbdd4e' allowfullscreen></iframe>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Responsive embed 4:3"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="embed-responsive embed-responsive-4by3">
  <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/32397612" allowfullscreen></iframe>
</div>
{% endexample %}
