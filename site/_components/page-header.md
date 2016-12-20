---
title: Page header
sections:
  -
    title: Overview
  -
    title: Default page header
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.page-header` class to title a page, or section within a page, using a more prominent heading with extra
spacing.

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default page header"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<header class="page-header">
  <h1>Example page header <small>Subtext for header</small></h1>
</header>
{% endexample %}
