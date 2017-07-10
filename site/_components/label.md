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

Use the `.bsk-label` class to highlight something, such as a status or some other property.


{% alert warning style=solid %}
You **must** pick a [variant]({{ '/components/label/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
label, otherwise it will look strange. It is not enough to use `.bsk-label` on its own.
{% endalert %}

{% alert info style=solid %}
If you are highlighting a number, [Badges]({{ '/components/label' | prepend: site.baseurl }}){: .bsk-alert-link } can
also be used.
{% endalert %}

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

Add the `bsk-label-default` class for a standard label. For added context you can use
[contextual colours]({{ '/components/label/#contextual-colours' | prepend: site.baseurl }}) instead.

{% example html %}
Something <span class="bsk-label bsk-label-default">Label</span>
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

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Labels will scale with their parent element.

{% example html %}
<h1><span class="bsk-label bsk-label-default">Label</span></h1>
<h2><span class="bsk-label bsk-label-default">Label</span></h2>
<h3><span class="bsk-label bsk-label-default">Label</span></h3>
{% endexample %}
