---
title: Image copyright
sections:
  -
    title: Overview
  -
    title: Basic
  -
    title: Thumbnail
  -
    title: Jumbotron
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-image-copyright` class as a container to identify the copyright holder of an image or other media item.

Use the `.bsk-image-copyright-image` class on the image or media item.

Use the `.bsk-image-copyright-attribution` class to specify the attribution information for the image or media item.

{% alert info style=highlight %}
This attribution can also include a link to purchase an image from the BAS Image Collection for example.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
%}

These elements are supported for use with the image copyright component. Other elements may be used, but are not
supported and may not look right.

{% include snippets/topic-section-metadata.html
  title="Basic"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-image-copyright` class to a <code>&lt;div&gt;</code> element, containing an <code>&lt;img&gt;</code> with
the `bsk-image-copyright-image` class and another <code>&lt;div&gt;</code> element for the attribution with the
`bsk-image-copyright-attribution` class.

{% example html %}
<div class="bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="placeholder image">
  <div class="bsk-image-copyright-attribution">Copyright holder</div>
</div>
{% endexample %}

Optionally the attribution information can be a link.

{% example html %}
<div class="bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="placeholder image">
  <a href="https://www.example.com" class="bsk-image-copyright-attribution">Copyright holder</a>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Thumbnail"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-image-copyright` class to a [thumbnail]({{ '/components/thumbnail' | prepend: site.baseurl }}),
containing an <code>&lt;img&gt;</code> with the `bsk-image-copyright-image` class.

If the thumbnail has a caption, include a <code>&lt;div&gt;</code> element for the attribution with the
`bsk-image-copyright-attribution` and `.bsk-pull-right` classes.

{% example html %}
<!-- Thumbnail using a div element with a caption -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="bsk-caption">
    Thumbnail caption
    <div class="bsk-image-copyright-attribution bsk-pull-right">Copyright holder</div>
  </div>
</div>

<!-- Thumbnail using a div element with a caption and linked attribution -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="bsk-caption">
    Thumbnail caption
    <a href="https://www.example.com" class="bsk-image-copyright-attribution bsk-pull-right">Copyright holder</a>
  </div>
</div>
{% endexample %}

If the thumbnail doesn't have a caption, use a <code>&lt;div&gt;</code> element for the attribution with the
`bsk-image-copyright-attribution` class.

{% example html %}
<!-- Thumbnail using a div element without a caption -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="placeholder image">
  <div class="bsk-image-copyright-attribution">Copyright holder</div>
</div>

<!-- Thumbnail using a div element without a caption but with a linked attribution -->
<div class="bsk-thumbnail bsk-thumbnail-default bsk-image-copyright">
  <img class="bsk-image-copyright-image" src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="placeholder image">
  <a href="https://www.example.com" class="bsk-image-copyright-attribution">Copyright holder</a>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Jumbotron"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-image-copyright` class to a [jumbotron]({{ '/components/jumbotron' | prepend: site.baseurl }}).

Use the `background-image` CSS property to set the image, or other media item, as its background.

Use a <code>&lt;div&gt;</code> element for the attribution with the `bsk-image-copyright-attribution` class.

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
