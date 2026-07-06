---
item_type: Component
title: Card
menus:
  primary_components:
    weight: 7
sections:
  -
    title: Overview
  -
    title: Default card
  -
    title: Card title
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

Use the `.bsk-card` class to display information that is distinct from main content, but which is shown **within** it.  

`.bsk-card` replaces `.bsk-panel` which has been depreciated.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/card/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
card, otherwise it will look strange. It is not enough to use `.bsk-card` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
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
  title="Default card"
  heading_level=3
  phase="beta"
  initial_version="0.7.0"
  included="yes"
%}

Add the `.bsk-card-default` class for standard cards. For added context you can use
[contextual colours]({{ '/components/card/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<div class="bsk-card">
  <div class="bsk-card-body">
    Default card example
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Card title"
  heading_level=3
  phase="beta"
  initial_version="0.7.0"
  included="yes"
%}

Add the `.bsk-card-title` class and `.bsk-card-subtitle` class to add a title & subtitle.

{% example html %}
<div class="bsk-card">
  <div class="bsk-card-body">
    <h3 class="bsk-card-title">Example title</h3>
    <h4 class="bsk-card-subtitle bsk-text-muted">Example subtitle</h4>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  phase="beta"
  initial_version="0.7.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Card Contextual Class     |
| ---------------- | -------------------------- |
| Success          | `.bsk-text-bg-primary`       |
| Warning          | `.bsk-text-bg-warning`       |
| Danger           | `.bsk-text-bg-danger`        |
| Info             | `.bsk-text-bg-info`          |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-card bsk-text-bg-primary">
  <div class="bsk-card-header">Success card example header</div>
  <div class="bsk-card-body">
    <h3 class="bsk-card-title">Success card example body</h3>
  </div>
</div>

<div class="bsk-card bsk-text-bg-warning">
  <div class="bsk-card-header">Warning card example header</div>
  <div class="bsk-card-body">
    <h3 class="bsk-card-title">Warning card example body</h3>
  </div>
</div>

<div class="bsk-card bsk-text-bg-danger">
  <div class="bsk-card-header">Danger card example header</div>
  <div class="bsk-card-body">
    <h3 class="bsk-card-title">Danger card example body</h3>
  </div>
</div>

<div class="bsk-card bsk-text-bg-info">
  <div class="bsk-card-header">Info card example header</div>
  <div class="bsk-card-body">
    <h3 class="bsk-card-title">Info card example body</h3>
  </div>
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
  initial_version="0.7.0"
  included="yes"
%}

Use `.bsk-card-body` class on a <code>&lt;main&gt;</code> element within a card for its contents.

{% example html %}
<div class="bsk-card">
  <main class="bsk-card-body">
    Example card body
  </main>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Header"
  heading_level=3
  phase="beta"
  initial_version="0.7.0"
  included="yes"
%}

Use the `.bsk-card-header` within a card to add a header.

{% example html %}
<div class="bsk-card">
  <div class="bsk-card-header">
    Example card header
  </div>
  <div class="bsk-card-body">
    Example card body
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Footer"
  heading_level=3
  phase="beta"
  initial_version="0.7.0"
  included="yes"
%}

Use `.bsk-card-footer` class  to add a footer.

{% example html %}
<div class="bsk-card">
  <div class="bsk-card-body">
    Example card body
  </div>
  <div class="bsk-card-footer">
    Example card footer
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Table"
  heading_level=3
  phase="beta"
  initial_version="0.7.0"
  included="yes"
%}

[Tables]({{ '/core/tables' | prepend: site.baseurl }}) can be added to cards directly. Providing table borders aren't
used they will look seamless, a dividing border will be added automatically if a
[card body]({{ '/components/card/#body' | prepend: site.baseurl }}) is used.

{% capture alert_content %}
Don't put tables **within** [card bodies]({{ '/components/card/#body' | prepend: site.baseurl }}){: .bsk-alert-link },
as they may look strange.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-card">
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

<div class="bsk-card">
  <main class="bsk-card-body">
    Example card body
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
  initial_version="0.7.0"
  included="yes"
%}

[List groups]({{ '/components/list-group' | prepend: site.baseurl }}) can be added to cards directly. A dividing border
will be added automatically if a [card body]({{ '/components/card/#body' | prepend: site.baseurl }}) is used.

{% capture alert_content %}
Don't put list groups **within**
[card bodies]({{ '/components/card/#body' | prepend: site.baseurl }}){: .bsk-alert-link }, as they may look strange.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-card">
  <ul class="bsk-list-group bsk-list-group-flush">
    <li class="bsk-list-group-item">List group item</li>
    <li class="bsk-list-group-item">Another list group item</li>
  </ul>
</div>
{% endexample %}

{% example html %}
<div class="bsk-card">
  <div class="bsk-card-header">
    Example card header
  </div>
  <ul class="bsk-list-group bsk-list-group-flush">
    <li class="bsk-list-group-item">List group item</li>
    <li class="bsk-list-group-item">Another list group item</li>
  </ul>
</div>
{% endexample %}
