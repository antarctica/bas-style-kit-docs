---
title: Thumbnail
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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.thumbnail-bsk` and `.thumbnail` classes to highlight one or more media items, such as images, that are
distinct from main content, but which is shown **within** it, usually as a grid of items.

You **must** pick a [variant]({{ '/components/thumbnail/#variants' | prepend: site.baseurl }}){: .alert-link } for each
thumbnail, otherwise it will look strange. It is not enough to use `.thumbnail .thumbnail-bsk` on its own.
{: .alert .alert-warning }

Always use the `.btn-thumbnail` and `.thumbnail` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

Thumbnails are really only intended for media items. For more general purposes, use
[Panel's]({{ '/components/panel' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Thumbnail styles are designed for <code>&lt;div&gt;</code> or <code>&lt;a&gt;</code> elements.

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default thumbnail"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.thumbnail-bsk-default` class for standard thumbnails.

{% example html %}
<div class="row">
  <div class="col-md-6">
    <div class="thumbnail thumbnail-bsk thumbnail-bsk-default">
      <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=400&h=250" alt="thumbnail">
    </div>
  </div>
  <div class="col-md-6">
    <a href="#" class="thumbnail thumbnail-bsk thumbnail-bsk-default">
      <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=400&h=250" alt="thumbnail">
    </a>
  </div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Inverse thumbnail"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.thumbnail-bsk-inverse` class for an alternative thumbnail style. This has no semantic significance.

{% example html %}
<div class="row">
  <div class="col-md-6">
    <div class="thumbnail thumbnail-bsk thumbnail-bsk-inverse">
      <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=400&h=250" alt="thumbnail">
    </div>
  </div>
  <div class="col-md-6">
    <a href="#" class="thumbnail thumbnail-bsk thumbnail-bsk-inverse">
      <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=400&h=250" alt="thumbnail">
    </a>
  </div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Caption"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.caption` class on an element within a thumbnail to add additional information, such as a description.

{% example html %}
<div class="thumbnail thumbnail-bsk thumbnail-bsk-default">
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="caption">Thumbnail caption</div>
</div>
{% endexample %}

If using the inverted variant, the caption will be styled accordingly.

{% example html %}
<div class="thumbnail thumbnail-bsk thumbnail-bsk-inverse">
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="caption">Thumbnail caption</div>
</div>
{% endexample %}

Captions can also include more complex markup.

{% example html %}
<div class="thumbnail thumbnail-bsk thumbnail-bsk-default">
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="caption">
    <h3>Thumbnail caption heading</h3>
    <p>Thumbnail caption description</p>
    <a href="#" class="btn btn-bsk btn-primary" role="button">Thumbnail caption action</a>
  </div>
</div>
{% endexample %}
