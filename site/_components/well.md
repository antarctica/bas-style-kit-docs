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

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.well` class to show an element as indented.

**Heads up!** This component will be removed in the next version of the Style Kit.
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
  included="yes"
%}

{% example html %}
<div class="well">
  Some text in a well
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

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
