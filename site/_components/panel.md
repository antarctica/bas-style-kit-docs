---
title: Panel
sections:
  -
    title: Overview
  -
    title: Default
  -
    title: Primary
  -
    title: Contextual colours
  -
    title: Body
  -
    title: Header
  -
    title: Footer
  -
    title: Table
  -
    title: List group
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.panel` class to display information that is distinct from main content, but which is shown **within** it.

You **must** pick a [variant]({{ '/components/panel/#variants' | prepend: site.baseurl }}){: .alert-link } for each
panel, otherwise it will look strange. It is not enough to use `.panel` on its own.
{: .alert .alert-warning }

See the [Sidebar]({{ '/components/sidebar' | prepend: site.baseurl }}){: .alert-link } component to display information
that is distinct from main content, but which is shown **next to** it.
{: .alert .alert-info }

## Variants
{: #{{ 'Variants' | slugify }}}

### Default
{: #{{ 'Default' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.panel-default` class for standard panels. For added context you can use
[contextual colours]({{ '/components/panel/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<div class="panel panel-default">
  <main class="panel-body">
    Default panel example
  </main>
</div>
{% endexample %}

A more typical example includes a [header]({{ '/components/panel/#header' | prepend: site.baseurl }}).

{% example html %}
<div class="panel panel-default">
  <header class="panel-heading">
    <h3 class="panel-title">Default panel example title</h3>
  </header>
  <main class="panel-body">
    Default panel example body
  </main>
</div>
{% endexample %}

### Primary
{: #{{ 'Primary' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.panel-primary` class for the most important panel, where there is more than one.

{% example html %}
<div class="panel panel-primary">
  <header class="panel-heading">
    <h3 class="panel-title">Primary panel example title</h3>
  </header>
  <main class="panel-body">
    Primary panel example body
  </main>
</div>
{% endexample %}

### Contextual colours
{: #{{ 'Contextual colours' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for adding context to buttons using these classes:

* `.panel-success`
* `.panel-warning`
* `.panel-danger`
* `.panel-info`

{% example html %}
<div class="panel panel-success">
  <header class="panel-heading">
    <h3 class="panel-title">Success panel example title</h3>
  </header>
  <main class="panel-body">
    Success panel example body
  </main>
</div>

<div class="panel panel-warning">
  <header class="panel-heading">
    <h3 class="panel-title">Warning panel example title</h3>
  </header>
  <main class="panel-body">
    Warning panel example body
  </main>
</div>

<div class="panel panel-danger">
  <header class="panel-heading">
    <h3 class="panel-title">Danger panel example title</h3>
  </header>
  <main class="panel-body">
    Danger panel example body
  </main>
</div>

<div class="panel panel-info">
  <header class="panel-heading">
    <h3 class="panel-title">Info panel example title</h3>
  </header>
  <main class="panel-body">
    Info panel example body
  </main>
</div>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }}}

### Body
{: #{{ 'Body' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use `.panel-body` class on a <code>&lt;main&gt;</code> element within a panel for its contents.

{% example html %}
<div class="panel panel-default">
  <main class="panel-body">
    Example panel body
  </main>
</div>
{% endexample %}

### Header
{: #{{ 'Header' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the `.panel-heading` class on a <code>&lt;header&gt;</code> element within a panel to add a header.

Use the `.panel-title` class on a [heading]({{ '/core/type/#headings' | prepend: site.baseurl }}) element to correctly
style links within panel headings.

{% example html %}
<div class="panel panel-default">
  <header class="panel-heading">
    <h3 class="panel-title">Example panel title</h3>
  </header>
</div>

<div class="panel panel-default">
  <header class="panel-heading">
    <h3 class="panel-title">Example panel title</h3>
  </header>
  <main class="panel-body">
    Default panel example body
  </main>
</div>
{% endexample %}

### Footer
{: #{{ 'Footer' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use `.panel-footer` class on a <code>&lt;footer&gt;</code> element within a panel to add a footer.

Panel footers don't inherit colors and borders when using contextual variations as they are not meant to be in the
foreground.
{: .alert .alert-info }

{% example html %}
<div class="panel panel-default">
  <footer class="panel-footer">
    Example panel footer
  </footer>
</div>

<div class="panel panel-default">
  <main class="panel-body">
    Default panel example body
  </main>
  <footer class="panel-footer">
    Example panel footer
  </footer>
</div>
{% endexample %}

### Table
{: #{{ 'Table' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

[Tables]({{ '/core/tables' | prepend: site.baseurl }}) can be added to panels directly. Providing table borders aren't
used they will look seamless, a dividing border will be added automatically if a
[panel body]({{ '/components/panel/#body' | prepend: site.baseurl }}) is used.

Don't put tables **within** [panel bodies]({{ '/components/panel/#body' | prepend: site.baseurl }}){: .alert-link }, as they may look
strange.
{: .alert .alert-warning }

{% example html %}
<div class="panel panel-default">
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Location</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Ny-Ålesund</td>
        <td>Svalbard, High Arctic</td>
      </tr>
      <tr>
        <td>Rothera</td>
        <td>Adelaide Island, Antarctica</td>
      </tr>
      <tr>
        <td>Halley VI</td>
        <td>Brunt Ice Shelf, Antarctica</td>
      </tr>
    </tbody>
  </table>
</div>

<div class="panel panel-default">
  <main class="panel-body">
    Example panel body
  </main>
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Location</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Ny-Ålesund</td>
        <td>Svalbard, High Arctic</td>
      </tr>
      <tr>
        <td>Rothera</td>
        <td>Adelaide Island, Antarctica</td>
      </tr>
      <tr>
        <td>Halley VI</td>
        <td>Brunt Ice Shelf, Antarctica</td>
      </tr>
    </tbody>
  </table>
</div>
{% endexample %}

### List group
{: #{{ 'List group' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

[List groups]({{ '/components/list-group' | prepend: site.baseurl }}) can be added to panels directly. A dividing border
will be added automatically if a [panel body]({{ '/components/panel/#body' | prepend: site.baseurl }}) is used.

Don't put list groups **within** [panel bodies]({{ '/components/panel/#body' | prepend: site.baseurl }}){: .alert-link }
, as they may look strange.
{: .alert .alert-warning }

{% example html %}
<div class="panel panel-default">
  <ul class="list-group">
    <li class="list-group-item">List group item</li>
    <li class="list-group-item">Another list group item</li>
  </ul>
</div>

<div class="panel panel-default">
  <main class="panel-body">
    Example panel body
  </main>
  <ul class="list-group">
    <li class="list-group-item">List group item</li>
    <li class="list-group-item">Another list group item</li>
  </ul>
</div>
{% endexample %}
