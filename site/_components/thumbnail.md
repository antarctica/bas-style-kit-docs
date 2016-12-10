---
title: Thumbnail
sections:
  -
    title: Overview
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

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

## Supported elements
{: #{{ 'Supported elements' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

Thumbnail styles are designed for <code>&lt;div&gt;</code> or <code>&lt;a&gt;</code> elements.

## Variants
{: #{{ 'Variants' | slugify }} }

### Default
{: #{{ 'Default' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

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

### Inverted
{: #{{ 'Inverted' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

Add the `.thumbnail-bsk-inverted` class for an alternative style of thumbnail. There is no smenatic significance
implied by this variant.

{% example html %}
<div class="row">
  <div class="col-md-6">
    <div class="thumbnail thumbnail-bsk thumbnail-bsk-inverted">
      <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=400&h=250" alt="thumbnail">
    </div>
  </div>
  <div class="col-md-6">
    <a href="#" class="thumbnail thumbnail-bsk thumbnail-bsk-inverted">
      <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=400&h=250" alt="thumbnail">
    </a>
  </div>
</div>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }} }

### Captions
{: #{{ 'Captions' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

Use the `.caption` class on an element within a thumbnail to add additional information, such as a description.

{% example html %}
<div class="thumbnail thumbnail-bsk thumbnail-bsk-default">
  <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=Media%20Item&w=800&h=500" alt="thumbnail">
  <div class="caption">Thumbnail caption</div>
</div>
{% endexample %}

If using the inverted variant, the caption will be styled accordingly.

{% example html %}
<div class="thumbnail thumbnail-bsk thumbnail-bsk-inverted">
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
