---
title: Label
menus:
  primary_components:
    weight: 13
sections:
  -
    title: Overview
  -
    title: Default label
  -
    title: Primary label
  -
    title: Experimental label
  -
    title: Contextual colours
  -
    title: Development phases
  -
    title: Sizes
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-label` class to highlight something, such as a status or some other property.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/label/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
label, otherwise it will look strange. It is not enough to use `.bsk-label` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
If you are highlighting a number, [Badges]({{ '/components/label' | prepend: site.baseurl }}){: .bsk-alert-link } can
also be used.
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
  title="Default label"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-label-default` class for a standard label. For added context you can use
[contextual colours]({{ '/components/label/#contextual-colours' | prepend: site.baseurl }}) instead.

{% example html %}
Something <span class="bsk-label bsk-label-default">Label</span>
{% endexample %}

{% include topic-section-metadata.html
  title="Primary label"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

Add the `.bsk-label-primary` class for a primary label.

{% example html %}
Something <span class="bsk-label bsk-label-primary">Label</span>
{% endexample %}

{% include topic-section-metadata.html
  title="Experimental label"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

Add the `.bsk-label-experimental` class for an experimental label.

{% example html %}
Something <span class="bsk-label bsk-label-experimental">Label</span>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Label Contextual Class  |
| ---------------- | ----------------------- |
| Success          | `.bsk-label-success`    |
| Warning          | `.bsk-label-warning`    |
| Danger           | `.bsk-label-danger`     |
| Info             | `.bsk-label-info`       |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<span class="bsk-label bsk-label-success">Success label</span>
<span class="bsk-label bsk-label-warning">Warning label</span>
<span class="bsk-label bsk-label-danger">Dangerous label</span>
<span class="bsk-label bsk-label-info">Info label</span>
{% endexample %}

{% include topic-section-metadata.html
  title="Development phases"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

The [development phase colours]({{ '/core/colours/#development-phase-colours' | prepend: site.baseurl }}) can be used
where relevant by adding these classes:

| Development Phase | Label Class                  |
| ----------------- | ---------------------------- |
| Backlog           | `.bsk-label-phase-backlog`   |
| Discovery         | `.bsk-label-phase-discovery` |
| Alpha             | `.bsk-label-phase-alpha`     |
| Beta              | `.bsk-label-phase-beta`      |
| Live              | `.bsk-label-phase-live`      |
| Retired           | `.bsk-label-phase-retired`   |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<span class="bsk-label bsk-label-phase-backlog">Backlog label</span>
<span class="bsk-label bsk-label-phase-discovery">Discovery label</span>
<span class="bsk-label bsk-label-phase-alpha">Alpha label</span>
<span class="bsk-label bsk-label-phase-beta">Beta label</span>
<span class="bsk-label bsk-label-phase-live">Live phase</span>
<span class="bsk-label bsk-label-phase-retired">Retired phase</span>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Labels will scale with their parent element.

{% example html %}
<div class="bsk-h1"><span class="bsk-label bsk-label-default">Label</span></div>
<div class="bsk-h2"><span class="bsk-label bsk-label-default">Label</span></div>
<div class="bsk-h3"><span class="bsk-label bsk-label-default">Label</span></div>
{% endexample %}

{% capture alert_content %}
This example uses header classes instead of elements to avoid issues with the automatic table of contents.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
