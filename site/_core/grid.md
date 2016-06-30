---
title: Grid system
sections:
  -
    title: Overview
  -
    title: Available grids
  -
    title: Grid components
  -
    title: Quick start
  -
    title: Grid sizes
  -
    title: Offsetting columns
  -
    title: Nesting columns
  -
    title: Ordering columns
  -
    title: Responsive column resets
  -
    title: Examples
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

The BAS Style Kit inherits, and expands, the grid system provided by Bootstrap. **Compatibility with Bootstrap's
grid system classes is guaranteed.**

The Style Kit's additions focus on extending the grid system, to include extra sizes (break-points), and an
alternate, interchangeable, grid with more columns.

### Available grids
{: #{{ 'Available grids' | slugify }} }

{% include snippets/back-to-top.html %}

There are two grids available, which can be mixed and nested if needed. They function in exactly the same way, other
than the total number of columns.

| Grid Name     | Total Columns | Class Prefix | Core Bootstrap                                                                                  |
| ------------- | ------------- | ------------ | ----------------------------------------------------------------------------------------------- |
| Default       | 12            | `col-`       | <i class="fa fa-check" aria-hidden="true"></i> Yes                                              |
| BAS Style Kit | 24            | `col-bsk-`   | <span class="text-danger"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> No</span> |
{: .table }

The extra columns in the BAS Style Kit grid are primarily intended for use in applications, where more complex or
detailed layouts and interfaces are required.

Use the *default* grid if you are unsure which to use.
{: .alert .alert-info }

You can use both default and BAS Style Kit grid classes for a single element, however the BAS Style Kit classes will
override any default grid classes.
{: .alert .alert-info }

### Grid components
{: #{{ 'Grids components' | slugify }} }

{% include snippets/back-to-top.html %}

There are three main components within the grid system:

1. **columns** - which contain content
2. **rows** - which contain and aligns columns
3. **containers** - which contain rows, this is a
[general purpose layout feature]({{ '/core/layout/#containers' | prepend: site.baseurl }})

There are some rules for using these components:

1. all rows must be wrapped in a container, but this doesn't need to be an direct parent
2. only columns can be the direct children of rows
3. each row can't span more more than the total number of columns for each grid (i.e. either 12 or 24)

## Grid sizes
{: #{{ 'Grid sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

There are five grid sizes for the
[five responsive breakpoints]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}) available in the
Style Kit. Theses sizes are based on minimum widths, meaning they apply to that size, and all larger (wider) sizes.

<table class="table">
  <thead>
    <tr>
      <th></th>
      <th>Extra Small</th>
      <th>Small</th>
      <th>Medium</th>
      <th>Large</th>
      <th>Extra Large</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Grid Behaviour</td>
      <td>Horizontal at all times</td>
      <td colspan="4">Collapsed to start, horizontal above breakpoints</td>
    </tr>
    <tr>
      <td><a href="{{ '/core/layout/#default-container' | prepend: site.baseurl }}">Default Container</a> Width</td>
      <td>None (auto)</td>
      <td>750px</td>
      <td>970px</td>
      <td>1830px</td>
      <td>1170px</td>
    </tr>
    <tr>
      <td>Default Grid Class Prefix</td>
      <td><code>.col-xs-</code></td>
      <td><code>.col-sm-</code></td>
      <td><code>.col-md-</code></td>
      <td><code>.col-lg-</code></td>
      <td><code>.col-xl-</code></td>
    </tr>
    <tr>
      <td>BAS Style Kit Class Prefix</td>
      <td><code>.bsk-col-xs-</code></td>
      <td><code>.col-bsk-sm-</code></td>
      <td><code>.col-bsk-md-</code></td>
      <td><code>.col-bsk-lg-</code></td>
      <td><code>.col-bsk-xl-</code></td>
    </tr>
    <tr>
      <th>Column Width</th>
      <td>Auto</td>
      <td>-62px</td>
      <td>-81px</td>
      <td>-97px</td>
      <td>-153px</td>
    </tr>
    <tr>
      <td>Gutter Width</td>
      <td colspan="5">30px (15px on each side of a column)</td>
    </tr>
  </tbody>
</table>

This means that a map and accompanying text can be shown side by side on *medium* sized devices, and above, or, can be
shown full width, stacked one after the other, on smaller devices.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<div class="row">
  <div class="col-md-6">.col-md-6</div>
  <div class="col-md-6">.col-md-6</div>
</div>
{% endexample %}

{% example html %}
<div class="row">
  <div class="col-bsk-md-12">.col-bsk-md-12</div>
  <div class="col-bsk-md-12">.col-bsk-md-12</div>
</div>
{% endexample %}

## Offsetting columns
{: #{{ 'Offsetting columns' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Offset classes can be used to 'indent' columns within a row.

For example `.col-md-offset-4` offsets a column by 4 grid columns, or `.col-bsk-md-offset-8` if using the BAS Style Kit
grid.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<div class="row">
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
</div>
<div class="row">
  <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
  <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
</div>
<div class="row">
  <div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
</div>
{% endexample %}

{% example html %}
<div class="row">
  <div class="col-bsk-md-8">.col-bsk-md-8</div>
  <div class="col-bsk-md-8 col-bsk-md-offset-8">.col-bsk-md-8 .col-bsk-md-offset-8</div>
</div>
<div class="row">
  <div class="col-bsk-md-6 col-bsk-md-offset-6">.col-bsk-md-6 .col-bsk-md-offset-6</div>
  <div class="col-bsk-md-6 col-bsk-md-offset-6">.col-bsk-md-6 .col-bsk-md-offset-6</div>
</div>
<div class="row">
  <div class="col-bsk-md-12 col-bsk-md-offset-6">.col-bsk-md-12 .col-bsk-md-offset-6</div>
</div>
{% endexample %}

## Nesting columns
{: #{{ 'Nesting columns' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Rows can be used within a column to create a nested grid. Each nested grid has the same total number of grid columns,
but you don't need to use all of them. You can also nest the BAS Style Kit grid within the default grid or vice versa.

For example, a row has two columns, A and B, spanning 6 columns each in the default grid (12 columns). Column A has a
row with three nested columns, each spanning 8 columns each of the BAS Style Kit grid.

{% example html %}
<div class="row">
  <div class="col-md-6">
    Level 1: .col-sm-6 (column A)
    <div class="row">
      <div class="col-bsk-md-8">
        Level 2: .col-bsk-md-8 (1)
      </div>
      <div class="col-bsk-md-8">
        Level 2: .col-bsk-md-8 (2)
      </div>
      <div class="col-bsk-md-8">
        Level 2: .col-bsk-md-8 (3)
      </div>
    </div>
  </div>
  <div class="col-md-6">
    Level 1: .col-md-6 (column B)
  </div>
</div>
{% endexample %}

## Ordering columns
{: #{{ 'Ordering columns' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Pull and push classes can be used to order columns within a row, though this is rarely needed.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<div class="row">
  <div class="col-md-9 col-md-push-3">.col-md-9 .col-md-push-3</div>
  <div class="col-md-3 col-md-pull-9">.col-md-3 .col-md-pull-9</div>
</div>
{% endexample %}

{% example html %}
<div class="row">
  <div class="col-bsk-md-18 col-bsk-md-push-6">.col-bsk-md-18 .col-bsk-md-push-6</div>
  <div class="col-bsk-md-6 col-bsk-md-pull-18">.col-bsk-md-6 .col-bsk-md-pull-18</div>
</div>
{% endexample %}

## Examples
{: #{{ 'Examples' | slugify }} }

{% include snippets/back-to-top.html %}

See the [grid examples]({{ '/examples/grid' | prepend: site.baseurl }}) for more grid system examples.
