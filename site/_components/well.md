---
title: Well
sections:
  -
    title: Overview
  -
    title: Default well
  -
    title: Sizes
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.well` class to show an element as indented.

**Heads up!** This component will be removed in the next version of the Style Kit.
{: .alert .alert-warning }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default well
{: #{{ 'Default well' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" future_phase="deprecated" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<div class="well">
  Some text in a well
</div>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" future_phase="deprecated" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add one of these classes to alter the size of a well:

| Well Size  | Well Size Class |
| ---------- | --------------- |
| Large      | `.well-lg`      |
| Small      | `.well-sm`      |
{: .table }

{% example html %}
<div class="well well-lg">Large well</div>
<div class="well">Regular well</div>
<div class="well well-sm">Small well</div>
{% endexample %}
