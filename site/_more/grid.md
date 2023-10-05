---
item_type: Example
title: Grid system examples
menus:
  primary_more:
    weight: 3
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

## Example: Stacked to horizontal
{: #{{ 'stacked to horizontal' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

Creates a basic grid system that starts out stacked on small devices before becoming horizontal on wider (medium)
devices.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-8 bsk-docs-content-block">.bsk-col-md-8</div>
  <div class="bsk-col-md-4 bsk-docs-content-block">.bsk-col-md-4</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-4 bsk-docs-content-block">.bsk-col-md-4</div>
  <div class="bsk-col-md-4 bsk-docs-content-block">.bsk-col-md-4</div>
  <div class="bsk-col-md-4 bsk-docs-content-block">.bsk-col-md-4</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-6 bsk-docs-content-block">.bsk-col-md-6</div>
  <div class="bsk-col-md-6 bsk-docs-content-block">.bsk-col-md-6</div>
</div>
{% endexample %}

<!-- {% example html %}
<div class="bsk-row">
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
  <div class="bsk-col-md-1 bsk-docs-content-block">.bsk-col-md-1</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
  <div class="bsk-col-md-2 bsk-docs-content-block">.bsk-col-md-2</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-16 bsk-docs-content-block">.bsk-col-md-16</div>
  <div class="bsk-col-md-8 bsk-docs-content-block">.bsk-col-md-8</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-8 bsk-docs-content-block">.bsk-col-md-8</div>
  <div class="bsk-col-md-8 bsk-docs-content-block">.bsk-col-md-8</div>
  <div class="bsk-col-md-8 bsk-docs-content-block">.bsk-col-md-8</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-md-12 bsk-docs-content-block">.bsk-col-md-12</div>
  <div class="bsk-col-md-12 bsk-docs-content-block">.bsk-col-md-12</div>
</div>
{% endexample %} -->

## Example: Grid sizes
{: #{{ 'Grid sizes' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

Using the various grid size classes its possible layout a grid of items such that the number of items in each row
increases with each grid size. For example, at the smallest grid size 2 items may be shown per row, then 4, then 6, etc.

Usually it's best to let content at very small sizes stack naturally, however you can target the extra small grid size
where you always want items to be side by side.

{% example html %}
<!-- Columns are always 50% wide -->
<div class="bsk-row">
  <div class="bsk-col-6 bsk-docs-content-block">.bsk-col-6</div>
  <div class="bsk-col-6 bsk-docs-content-block">.bsk-col-6</div>
</div>

<!-- Columns start at 50% wide on the smallest devices, then 25%, then 12.5%, etc. on wider devices -->
<div class="bsk-row">
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
  <div class="bsk-col-6 bsk-col-md-4 bsk-col-lg-2 bsk-docs-content-block">
    .bsk-col-6 .bsk-col-md-4 .bsk-col-lg-2
  </div>
</div>
{% endexample %}


## Example: Column wrapping
{: #{{ 'Column wrapping' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

If more than the total number of columns for each grid are placed within a single row, each group of extra columns
will, as one unit, wrap onto a new line.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-9 bsk-docs-content-block">.col-9</div>
  <div class="bsk-col-4 bsk-docs-content-block">
    .col-4<br>Since 9 + 4 = 13 &gt; 12, this 4-column-wide div gets wrapped onto a new line as one contiguous unit.
  </div>
  <div class="bsk-col-6 bsk-docs-content-block">.col-6<br>Subsequent columns continue along the new line.</div>
</div>
{% endexample %}

## Example: Responsive column resets
{: #{{ 'Responsive column resets' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

Clear floats at specific breakpoints to prevent awkward wrapping with uneven content.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-6 bsk-col-sm-3 bsk-docs-content-block">.bsk-col-6 .bsk-col-sm-3 Resize your viewport or view on a phone for an example.</div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-docs-content-block">.bsk-col-6 .bsk-col-sm-3</div>

  <!-- Add the extra clearfix for only the required viewport -->
  <div class="bsk-clearfix bsk-visible-xs-block"></div>

  <div class="bsk-col-6 bsk-col-sm-3 bsk-docs-content-block">.bsk-col-6 .bsk-col-sm-3</div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-docs-content-block">.bsk-col-6 .bsk-col-sm-3</div>
</div>
{% endexample %}
