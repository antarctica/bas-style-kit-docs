---
layout: topic
title: Grid system examples
sections:
  -
    title: Stacked to horizontal
  -
    title: Mobile and desktop
  -
    title: Column wrapping
  -
    title: Responsive column resets
---

{% include snippets/table-of-contents.md %}

## Example: Stacked to horizontal
{: #{{ 'stacked to horizontal' | slugify }} }

{% include snippets/back-to-top.html %}

Creates a basic grid system that starts out stacked on small devices before becoming horizontal on wider (medium)
devices.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<div class="row bsk-docs-grid-example">
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
  <div class="col-md-1">.col-md-1</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-md-8">.col-md-8</div>
  <div class="col-md-4">.col-md-4</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4">.col-md-4</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-md-6">.col-md-6</div>
  <div class="col-md-6">.col-md-6</div>
</div>
{% endexample %}

{% example html %}
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
  <div class="col-bsk-md-1">.col-bsk-md-1</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
  <div class="col-bsk-md-2">.col-md-2</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-md-16">.col-bsk-md-16</div>
  <div class="col-bsk-md-8">.col-bsk-md-8</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-md-8">.col-bsk-md-8</div>
  <div class="col-bsk-md-8">.col-bsk-md-8</div>
  <div class="col-bsk-md-8">.col-bsk-md-8</div>
</div>
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-md-12">.col-bsk-md-12</div>
  <div class="col-bsk-md-12">.col-bsk-md-12</div>
</div>
{% endexample %}

## Example: Grid sizes
{: #{{ 'Grid sizes' | slugify }} }

{% include snippets/back-to-top.html %}

Using the various grid size classes its possible layout a grid of items such that the number of items in each row
increases with each grid size. For example, at the smallest grid size 2 items may be shown per row, then 4, then 6, etc.

Usually it's best to let content at very small sizes stack naturally, however you can target the extra small grid size
where you always want items to be side by side.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<!-- Columns are always 50% wide -->
<div class="row bsk-docs-grid-example">
  <div class="col-xs-6">.col-xs-6</div>
  <div class="col-xs-6">.col-xs-6</div>
</div>

<!-- Columns start at 50% wide on the smallest devices, then 25%, then 12.5%, etc. on wider devices -->
<div class="row bsk-docs-grid-example">
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
  <div class="col-xs-6 col-md-4 col-lg-2">.col-xs-6 .col-md-4 .col-lg-2</div>
</div>
{% endexample %}

{% example html %}
<!-- Columns are always 50% wide -->
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-xs-12">.col-bsk-xs-12</div>
  <div class="col-bsk-xs-12">.col-bsk-xs-12</div>
</div>

<!-- Columns start at 50% wide on the smallest devices, then 33.3%, then 25%, etc. on wider devices -->
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6 col-bsk-md-4 col-bsk-lg-2 col-bsk0xl-1">.col-bsk-xs-12 .col-bsk-sm-6 .col-bsk-md-4 .col-bsk-lg-2 .col-bsk-xl-1</div>
</div>
{% endexample %}

## Example: Column wrapping
{: #{{ 'Column wrapping' | slugify }} }

{% include snippets/back-to-top.html %}

If more than the total number of columns for each grid are placed within a single row, each group of extra columns
will, as one unit, wrap onto a new line.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<div class="row bsk-docs-grid-example">
  <div class="col-xs-9">.col-xs-9</div>
  <div class="col-xs-4">.col-xs-4<br>Since 9 + 4 = 13 &gt; 12, this 4-column-wide div gets wrapped onto a new line as one contiguous unit.</div>
  <div class="col-xs-6">.col-xs-6<br>Subsequent columns continue along the new line.</div>
</div>
{% endexample %}

{% example html %}
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-xs-18">.col-bsk-xs-18</div>
  <div class="col-bsk-xs-8">.col-bsk-xs-8<br>Since 18 + 8 = 26 &gt; 24, this 8-column-wide div gets wrapped onto a new line as one contiguous unit.</div>
  <div class="col-bsk-xs-12">.col-bsk-xs-12<br>Subsequent columns continue along the new line.</div>
</div>
{% endexample %}

## Example: Responsive column resets
{: #{{ 'Responsive column resets' | slugify }} }

{% include snippets/back-to-top.html %}

Clear floats at specific breakpoints to prevent awkward wrapping with uneven content.

The first example uses the *default* grid, the second uses the *BAS Style Kit* grid.
{: .alert .alert-info }

{% example html %}
<div class="row bsk-docs-grid-example">
  <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3 Resize your viewport or check it out on your phone for an example.</div>
  <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>

  <!-- Add the extra clearfix for only the required viewport -->
  <div class="clearfix visible-xs-block"></div>

  <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
  <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
</div>
{% endexample %}

{% example html %}
<div class="row bsk-docs-grid-example">
  <div class="col-bsk-xs-12 col-bsk-sm-6">.col-bsk-xs-12 .col-bsk-sm-6 Resize your viewport or check it out on your phone for an example.</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6">.col-bsk-xs-12 .col-bsk-sm-6</div>

  <!-- Add the extra clearfix for only the required viewport -->
  <div class="clearfix visible-xs-block"></div>

  <div class="col-bsk-xs-12 col-bsk-sm-6">.col-bsk-xs-12 .col-bsk-sm-6</div>
  <div class="col-bsk-xs-12 col-bsk-sm-6">.col-bsk-xs-12 .col-bsk-sm-6</div>
</div>
{% endexample %}
