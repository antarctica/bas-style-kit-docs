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

* <span class="label label-phase label-phase-live">Live</span> since version **0.1.0**
* Bootstrap style
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
{: .bsk-docs-section-metadata }

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

* <span class="label label-phase label-phase-live">Live</span> since version **0.1.0**
* Bootstrap style
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
{: .bsk-docs-section-metadata }

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

* <span class="label label-phase label-phase-live">Live</span> since version **0.1.0**
* Bootstrap style
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
{: .bsk-docs-section-metadata }

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

* <span class="label label-phase label-phase-live">Live</span> since version **0.1.0**
* Bootstrap style
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
{: .bsk-docs-section-metadata }

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


## Small table
{: #{{ 'Small table' | slugify }} }

* <span class="label label-phase label-phase-live">Live</span> since version **0.1.0**
* Bootstrap style
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
{: .bsk-docs-section-metadata }

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

* <span class="label label-phase label-phase-live">Live</span> since version **0.1.0**
* Bootstrap style
* <i class="fa fa-check" aria-hidden="true"></i> Included in Core Style Kit
{: .bsk-docs-section-metadata }

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
