---
title: Page header
sections:
  -
    title: Overview
  -
    title: Default page header
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.page-header` class to title a page, or section within a page, using a more prominent heading with extra
spacing.

## Default page header
{: #{{ 'Default page header' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<header class="page-header">
  <h1>Example page header <small>Subtext for header</small></h1>
</header>
{% endexample %}
