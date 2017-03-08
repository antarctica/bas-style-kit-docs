---
title: Label
sections:
  -
    title: Overview
  -
    title: Default label
  -
    title: Contextual colours
  -
    title: Sizes
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.label` class to highlight something, such as a status or some other property.

You **must** pick a [variant]({{ '/components/label/#variants' | prepend: site.baseurl }}){: .alert-link } for each
label, otherwise it will look strange. It is not enough to use `.label` on its own.
{: .alert .alert-warning }

**Heads up!** Label elements are not yet fully styled, but will be in the next version of the Style Kit.
{: .alert .alert-info }

If you are highlighting a number, [Badges]({{ '/components/label' | prepend: site.baseurl }}){: .alert-link } can also
be used.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default label"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `label-default` class for a standard label. For added context you can use
[contextual colours]({{ '/components/label/#contextual-colours' | prepend: site.baseurl }}) instead.

{% example html %}
Something <span class="label label-default">Label</span>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Label Contextual Class  |
| ---------------- | ----------------------- |
| Success          | `.label-success`        |
| Warning          | `.label-warning`        |
| Danger           | `.label-danger`         |
| Info             | `.label-info`           |
{: .table .table-responsive }

{% example html %}
<span class="label label-success">Success label</span>
<span class="label label-warning">Warning label</span>
<span class="label label-danger">Dangerous label</span>
<span class="label label-info">Info label</span>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Labels will scale with their parent element.

{% example html %}
<h1><span class="label label-default">Label</span></h1>
<h2><span class="label label-default">Label</span></h2>
<h3><span class="label label-default">Label</span></h3>
{% endexample %}
