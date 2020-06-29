---
item_type: Core
title: Tables
menus:
  primary_core:
    weight: 14
sections:
  -
    title: Basic table
  -
    title: Striped rows
  -
    title: Bordered rows
  -
    title: Hoverable rows
  -
    title: Contextual rows
  -
    title: Small table
  -
    title: Responsive table
---

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

{% capture alert_content %}
You should one use tables for tabular data. For other use cases, such as a listing of items with actions, you should
use the [grid system]({{ '/core/grid' | prepend: site.baseurl }}){: .bsk-alert-link } instead of a table so that it
works correctly on mobiles.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variations"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic table"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-table` class to apply basic table styles. This class is opt-in to ensure compatibility with tables
managed by third party widgets or applications such as Apex.

{% example html %}
<table class="bsk-table">
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

{% include topic-section-metadata.html
  title="Striped rows"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add `.bsk-table-striped` to style alternate rows with the <code>&lt;tbody&gt;</code> of a table.

{% example html %}
<table class="bsk-table bsk-table-striped">
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

{% include topic-section-metadata.html
  title="Bordered table"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add `.tbsk-able-bordered` to apply additional borders around the table and between cells.

{% example html %}
<table class="bsk-table bsk-table-bordered">
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

{% include topic-section-metadata.html
  title="Hoverable rows"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add `.bsk-table-hover` to highlight the row with focus within a table.

{% example html %}
<table class="bsk-table bsk-table-hover">
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

{% include topic-section-metadata.html
  title="Contextual rows"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual background classes]({{ '/core/colours/#standard-contextual-background-classes' | prepend: site.baseurl }}){: .bsk-alert-link }
can be used as the background of table rows using these classes:

| Standard Contextual Background | Table Cell Contextual Background Class |
| ------------------------------ | -------------------------------------- |
| Success                        | `.bsk-success`                         |
| Warning                        | `.bsk-warning`                         |
| Danger                         | `.bsk-danger`                          |
| Info                           | `.bsk-info`                            |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
These classes only work within tables. Use the
[standard contextual background classes]({{ '/core/colours/#standard-contextual-background-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
to use them in other situations.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

You can also use the `.bsk-active` class to highlight a row as if it had focus when using the
[row hover]({{ '/core/tables/#hoverable-rows' | prepend: site.baseurl }}) styles.

{% example html %}
<table class="bsk-table">
  <thead>
    <tr>
      <th>Name</th>
      <th>Location</th>
    </tr>
  </thead>
  <tbody>
    <tr class="bsk-success">
      <td>Ny-Ålesund</td>
      <td>Svalbard, High Arctic</td>
    </tr>
    <tr class="bsk-warning">
      <td>Rothera</td>
      <td>Adelaide Island, Antarctica</td>
    </tr>
    <tr class="bsk-danger">
      <td>Halley VI</td>
      <td>Brunt Ice Shelf, Antarctica</td>
    </tr>
    <tr class="bsk-info">
      <td>Bird Island</td>
      <td>Bird Island, South Georgia</td>
    </tr>
    <tr class="bsk-active">
      <td>Signy</td>
      <td>Factory Cove, Borge Bay, Signy Island</td>
    </tr>
  </tbody>
</table>
{% endexample %}

{% include topic-section-metadata.html
  title="Small table"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add `.bsk-table-condensed` to reduce padding within a table to make it more compact.

{% example html %}
<table class="bsk-table bsk-table-condensed">
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

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Responsive table"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Wrap a table with the `.bsk-table-responsive` class to make them scroll horizontally on smaller devices.

{% capture alert_content %}
Responsive tables may not be compatible with advanced mark-up such as drop-down menus and other widgets due to clipping
caused by the use of `overflow-y: hidden`.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-table-responsive">
  <table class="bsk-table bsk-table-condensed">
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

{% capture alert_content %}
Firefox requires some additional styles to fix a bug with <code>&lt;fieldset&gt;</code> elements which interferes with
responsive tables. This can be fixed using the code below, but it **is not** included in the Style Kit by default.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="outline"
  content=alert_content
%}

```css
@-moz-document url-prefix() {
  fieldset { display: table-cell; }
}
```
