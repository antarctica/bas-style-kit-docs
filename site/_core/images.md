---
item_type: Core
title: Images
menus:
  primary_core:
    weight: 9
sections:
  -
    title: Responsive images
  -
    title: Image shapes
---

{% include topic-section-metadata.html
  title="Responsive images"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-img-responsive` class to scale images nicely within their parent element. Use the
[centred block]({{ '/core/layout/#centred-block' | prepend: site.baseurl }}) classes to centre a responsive image.

{% example html %}
<img class="bsk-img-responsive" src="{{ '/img/site-masthead-tom-welsh.jpg' | prepend: site.baseurl }}" alt="Sky at Halley VI research station">
{% endexample %}

{% include topic-section-metadata.html
  title="Image shapes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.2.0"
  included="yes"
%}

{% example html %}
<img class="bsk-img-rounded" src="{{ '/img/placeholder-150.png' | prepend: site.baseurl }}" alt="Rounded image" >
<img class="bsk-img-circle" src="{{ '/img/placeholder-150.png' | prepend: site.baseurl }}" alt="Circular image">
<img class="bsk-img-thumbnail" src="{{ '/img/placeholder-150.png' | prepend: site.baseurl }}" alt="Thumbnail image">
{% endexample %}
