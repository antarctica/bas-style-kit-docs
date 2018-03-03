---
title: Media object
menus:
  primary_components:
    weight: 15
sections:
  -
    title: Media object
  -
    title: Default well
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-media` class to show a left or right aligned image next to some text.

Use the `.bsk-media-object` class for the image of a media item.

Use the `.bsk-media-body` class, with an optional `.bsk-media-header` element, for the text of a media item.

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default media object item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-media">
  <div class="bsk-media-left">
    <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
  </div>
  <div class="bsk-media-body">
    <h4 class="bsk-media-heading">Media heading</h4>
    Media body
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Media object list"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-media-list` class on a list where each list item is a media object.

{% example html %}
<ul class="bsk-media-list">
  <li class="bsk-media">
    <div class="bsk-media-left">
      <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
    </div>
    <div class="bsk-media-body">
      <h4 class="bsk-media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
  <li class="bsk-media">
    <div class="bsk-media-left">
      <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
    </div>
    <div class="bsk-media-body">
      <h4 class="bsk-media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
</ul>
{% endexample %}

Media objects can also be nested.

{% example html %}
<ul class="bsk-media-list">
  <li class="bsk-media">
    <div class="bsk-media-left">
      <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
    </div>
    <div class="bsk-media-body">
      <h4 class="bsk-media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
  <li class="bsk-media">
    <div class="bsk-media-left">
      <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
    </div>
    <div class="bsk-media-body">
      <h4 class="bsk-media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
      <!-- Nested media object -->
      <div class="bsk-media">
        <div class="bsk-media-left">
          <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
        </div>
        <!-- Nested media object -->
        <div class="bsk-media-body">
          <h4 class="bsk-media-heading">Media heading</h4>
          Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
          The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
          <div class="bsk-media">
            <div class="bsk-media-left">
              <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
            </div>
            <div class="bsk-media-body">
              <h4 class="bsk-media-heading">Media heading</h4>
              Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
              The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
            </div>
          </div>
        </div>
      </div>
    </div>
  </li>
  <li class="bsk-media">
    <div class="bsk-media-left">
      <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
    </div>
    <div class="bsk-media-body">
      <h4 class="bsk-media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
</ul>
{% endexample %}

{% include topic-section-metadata.html
  title="Layout"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Horizontal alignment"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add one of these classes to align a media object horizontally:

| Horizontal Alignment | Horizontal Alignment Class |
| -------------------- | -------------------------- |
| Left                 | `.bsk-media-left`          |
| Right                | `.bsk-media-right`         |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
When using right alignment, the `.bsk-media-body` needs to be before the `.bsk-media-right` object.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<!-- Left aligned -->
<div class="bsk-media">
  <div class="bsk-media-left">
    <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
  </div>
  <div class="bsk-media-body">
    <h4 class="bsk-media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>

<hr />

<!-- Right aligned -->
<div class="bsk-media">
  <div class="bsk-media-body">
    <h4 class="bsk-media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
  <div class="bsk-media-right">
    <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Vertical alignment"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

| Vertical Alignment  | Vertical Alignment Class |
| ------------------- | ------------------------ |
| Middle              | `.bsk-media-middle`      |
| Bottom              | `.bsk-media-bottom`      |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
Vertical alignment classes need a horizontal alignment class as well to function correctly.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<!-- Top aligned (default) -->
<div class="bsk-media">
  <div class="bsk-media-left bsk-media-top">
    <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
  </div>
  <div class="bsk-media-body">
    <h4 class="bsk-media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    Trillion adipisci velit star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>

<hr />

<!-- Middle aligned -->
<div class="bsk-media">
  <div class="bsk-media-left bsk-media-middle">
    <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
  </div>
  <div class="bsk-media-body">
    <h4 class="bsk-media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    Trillion adipisci velit star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>

<hr />

<!-- Bottom aligned -->
<div class="bsk-media">
  <div class="bsk-media-left bsk-media-bottom">
    <a href="#"><img class="bsk-media-object" src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}" alt="Avatar"></a>
  </div>
  <div class="bsk-media-body">
    <h4 class="bsk-media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    Trillion adipisci velit star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>
{% endexample %}
