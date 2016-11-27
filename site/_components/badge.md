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

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.badge` class to highlight a count, such as items needing further attention. An empty badge will automatically
collapse and be hidden.

Badges are only designed for numbers. For more general purposes, including other types of indicators, use
[Label's]({{ '/components/label' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-warning }

## Default badge
{: #{{ 'Default badge' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<p><a href="#">Unread notifications <span class="badge">42</span></a></p>
<!-- Empty badges automatically hide -->
<p><a href="#">Unread notifications <span class="badge"></span></a></p>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/back-to-top.html %}

Badges will scale with their parent element.

{% example html %}
<p><button class="btn btn-bsk btn-default btn-sm" type="button">Items <span class="badge">4</span></button></p>
<p><button class="btn btn-bsk btn-default" type="button">Items <span class="badge">4</span></button></p>
<p><button class="btn btn-bsk btn-default btn-lg" type="button">Items <span class="badge">4</span></button></p>
{% endexample %}
