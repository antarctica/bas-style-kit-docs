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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The BAS Style Kit inherits, and expands, the grid system provided by Bootstrap.

{% include snippets/topic-section-metadata.html
  title="Available grids"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Two grids are available, which can be mixed and nested if needed. Other than the number of columns in each grid they
function in the same way. The extra columns in the alternate grid are primarily intended for use in applications, where
more complex or detailed layouts and interfaces are required.

{% alert info %}
Use the *standard* grid if you are unsure which to use.
{% endalert %}

{% alert info style=highlight %}
If can apply both standard and alternate grid classes to an element the alternate grid classes will take affect as they
are defined after the standard grid classes in the CSS file.
{% endalert %}

| Grid Name     | Total Columns | Class Prefix   |
| ------------- | ------------- | -------------- |
| Standard      | 12            | `bsk-col-12`   |
| Alternate     | 24            | `bsk-col-24`   |
{: .bsk-table .bsk-table-responsive }

{% include snippets/topic-section-metadata.html
  title="Grid components"
  heading_level=2
%}

There are three main components within the grid system:

1. **columns** - which contain content
2. **rows** - which contain and align columns
3. **containers** - which contain rows and is a
[general purpose layout feature]({{ '/core/layout/#containers' | prepend: site.baseurl }})

There are some rules for using the grid system:

1. all rows must be wrapped in a [container]({{ '/core/layout/#containers' | prepend: site.baseurl }}), but this
doesn't need to be an direct parent
2. only columns can be the direct children of rows
3. each row can't span more more than the total number of columns for each grid (i.e. either 12 or 24)

{% include snippets/topic-section-metadata.html
  title="Grid sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

There are five grid sizes for the
[five responsive breakpoints]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}) available in the
Style Kit. Theses sizes are based on minimum widths, meaning they apply to that size, and all larger (wider) sizes,
until the next minimum size is reached.

{% alert info style=highlight %}
This means that a map and accompanying text can be shown side by side on *medium* sized devices and above, or, can be
shown full width, stacked one after the other, on smaller devices.
{% endalert %}

<table class="bsk-table">
  <thead>
    <tr>
      <th></th>
      <th>Extra Small</th>
      <th>Small</th>
      <th>Medium</th>
      <th>Large</th>
      <th>Extra Large</th>
      <th>Full HD</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Grid Behaviour</th>
      <td>Horizontal at all times</td>
      <td colspan="5">Collapsed to start, horizontal above breakpoints</td>
    </tr>
    <tr>
      <th><a href="{{ '/core/layout/#default-container' | prepend: site.baseurl }}">Default Container</a> Width</th>
      <td>None (auto)</td>
      <td>750px</td>
      <td>970px</td>
      <td>1170px</td>
      <td>1754px</td>
      <td>1840px</td>
    </tr>
    <tr>
      <th>Standard Grid Class Prefix</th>
      <td><code>.bsk-col-12-xs</code></td>
      <td><code>.bsk-col-12-sm</code></td>
      <td><code>.bsk-col-12-md</code></td>
      <td><code>.bsk-col-12-lg</code></td>
      <td><code>.bsk-col-12-xl</code></td>
      <td><code>.bsk-col-12-fhd</code></td>
    </tr>
    <tr>
      <th>Alternate Grid Class Prefix</th>
      <td><code>.bsk-col-24-xs</code></td>
      <td><code>.bsk-col-24-sm</code></td>
      <td><code>.bsk-col-24-md</code></td>
      <td><code>.bsk-col-24-lg</code></td>
      <td><code>.bsk-col-24-xl</code></td>
      <td><code>.bsk-col-24-fhd</code></td>
    </tr>
    <tr>
      <th>Column Width</th>
      <td>Auto</td>
      <td>~62px</td>
      <td>~81px</td>
      <td>~97px</td>
      <td>~146px</td>
      <td>~153px</td>
    </tr>
    <tr>
      <th>Gutter Width</th>
      <td colspan="6">30px (15px on each side of a column)</td>
    </tr>
  </tbody>
</table>

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-6 bsk-docs-content-block">.bsk-col-12-md-6</div>
  <div class="bsk-col-12-md-6 bsk-docs-content-block">.bsk-col-12-md-6</div>
</div>
{% endexample %}

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-24-md-12 bsk-docs-content-block">.bsk-col-24-md-12</div>
  <div class="bsk-col-24-md-12 bsk-docs-content-block">.bsk-col-24-md-12</div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Offsetting columns"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Offset classes can be used to 'indent' columns within a row.

For example `.bsk-col-12-md-offset-4` offsets a column by 4 grid columns, or `.bsk-col-24-md-offset-8` if using the BAS
Style Kit grid.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-4 bsk-docs-content-block">.bsk-col-12-md-4</div>
  <div class="bsk-col-12-md-4 bsk-col-12-md-offset-4 bsk-docs-content-block">.bsk-col-12-md-4 .bsk-col-12-md-offset-4</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-12-md-3 bsk-col-12-md-offset-3 bsk-docs-content-block">.bsk-col-12-md-3 .bsk-col-12-md-offset-3</div>
  <div class="bsk-col-12-md-3 bsk-col-12-md-offset-3 bsk-docs-content-block">.bsk-col-12-md-3 .bsk-col-12-md-offset-3</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-12-md-6 bsk-col-12-md-offset-3 bsk-docs-content-block">.bsk-col-12-md-6 .bsk-col-12-md-offset-3</div>
</div>
{% endexample %}

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-24-md-8 bsk-docs-content-block">.bsk-col-24-md-8</div>
  <div class="bsk-col-24-md-8 bsk-col-24-md-offset-8 bsk-docs-content-block">.bsk-col-24-md-8 .bsk-col-24-md-offset-8</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-24-md-6 bsk-col-24-md-offset-6 bsk-docs-content-block">.bsk-col-24-md-6 .bsk-col-24-md-offset-6</div>
  <div class="bsk-col-24-md-6 bsk-col-24-md-offset-6 bsk-docs-content-block">.bsk-col-24-md-6 .bsk-col-24-md-offset-6</div>
</div>
<div class="bsk-row">
  <div class="bsk-col-24-md-12 bsk-col-24-md-offset-6 bsk-docs-content-block">.bsk-col-24-md-12 .bsk-col-24-md-offset-6</div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Nesting columns"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Rows can be used within a column to create a nested grid. Each nested grid has the same total number of grid columns,
but you don't need to use all of them. You can also nest the alternate grid within the standard grid or vice versa.

For example, a row has two columns, A and B, spanning 6 columns each in the standard grid (12 columns). Column A has a
row with three nested columns, each spanning 8 columns each of the alternate grid.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-6 bsk-docs-content-block">
    Level 1: .bsk-col-12-sm-6 (column A)
    <div class="bsk-row">
      <div class="bsk-col-12-bsk-md-8 bsk-docs-content-block">
        Level 2: .bsk-col-12-bsk-md-8 (1)
      </div>
      <div class="bsk-col-12-bsk-md-8 bsk-docs-content-block">
        Level 2: .bsk-col-12-bsk-md-8 (2)
      </div>
      <div class="bsk-col-12-bsk-md-8 bsk-docs-content-block">
        Level 2: .bsk-col-12-bsk-md-8 (3)
      </div>
    </div>
  </div>
  <div class="bsk-col-12-md-6 bsk-docs-content-block">
    Level 1: .bsk-col-12-md-6 (column B)
  </div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Ordering columns"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Pull and push classes can be used to order columns within a row, though this is rarely needed.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-9 bsk-col-12-md-push-3 bsk-docs-content-block">.bsk-col-12-md-9 .bsk-col-12-md-push-3</div>
  <div class="bsk-col-12-md-3 bsk-col-12-md-pull-9 bsk-docs-content-block">.bsk-col-12-md-3 .bsk-col-12-md-pull-9</div>
</div>
{% endexample %}

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-24-md-18 bsk-col-24-md-push-6 bsk-docs-content-block">.bsk-col-24-md-18 .bsk-col-24-md-push-6</div>
  <div class="bsk-col-24-md-6 bsk-col-24-md-pull-18 bsk-docs-content-block">.bsk-col-24-md-6 .bsk-col-24-md-pull-18</div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Examples"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

See the [grid examples]({{ '/examples/grid' | prepend: site.baseurl }}) for more grid system examples.
