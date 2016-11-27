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

Use the `.header-bsk` class to create an element with the illusion of a
[navbar]({{ '/components/navbar' | prepend: site.baseurl }}), but using simpler, self-contained styles, and which
doesn't support navigation.

Headers should only be used where the [Navbar's]({{ '/components/navbar' | prepend: site.baseurl }}){: .alert-link }
component is unsuitable, for example within external systems.
{: .alert .alert-warning }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default header
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
