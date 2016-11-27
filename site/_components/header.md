---
title: Header
sections:
  -
    title: Overview
  -
    title: Default header
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Headers give the illusion of a [navbar]({{ '/components/navbar' | prepend: site.baseurl }}), but use simpler styles,
and doesn't support navigation.

This component is useful where the navbar component is otherwise unsuitable, for example within external systems.

[Navbar's]({{ '/components/navbar' | prepend: site.baseurl }}){: .alert-link } should be used wherever possible,
headers are only designed for compatibility with systems and services we have limited control over.
{: .alert .alert-warning }

## Default header
{: #{{ 'Default header' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Headers need to use `.header-bsk-container-fluid`, instead of `.container-fluid` for headers. The same styles are
applied, but in a form that is self-contained for compatibility with other styles.
{: .alert .alert-info }

Images in headers need to use the `.header-bsk-img-logo` class to prevent too much padding .
{: .alert .alert-info }

{% example html %}
<header class="header-bsk header-bsk-default">
  <div class="header-bsk-container-fluid">
    <a href="#">
      <img class="header-bsk-img-logo" alt="British Antarctic Survey Logo" src="{{ '/img/bas-logo-full-white-transparent.png' | prepend: site.baseurl }}">
    </a>
  </div>
</header>
{% endexample %}
