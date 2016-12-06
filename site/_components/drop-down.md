---
title: Drop-Down
sections:
  -
    title: Overview
  -
    title: Supported elements
  -
    title: Variants
  -
    title: Link
  -
    title: Divider
  -
    title: Header
  -
    title: Active item
  -
    title: Disabled item
  -
    title: Drop-down alignment
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.dropdown` class to create a menu that appears when triggered by a
[supported element]({{ '/components/drop-down/#supported-elements' | prepend: site.baseurl }}).

Drop-down menus are `ul` list elements, containing a set of links and other
[components]({{ '/components/drop-down/#components' | prepend: site.baseurl }}).

Always use the `.dropdown-menu-bsk` and `.dropdown-menu` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

Interactive drop-downs require the [drop-down]({{ '/interactivity/drop-down' | prepend: site.baseurl }}){: .alert-link }
JavaScript plugin, which is enabled on this site.
{: .alert .alert-info }

## Supported elements
{: #{{ 'Supported elements' | slugify }}}

These elements are supported for triggering a drop-down menu. Other elements may be used, but are not supported and may
not look right.

### Button drop-down
{: #{{ 'Button drop-down' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="dropdown">
  <button class="btn btn-bsk btn-default dropdown-toggle" type="button" id="dropdown-menu-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropdown <span class="caret"></span>
  </button>
  <ul class="dropdown-menu dropdown-menu-bsk" aria-labelledby="dropdown-menu-1">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

### Split-button drop-down
{: #{{ 'Split-button drop-down' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="btn-group">
  <button class="btn btn-bsk btn-bsk-default" type="button">Dropdown</button>
  <button class="btn btn-bsk btn-bsk-default dropdown-toggle" type="button" id="dropdown-menu-1a" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="caret"></span>
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu dropdown-menu-bsk">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

### Navbar item drop-down
{: #{{ 'Navbar item drop-downs' | slugify }}}

{% include snippets/back-to-top.html %}

See the [navbar]({{ '/components/navbar/#drop-down-menu' | prepend: site.baseurl }}) documentation for using drop-downs
in Navbar items.

## Variants
{: #{{ 'Variants' | slugify }}}

### Default drop-down
{: #{{ 'default-drop-down' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="dropdown">
  <button class="btn btn-bsk btn-default dropdown-toggle" type="button" id="dropdown-menu-2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropdown <span class="caret"></span>
  </button>
  <ul class="dropdown-menu dropdown-menu-bsk" aria-labelledby="dropdown-menu-2">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

### Reverse drop-down
{: #{{ 'reverse-drop-down' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the `.dropup` class, rather than `.dropdown` to have the drop-down menu open upwards.

{% example html %}
<div class="dropup">
  <button class="btn btn-bsk btn-default dropdown-toggle" type="button" id="dropdown-menu-3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropup <span class="caret"></span>
  </button>
  <ul class="dropdown-menu dropdown-menu-bsk" aria-labelledby="dropdown-menu-3">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }}}

### Link
{: #{{ 'Links' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="dropdown dropdown-bsk-docs-example">
  <ul class="dropdown-menu dropdown-menu-bsk">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

### Divider
{: #{{ 'Divider' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="dropdown dropdown-bsk-docs-example">
  <ul class="dropdown-menu dropdown-menu-bsk">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
{% endexample %}

### Header
{: #{{ 'Header' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="dropdown dropdown-bsk-docs-example">
  <ul class="dropdown-menu dropdown-menu-bsk">
    <li><a href="#">Action</a></li>
    <li class="dropdown-header">Dropdown header</li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

## States
{: #{{ 'States' | slugify }}}

### Active item
{: #{{ 'Active' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

if used within the [Navbar]({{ '/components/navbar' | prepend: site.baseurl }}) component, add the `.active` class to
the drop-down menu item currently active, to highlight where the end user is in the site.

Make sure to include the `<span class="sr-only">(current)</span>` attribute as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% example html %}
<div class="dropdown dropdown-bsk-docs-example">
  <ul class="dropdown-menu dropdown-menu-bsk">
    <li class="active"><span class="sr-only">(current)</span><a href="#">Active Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

### Disabled item
{: #{{ 'Disabled' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.disabled` class to drop-down menu items which cannot be used.

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

{% example html %}
<div class="dropdown dropdown-bsk-docs-example">
  <ul class="dropdown-menu dropdown-menu-bsk">
    <li class="disabled"><a href="#">Disabled Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }}}

### Drop-down alignment
{: #{{ 'Drop-down alignment' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.dropdown-menu-right` class to right align the drop-down menu
[supported element]({{ '/components/drop-down/supported-elements' | prepend: site.baseurl }}), by default the menu is
left aligned.

{% example html %}
<div class="dropdown">
  <button class="btn btn-bsk btn-default dropdown-toggle" type="button" id="dropdown-menu-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropdown (right aligned) <span class="caret"></span>
  </button>
  <ul class="dropdown-menu dropdown-menu-bsk dropdown-menu-right" aria-labelledby="dropdown-menu-4">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}
