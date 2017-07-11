---
title: Images
sections:
  -
    title: Responsive images
  -
    title: Image shapes
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Responsive images"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-img-responsive` class to scale images nicely within their parent element. Use the
[centred block]({{ '/core/layout/#centred-block' | prepend: site.baseurl }}) classes to centre a responsive image.

{% example html %}
<img class="bsk-img-responsive" src="{{ '/img/site-masthead-tom-welsh.jpg' | prepend: site.baseurl }}" alt="Sky at Halley VI research station">
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Image shapes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<img class="bsk-img-rounded" src="https://placeholdit.imgix.net/~text?txtsize=50&amp;w=140&amp;h=140" alt="Rounded image" >
<img class="bsk-img-circle" src="https://placeholdit.imgix.net/~text?txtsize=50&amp;w=140&amp;h=140" alt="Circular image">
<img class="bsk-img-thumbnail" src="https://placeholdit.imgix.net/~text?txtsize=50&amp;w=140&amp;h=140" alt="Thumbnail image">
{% endexample %}
