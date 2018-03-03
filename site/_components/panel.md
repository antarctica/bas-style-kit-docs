---
title: Panel
menus:
  primary_components:
    weight: 20
sections:
  -
    title: Overview
  -
    title: Default panel
  -
    title: Primary panel
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

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-panel` class to display information that is distinct from main content, but which is shown **within** it.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/panel/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
panel, otherwise it will look strange. It is not enough to use `.bsk-panel` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
**Heads up!** Panel elements are not yet fully styled, but will be in the next version of the Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
See the [Sidebar]({{ '/components/sidebar' | prepend: site.baseurl }}){: .bsk-alert-link } component to display
information that is distinct from main content, but which is shown **next to** it.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
See the [Thumbnail]({{ '/components/thumbnail' | prepend: site.baseurl }}){: .bsk-alert-link } component to display
media items that are distinct from main content, but which is shown **within** it.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default panel"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-panel-default` class for standard panels. For added context you can use
[contextual colours]({{ '/components/panel/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<div class="bsk-panel bsk-panel-default">
  <main class="bsk-panel-body">
    Default panel example
  </main>
</div>
{% endexample %}

A more typical example includes a [header]({{ '/components/panel/#header' | prepend: site.baseurl }}).

{% example html %}
<div class="bsk-panel bsk-panel-default">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Default panel example title</h3>
  </header>
  <main class="bsk-panel-body">
    Default panel example body
  </main>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Primary panel"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-panel-primary` class for the most important panel, where there is more than one.

{% example html %}
<div class="bsk-panel bsk-panel-primary">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Primary panel example title</h3>
  </header>
  <main class="bsk-panel-body">
    Primary panel example body
  </main>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Panel Contextual Class     |
| ---------------- | -------------------------- |
| Success          | `.bsk-panel-success`       |
| Warning          | `.bsk-panel-warning`       |
| Danger           | `.bsk-panel-danger`        |
| Info             | `.bsk-panel-info`          |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-panel bsk-panel-success">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Success panel example title</h3>
  </header>
  <main class="bsk-panel-body">
    Success panel example body
  </main>
</div>

<div class="bsk-panel bsk-panel-warning">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Warning panel example title</h3>
  </header>
  <main class="bsk-panel-body">
    Warning panel example body
  </main>
</div>

<div class="bsk-panel bsk-panel-danger">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Danger panel example title</h3>
  </header>
  <main class="bsk-panel-body">
    Danger panel example body
  </main>
</div>

<div class="bsk-panel bsk-panel-info">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Info panel example title</h3>
  </header>
  <main class="bsk-panel-body">
    Info panel example body
  </main>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Body"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

Use `.bsk-panel-body` class on a <code>&lt;main&gt;</code> element within a panel for its contents.

{% example html %}
<div class="bsk-panel bsk-panel-default">
  <main class="bsk-panel-body">
    Example panel body
  </main>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Header"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-panel-heading` class on a <code>&lt;header&gt;</code> element within a panel to add a header.

Use the `.bsk-panel-title` class on a [heading]({{ '/core/type/#headings' | prepend: site.baseurl }}) element to correctly
style links within panel headings.

{% example html %}
<div class="bsk-panel bsk-panel-default">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Example panel title</h3>
  </header>
</div>

<div class="bsk-panel bsk-panel-default">
  <header class="bsk-panel-heading">
    <h3 class="bsk-panel-title">Example panel title</h3>
  </header>
  <main class="bsk-panel-body">
    Default panel example body
  </main>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Footer"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

Use `.bsk-panel-footer` class on a <code>&lt;footer&gt;</code> element within a panel to add a footer.

Panel footers don't inherit colors and borders when using contextual variations as they are not meant to be in the
foreground.
{: .alert .alert-info }

{% example html %}
<div class="bsk-panel bsk-panel-default">
  <footer class="bsk-panel-footer">
    Example panel footer
  </footer>
</div>

<div class="bsk-panel bsk-panel-default">
  <main class="bsk-panel-body">
    Default panel example body
  </main>
  <footer class="bsk-panel-footer">
    Example panel footer
  </footer>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Table"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

[Tables]({{ '/core/tables' | prepend: site.baseurl }}) can be added to panels directly. Providing table borders aren't
used they will look seamless, a dividing border will be added automatically if a
[panel body]({{ '/components/panel/#body' | prepend: site.baseurl }}) is used.

{% capture alert_content %}
Don't put tables **within** [panel bodies]({{ '/components/panel/#body' | prepend: site.baseurl }}){: .bsk-alert-link },
as they may look strange.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-panel bsk-panel-default">
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
</div>

<div class="bsk-panel bsk-panel-default">
  <main class="bsk-panel-body">
    Example panel body
  </main>
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
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="List group"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  included="yes"
%}

[List groups]({{ '/components/list-group' | prepend: site.baseurl }}) can be added to panels directly. A dividing border
will be added automatically if a [panel body]({{ '/components/panel/#body' | prepend: site.baseurl }}) is used.

{% capture alert_content %}
Don't put list groups **within**
[panel bodies]({{ '/components/panel/#body' | prepend: site.baseurl }}){: .bsk-alert-link }, as they may look strange.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-panel bsk-panel-default">
  <ul class="bsk-list-group">
    <li class="bsk-list-group-item">List group item</li>
    <li class="bsk-list-group-item">Another list group item</li>
  </ul>
</div>

<div class="bsk-panel bsk-panel-default">
  <main class="bsk-panel-body">
    Example panel body
  </main>
  <ul class="bsk-list-group">
    <li class="bsk-list-group-item">List group item</li>
    <li class="bsk-list-group-item">Another list group item</li>
  </ul>
</div>
{% endexample %}
