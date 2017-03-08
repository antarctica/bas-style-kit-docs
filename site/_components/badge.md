---
title: Badge
sections:
  -
    title: Overview
  -
    title: Default badge
  -
    title: Sizes
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.badge` class to highlight a count, such as items needing further attention. An empty badge will automatically
collapse and be hidden.

Badges are only designed for numbers. For more general purposes, including other types of indicators, use
[Label's]({{ '/components/label' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-warning }

**Heads up!** Badge elements are not yet fully styled, but will be in the next version of the Style Kit.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default badge"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<p><a href="#">Unread notifications <span class="badge">42</span></a></p>
<!-- Empty badges automatically hide -->
<p><a href="#">Unread notifications <span class="badge"></span></a></p>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
%}

Badges will scale with their parent element.

{% example html %}
<p><button class="btn btn-bsk btn-default btn-sm" type="button">Items <span class="badge">4</span></button></p>
<p><button class="btn btn-bsk btn-default" type="button">Items <span class="badge">4</span></button></p>
<p><button class="btn btn-bsk btn-default btn-lg" type="button">Items <span class="badge">4</span></button></p>
{% endexample %}
