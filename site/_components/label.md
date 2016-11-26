---
title: Label
sections:
  -
    title: Overview
  -
    title: Default
  -
    title: Contextual colours
  -
    title: Sizes
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }}}

A generic component to highlight something, such as a status or some other property.

You **must** pick a [variant]({{ '/components/label/#variants' | prepend: site.baseurl }}){: .alert-link } for each
label, otherwise it will look strange. It is not enough to use `.label` on its own.
{: .alert .alert-warning }

If you are highlighting a number, [Badges]({{ '/components/label' | prepend: site.baseurl }}){: .alert-link } can also
be used.
{: .alert .alert-info }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default
{: #{{ 'Default' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use this variant for standard labels. For added context you can use
[contextual colours]({{ '/components/label/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
Something <span class="label label-default">Label</span>
{% endexample %}

### Contextual colours
{: #{{ 'Contextual colours' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for adding context to labels using these classes:

* `.label-success`
* `.label-warning`
* `.label-danger`
* `.label-info`

The `.label-default` class isn't needed when using these classes.
{: .alert .alert-info }

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
<p><button class="btn btn-bsk btn-default btn-lg">Large Button <span class="label label-default">Label</span></button></p>
<p><button class="btn btn-bsk btn-default">Regular Button <span class="label label-default">Label</span></button></p>
<p><button class="btn btn-bsk btn-default btn-sm">Small Button <span class="label label-default">Label</span></button></p>
<p><button class="btn btn-bsk btn-default btn-xs">Extra-Small Button <span class="label label-default">Label</span></button></p>
{% endexample %}
