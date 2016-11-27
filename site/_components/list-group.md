---
title: List Group
sections:
  -
    title: Overview
  -
    title: Basic list group
  -
    title: Link list group
  -
    title: Button list group
  -
    title: Custom list group
  -
    title: Active item
  -
    title: Disabled item
  -
    title: Badges
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.list-group` class for displaying stacked content, either as a minimal list, or more advanced custom layout.

Use the `.list-group-item` for items within a list group, see the details of each .

## Supported elements
{: #{{ 'Supported elements' | slugify }}}

{% include snippets/back-to-top.html %}

Different [variants]({{ '/components/list-group/#variants' | prepend: site.baseurl }}) are designed for different
supporting elements, as documented. Other elements may be used, but are not supported and may not look right.

## Variants
{: #{{ 'Variants' | slugify }}}

### Basic list group
{: #{{ 'Basic list group' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

Use the `.list-group` class with a <code>&lt;ul&gt;</code> element.

Use the `.list-group-item` class with <code>&lt;li&gt;</code> elements.

{% example html %}
<ul class="list-group">
  <li class="list-group-item">List group item</li>
  <li class="list-group-item">Another list group item</li>
</ul>
{% endexample %}

### Linked list group
{: #{{ 'Linked list group' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

use the `.list-group` class with a <code>&lt;div&gt;</code> element.

Use the `.list-group-item` class with <code>&lt;a&gt;</code> elements.

{% example html %}
<div class="list-group">
  <a href="#" class="list-group-item">list group item</a>
  <a href="#" class="list-group-item">Another list group item</a>
</div>
{% endexample %}

### Contextual colours
{: #{{ 'contextual colours' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

* `.list-group-item-success`
* `.list-group-item-warning`
* `.list-group-item-danger`
* `.list-group-item-info`

{% example html %}
<ul class="list-group">
  <li class="list-group-item list-group-item-success">Successful list group item</li>
  <li class="list-group-item list-group-item-warning">Warning list group item</li>
  <li class="list-group-item list-group-item-danger">Danger list group item</li>
  <li class="list-group-item list-group-item-info">Info list group item</li>
</ul>
{% endexample %}

### Button list group
{: #{{ 'Button list group' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

use the `.list-group` class with a <code>&lt;div&gt;</code> element.

Use the `.list-group-item` class with <code>&lt;button&gt;</code> elements.

Do not use the `.btn` and `.btn-bsk` classes for <code>&lt;button&gt;</code> elements within button list groups.
{: .alert .alert-danger }

{% example html %}
<div class="list-group">
  <button type="button" class="list-group-item">Active list group item</button>
  <button type="button" class="list-group-item">Another list group item</button>
</div>
{% endexample %}

### Custom list group
{: #{{ 'Custom list group' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

...

## States
{: #{{ 'Components' | slugify }}}

### Active item
{: #{{ 'Active item' | slugify }}}

Add the `.active` class to the list group item currently active, to highlight where the end user is in the site.

Make sure to include the `<span class="sr-only">(current)</span>` attribute as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% include snippets/back-to-top.html %}

{% example html %}
<!-- Basic list group -->
<ul class="list-group">
  <li class="list-group-item active">Active list group item</li>
  <li class="list-group-item">Another list group item</li>
  <li class="list-group-item disabled">Disabled list group item</li>
</ul>

<!-- Link list group -->
<div class="list-group">
  <a href="#" class="list-group-item active">Active list group item</a>
  <a href="#" class="list-group-item">Another list group item</a>
  <a href="#" class="list-group-item disabled">Disabled list group item</a>
</div>

<!-- Button list group -->
<div class="list-group">
  <button type="button" class="list-group-item active">List group item</button>
  <button type="button" class="list-group-item">Another list group item</button>
  <button type="button" class="list-group-item disabled">Disabled list group item</button>
</div>
{% endexample %}

### Disabled item
{: #{{ 'Disabled item' | slugify }}}

{% include snippets/back-to-top.html %}

Add the `.disabled` class to list group items which cannot be used.

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

{% example html %}
<!-- Basic list group -->
<ul class="list-group">
  <li class="list-group-item">List group item</li>
  <li class="list-group-item disabled">Disabled list group item</li>
</ul>

<!-- Link list group -->
<div class="list-group">
  <a href="#" class="list-group-item">List group item</a>
  <a href="#" class="list-group-item disabled">Disabled list group item</a>
</div>

<!-- Button list group -->
<div class="list-group">
  <button type="button" class="list-group-item">List group item</button>
  <button type="button" class="list-group-item disabled">Disabled list group item</button>
</div>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }}}

### Badges
{: #{{ 'Badges' | slugify }}}

[Badges]({{ '/components/badge' | prepend: site.baseurl }}) can be used within list items, in all list group
[variants]({{ '/components/list-group/#variants' | prepend: site.baseurl }}), and will be aligned to the right.

{% example html %}
<!-- Basic list group -->
<ul class="list-group">
  <li class="list-group-item">List group item <span class="badge">4</span></li>
  <li class="list-group-item">Another list group item <span class="badge">4</span></li>
</ul>

<!-- Link list group -->
<div class="list-group">
  <a href="#" class="list-group-item">List group item <span class="badge">4</span></a>
  <a href="#" class="list-group-item">Another list group item <span class="badge">4</span></a>
</div>

<!-- Button list group -->
<div class="list-group">
  <button type="button" class="list-group-item">List group item <span class="badge">4</span></button>
  <button type="button" class="list-group-item">Another list group item <span class="badge">4</span></button>
</div>
{% endexample %}
