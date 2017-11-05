---
title: Band
sections:
  -
    title: Overview
  -
    title: Default band
  -
    title: Inverse band
  -
    title: Sizes
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.band-bsk` class to add visual space between elements.

**Heads up!** This component will be removed in the next version of the Style Kit.
{: .alert .alert-warning }

You **must** pick a [variant]({{ '/components/band/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
band, otherwise it will look strange. It is not enough to use `.band-bsk` on its own.
{: .alert .alert-warning }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default well"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  future_phase="deprecated"
  future_version="0.3.0"
  included="yes"
%}

Add the `.band-bsk-default` class for standard bands.

{% example html %}
<div class="band-bsk band-bsk-default"></div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Inverse band"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  future_phase="deprecated"
  future_version="0.3.0"
  included="yes"
%}

Add the `.band-bsk-inverse` class for an alternative band style. This has no semantic significance.

{% example html %}
<div class="band-bsk band-bsk-inverse"></div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  future_phase="deprecated"
  future_version="0.3.0"
  included="yes"
%}

Add one of these classes to alter the size of a band:

| Band Size | Band Size Class |
| --------- | --------------- |
| Medium    | `.band-bsk-md`  |
| Small     | `.band-bsk-sm`  |
{: .table .table-responsive }

{% example html %}
<!-- Regular band -->
<div class="band-bsk"></div>

<hr />

<!-- Medium band -->
<div class="band-bsk band-bsk-md"></div>

<hr />

<!-- Small band -->
<div class="band-bsk band-bsk-sm"></div>
{% endexample %}
