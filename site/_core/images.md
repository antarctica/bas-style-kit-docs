---
title: Images
sections:
  -
    title: Responsive images
  -
    title: Image shapes
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Responsive images
{: #{{ 'Responsive images' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the `.img-responsive` class to scale images nicely within their parent element. Use the [centred block]({{ '/core/layout/#centred-block' | prepend: site.baseurl }}) classes to centre a responsive image.

{% example html %}
<img class="img-responsive" src="{{ '/img/site-masthead-tom-welsh.jpg' | prepend: site.baseurl }}" alt="Sky at Halley VI research station">
{% endexample %}

## Image shapes
{: #{{ 'Image shapes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<img class="img-rounded" src="https://placeholdit.imgix.net/~text?txtsize=50&amp;w=140&amp;h=140" alt="Rounded image" >
<img class="img-circle" src="https://placeholdit.imgix.net/~text?txtsize=50&amp;w=140&amp;h=140" alt="Circular image">
<img class="img-thumbnail" src="https://placeholdit.imgix.net/~text?txtsize=50&amp;w=140&amp;h=140" alt="Thumbnail image">
{% endexample %}

Shapes with rounded edges won't work in Internet Explorer 8.
{: .alert .alert-danger }
