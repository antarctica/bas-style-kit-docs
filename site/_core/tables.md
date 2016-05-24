---
title: Tables
sections:
  -
    title: Basic table
  -
    title: Striped table
  -
    title: Bordered table
  -
    title: Hoverable rows
  -
    title: Contextual rows
  -
    title: Small table
  -
    title: Responsive table
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Basic table
{: #{{ 'Basic' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the `.table` class to apply basic table styles. This class is opt-in to ensure compatibility with tables managed by
third party widgets or applications such as Apex.

{% example html %}
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
{% endexample %}

## Striped rows
{: #{{ 'Striped' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add `.table-striped` to style alternate rows with the <code>&lt;tbody&gt;</code> of a table.

This won't work in Internet Explorer 8.
{: .alert .alert-danger }

{% example html %}
<table class="table table-striped">
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
{% endexample %}

## Bordered table
{: #{{ 'Bordered' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add `.table-bordered` to apply additional borders around the table and between cells.

{% example html %}
<table class="table table-bordered">
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
{% endexample %}

## Hoverable rows
{: #{{ 'Hoverable rows' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add `.table-hover` to highlight the row with focus within a table.

{% example html %}
<table class="table table-hover">
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
{% endexample %}

## Contextual rows
{: #{{ 'Contextual rows' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used as the background of table rows using these classes:

* `.success`
* `.warning`
* `.danger`
* `.info`

You can also use the `.active` class to highlight a row as if it had focus when using the
[row hover]({{ '/core/tables/#hoverable-rows' | prepend: site.baseurl }}) styles.

{% example html %}
<table class="table">
  <thead>
    <tr>
      <th>Name</th>
      <th>Location</th>
    </tr>
  </thead>
  <tbody>
    <tr class="success">
      <td>Ny-Ålesund</td>
      <td>Svalbard, High Arctic</td>
    </tr>
    <tr class="warning">
      <td>Rothera</td>
      <td>Adelaide Island, Antarctica</td>
    </tr>
    <tr class="danger">
      <td>Halley VI</td>
      <td>Brunt Ice Shelf, Antarctica</td>
    </tr>
    <tr class="info">
      <td>Bird Island</td>
      <td>Bird Island, South Georgia</td>
    </tr>
    <tr class="active">
      <td>Signy</td>
      <td>Factory Cove, Borge Bay, Signy Island</td>
    </tr>
  </tbody>
</table>
{% endexample %}

## Small table
{: #{{ 'Small table' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add `.table-condensed` to reduce padding within a table to make it more compact.

{% example html %}
<table class="table table-condensed">
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
{% endexample %}

## Responsive table
{: #{{ 'Responsive table' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Wrap a table with the `.table-responsive` class to make them scroll horizontally on smaller devices.

Responsive tables may not be compatible with advanced mark-up such as drop-down menus and other widgets due to clipping
caused by the use of `overflow-y: hidden`.
{: .alert .alert-warning }

{% example html %}
<div class="table-responsive">
  <table class="table table-condensed">
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

Firefox requires some additional styles to fix a bug with <code>&lt;fieldset&gt;</code> elements which interferes with
responsive tables. This can be fixed using the code below, but it **is not** included in the Style Kit by default.
{: .alert .alert-danger }

```css
@-moz-document url-prefix() {
  fieldset { display: table-cell; }
}
```
