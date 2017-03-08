---
title: Breadcrumb
sections:
  -
    title: Overview
  -
    title: Default breadcrumb
  -
    title: States
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.breadcrumb` class with a list of navigation items to indicate the current page's location within a hierarchy.

Each navigation item **must** use an <code>&lt;a&gt;</code> element, **except** for the last item.

For assistive technologies, all navigation elements should use a `role=navigation` attribute on an element which wraps
around the element using the `.nav` class.
{: .alert .alert-warning }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default breadcrumb"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<nav role="navigation">
  <ol class="breadcrumb">
    <li><a href="#">Level 1</a></li>
    <li><a href="#">Level 2</a></li>
    <li class="active"><span class="sr-only">(current)</span>Level 3</li>
  </ol>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Active item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.active` class to the drop-down menu item currently active, to highlight where the end user is in the site.

Make sure to include a `<span class="sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% example html %}
<nav role="navigation">
  <ol class="breadcrumb">
    <li><a href="#">Level 1</a></li>
    <li><a href="#">Level 2</a></li>
    <li class="active"><span class="sr-only">(current)</span>Level 3</li>
  </ol>
</nav>
{% endexample %}
