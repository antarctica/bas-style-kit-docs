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

Use the `.bsk-badge` class to highlight a count, such as items needing further attention. An empty badge will
automatically collapse and be hidden.

{% alert warning %}
Badges are only designed for numbers. For more general purposes, including other types of indicators, use
[Label's]({{ '/components/label' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endalert %}

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
<p><a href="#">Unread notifications <span class="bsk-badge">42</span></a></p>
<!-- Empty badges automatically hide -->
<p><a href="#">Unread notifications <span class="bsk-badge"></span></a></p>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
%}

Badges will scale with their parent element.

{% example html %}
<p><button class="bsk-btn bsk-btn-default bsk-btn-sm" type="button">Items <span class="bsk-badge">4</span></button></p>
<p><button class="bsk-btn bsk-btn-default" type="button">Items <span class="bsk-badge">4</span></button></p>
<p><button class="bsk-btn bsk-btn-default bsk-btn-lg" type="button">Items <span class="bsk-badge">4</span></button></p>
{% endexample %}
