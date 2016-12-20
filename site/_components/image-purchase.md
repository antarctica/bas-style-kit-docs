---
title: Image purchase
sections:
  -
    title: Overview
  -
    title: Thumbnail
  -
    title: Jumbotron
  -
    title: Image purchase symbol
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-image-purchase` class to identify images or other media available for purchase from the BAS Image
Collection.

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
%}

These elements are supported for use with the image purchase components. Other elements may be used, but are not
supported and may not look right.

{% include snippets/topic-section-metadata.html
  title="Thumbnail"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `bsk-image-purchase` class to a [thumbnail]({{ '/components/thumbnail' | prepend: site.baseurl }}).

{% example html %}
<!-- Thumbnail using a div element with a caption -->
<div class="thumbnail thumbnail-bsk thumbnail-bsk-default bsk-image-purchase">
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="caption">
    Thumbnail label <a href="#" class="image-purchase-symbol"><i class="fa fa-camera"></i></a>
  </div>
</div>
{% endexample %}

Use the `.bsk-image-purchase-no-caption` class for thumbnails without captions.

{% example html %}
<!-- Thumbnail using a div element -->
<div class="thumbnail thumbnail-bsk thumbnail-bsk-default bsk-image-purchase bsk-image-purchase-no-caption">
  <a href="#" class="image-purchase-symbol"><i class="fa fa-camera"></i></a>
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
</div>
{% endexample %}

Where a thumbnail is a link (i.e. a `a.thumbnail` rather than a `div.thumbnail` element) javascript is needed as a link
cannot be contained within another link.

{% example html %}
<!-- Thumbnail using a link element with a caption -->
<a href="#thumbnail" class="thumbnail thumbnail-bsk thumbnail-bsk-inverse bsk-image-purchase">
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="caption">
    Thumbnail label <div onclick="location.href='#image-purchase';" class="image-purchase-symbol"><i class="fa fa-camera"></i></div>
  </div>
</a>

<!-- Thumbnail using a link element -->
<a href="#thumbnail" class="thumbnail thumbnail-bsk thumbnail-bsk-default bsk-image-purchase bsk-image-purchase-no-caption">
  <div onclick="location.href='#image-purchase';" class="image-purchase-symbol"><i class="fa fa-camera"></i></div>
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
</a>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Jumbotron"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `image-purchase` class to a [jumbotron]({{ '/components/jumbotron' | prepend: site.baseurl }}).

Use the `background-image` CSS property to set the image, or other media item, as the background of the jumbotron.

{% example html %}
<div class="jumbotron jumbotron-bsk bsk-image-purchase jumbotron-image-purchase-example">
  <a class="image-purchase-symbol" href="#"><i class="fa fa-camera fa-2x"></i></a>
  <h1><span class="text-overlay">Jumbotron caption</span></h1>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Image purchase symbol"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.image-purchase-symbol` class on an <code>&lt;a&gt;</code> element linked to the source of each image or other
media item.

This <code>&lt;a&gt;</code> element should contain the conventional icon defined for the
[image purchase component]({{ '/core/icons/#image-purchase-icon' | prepend: site.baseurl }}).
