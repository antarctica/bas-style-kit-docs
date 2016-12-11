---
title: Navigation
sections:
  -
    title: Overview
  -
    title: Pill navigation
  -
    title: Tab navigation
  -
    title: Components
  -
    title: States
  -
    title: Layouts
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.nav` class to create secondary navigation elements, for splitting content into logical sections.

Each navigation item must use an <code>&lt;a&gt;</code> element.

For assistive technologies, all navigation elements should use a `role=navigation` attribute on an element which wraps
around the element using the `.nav` class.
{: .alert .alert-warning }

Interactive tabs and pills require the [tabs]({{ '/interactivity/tab' | prepend: site.baseurl }}){: .alert-link }
JavaScript plugin, which is enabled on this site.
{: .alert .alert-info }

## Variants
{: #{{ 'Variants' | slugify }} }

### Pill navigation
{: #{{ 'Pill navigation' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.nav-pills` and `.nav-pills-bsk` classes to create a minimalist navigation element.

Always use the `.nav-tabs-bsk` and `.nav-tabs` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

{% example html %}
<nav role="navigation">
  <ul class="nav nav-pills nav-pills-bsk">
    <li role="presentation" class="active"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 1</a></li>
  </ul>
</nav>
{% endexample %}

### Tab navigation
{: #{{ 'Pill navigation' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.nav-tabs` and `.nav-tabs-bsk` classes to create a more structured navigation element.

Always use the `.nav-tabs-bsk` and `.nav-tabs` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

{% example html %}
<nav role="navigation">
  <ul class="nav nav-tabs nav-tabs-bsk">
    <li role="presentation" class="active"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
    <li role="presentation"><a href="#">Tab 3</a></li>
  </ul>
</nav>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }} }

### Drop-down menus
{: #{{ 'Drop-down menus' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

[Drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}) can be used as navigation items as-is.

Remember to always use `.dropdown-menu-bsk` and `.dropdown-menu` together so that Style Kit specific styles are applied.
{: .alert .alert-info }

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="nav nav-pills nav-pills-bsk">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
    <li role="presentation" class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="caret"></span></a>
      <ul class="dropdown-menu dropdown-menu-bsk">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="nav nav-tabs nav-tabs-bsk">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
    <li role="presentation" class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="caret"></span></a>
      <ul class="dropdown-menu dropdown-menu-bsk">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

## States
{: #{{ 'States' | slugify }} }

### Active item state
{: #{{ 'Active state' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.active` class to the navigation item currently active, to highlight where the end user is in the site.

Make sure to include the `<span class="sr-only">(current)</span>` attribute as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="nav nav-pills nav-pills-bsk">
    <li role="presentation" class="active"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="nav nav-tabs nav-tabs-bsk">
    <li role="presentation" class="active"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}

This can also be used within [drop-down]({{ '/components/drop-down/#active' | prepend: site.baseurl }}) menus if needed.
{: .alert .alert-info }

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="nav nav-pills nav-pills-bsk">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
    <li role="presentation" class="dropdown active">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="caret"></span></a>
      <ul class="dropdown-menu dropdown-menu-bsk">
        <li class="active"><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="nav nav-tabs nav-tabs-bsk">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
    <li role="presentation" class="dropdown active">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="caret"></span></a>
      <ul class="dropdown-menu dropdown-menu-bsk">
        <li class="active"><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

### Disabled state
{: #{{ 'Disabled state' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.disabled` class to indicate unavailable navigation items.

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="nav nav-pills nav-pills-bsk">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation" class="disabled"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="nav nav-tabs nav-tabs-bsk">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation" class="disabled"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}

## Layouts
{: #{{ 'States' | slugify }} }

### Stacked pills
{: #{{ 'Stacked pills' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.nav-stacked` class to arrange pills vertically.

Stacked tabs are not supported.
{: .alert .alert-warning }

{% example html %}
<nav role="navigation">
  <ul class="nav nav-stacked nav-pills nav-pills-bsk">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

### Justified pills/tabs
{: #{{ 'Justified pills/tabs' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.nav-justified` class to display equally navigation items filling the width of the navigation element.
On smaller screens, the navigation items are stacked.

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="nav nav-justified nav-pills nav-pills-bsk">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="nav nav-justified nav-tabs nav-tabs-bsk">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}