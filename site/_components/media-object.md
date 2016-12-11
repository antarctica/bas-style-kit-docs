---
title: Media object
sections:
  -
    title: Media object
  -
    title: Default well
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.media` class to show a left or right aligned image next to some text.

Use the `.media-object` class for the image of a media item.

Use the `.media-body` class, with an optional `.media-header` element, for the text of a media item.

## Variants
{: #{{ 'Variants' | slugify }} }

### Default media object
{: #{{ 'Default media object' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="media">
  <div class="media-left">
    <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    Media body
  </div>
</div>
{% endexample %}

### Media object list
{: #{{ 'Default media object' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the `.media-list` class on a list where each list item is a media object.

{% example html %}
<ul class="media-list">
  <li class="media">
    <div class="media-left">
      <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
  <li class="media">
    <div class="media-left">
      <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
</ul>
{% endexample %}

Media objects can also be nested.

{% example html %}
<ul class="media-list">
  <li class="media">
    <div class="media-left">
      <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
  <li class="media">
    <div class="media-left">
      <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
      <!-- Nested media object -->
      <div class="media">
        <div class="media-left">
          <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
        </div>
        <!-- Nested media object -->
        <div class="media-body">
          <h4 class="media-heading">Media heading</h4>
          Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
          The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
          <div class="media">
            <div class="media-left">
              <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
            </div>
            <div class="media-body">
              <h4 class="media-heading">Media heading</h4>
              Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
              The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
            </div>
          </div>
        </div>
      </div>
    </div>
  </li>
  <li class="media">
    <div class="media-left">
      <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Media heading</h4>
      Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
      The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
    </div>
  </li>
</ul>
{% endexample %}

## Layout
{: #{{ 'Variants' | slugify }} }

### Horizontal alignment
{: #{{ 'Horizontal alignment' | slugify }} }

{% include snippets/back-to-top.html %}

Add one of these classes to align a media object horizontally:

| Horizontal Alignment | Horizontal Alignment Class |
| -------------------- | -------------------------- |
| Left                 | `.media-left`              |
| Right                | `.media-right`             |
{: .table }

{% example html %}
<!-- Left aligned -->
<div class="media">
  <div class="media-left">
    <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>

<hr />

<!-- Right aligned -->
<div class="media">
  <div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
  <div class="media-right">
    <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
  </div>
</div>
{% endexample %}

### Vertical alignment
{: #{{ 'Vertical alignment' | slugify }} }

{% include snippets/back-to-top.html %}

| Vertical Alignment  | Vertical Alignment Class |
| ------------------- | ------------------------ |
| Middle              | `.media-middle`          |
| Bottom button       | `.media-bottom`          |
{: .table }

{% example html %}
<!-- Top aligned (default) -->
<div class="media">
  <div class="media-left">
    <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    Trillion adipisci velit star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>

<hr />

<!-- Middle aligned -->
<div class="media">
  <div class="media-left media-middle">
    <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    Trillion adipisci velit star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>

<hr />

<!-- Bottom aligned -->
<div class="media">
  <div class="media-left media-bottom">
    <a href="#"><img class="media-object" src="https://placeholdit.imgix.net/~text?txtsize=15&txt=Avatar&w=64&h=64" alt="Avatar"></a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum?
    Trillion adipisci velit star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis?
    The sky calls to us colonies, shores of the cosmic ocean? Bits of moving fluff.
  </div>
</div>
{% endexample %}
