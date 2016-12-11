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

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.label` class to highlight something, such as a status or some other property.

You **must** pick a [variant]({{ '/components/label/#variants' | prepend: site.baseurl }}){: .alert-link } for each
label, otherwise it will look strange. It is not enough to use `.label` on its own.
{: .alert .alert-warning }

If you are highlighting a number, [Badges]({{ '/components/label' | prepend: site.baseurl }}){: .alert-link } can also
be used.
{: .alert .alert-info }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default label
{: #{{ 'Default label' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `label-default` class for a standard label. For added context you can use
[contextual colours]({{ '/components/label/#contextual-colours' | prepend: site.baseurl }}) instead.

{% example html %}
Something <span class="label label-default">Label</span>
{% endexample %}

### Contextual colours
{: #{{ 'Contextual colours' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Label Contextual Class  |
| ---------------- | ----------------------- |
| Success          | `.label-success`        |
| Warning          | `.label-warning`        |
| Danger           | `.label-danger`         |
| Info             | `.label-info`           |
{: .table }

{% example html %}
<span class="label label-success">Success label</span>
<span class="label label-warning">Warning label</span>
<span class="label label-danger">Dangerous label</span>
<span class="label label-info">Info label</span>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/back-to-top.html %}

Labels will scale with their parent element.

{% example html %}
<h1><span class="label label-default">Label</span></h1>
<h2><span class="label label-default">Label</span></h2>
<h3><span class="label label-default">Label</span></h3>
{% endexample %}
