---
title: List group
sections:
  -
    title: Overview
  -
    title: Basic list group
  -
    title: Link list group
  -
    title: Button list group
  -
    title: Custom list group
  -
    title: Active item
  -
    title: Disabled item
  -
    title: Badges
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.list-group` class for displaying stacked content, either as a minimal list, or more advanced custom layout.

Use the `.list-group-item` for items within a list group, see the details of each .

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Different [variants]({{ '/components/list-group/#variants' | prepend: site.baseurl }}) are designed for different
supporting elements, as documented. Other elements may be used, but are not supported and may not look right.

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Basic list group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.list-group` class with a <code>&lt;ul&gt;</code> element.

Use the `.list-group-item` class with <code>&lt;li&gt;</code> elements.

{% example html %}
<ul class="list-group">
  <li class="list-group-item">List group item</li>
  <li class="list-group-item">Another list group item</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Linked list group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

use the `.list-group` class with a <code>&lt;div&gt;</code> element.

Use the `.list-group-item` class with <code>&lt;a&gt;</code> elements.

{% example html %}
<div class="list-group">
  <a href="#" class="list-group-item">list group item</a>
  <a href="#" class="list-group-item">Another list group item</a>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | List Group Contextual Class |
| ---------------- | --------------------------- |
| Success          | `.list-group-item-success`  |
| Warning          | `.list-group-item-warning`  |
| Danger           | `.list-group-item-danger`   |
| Info             | `.list-group-item-info`     |
{: .table .table-responsive }

{% example html %}
<ul class="list-group">
  <li class="list-group-item list-group-item-success">Successful list group item</li>
  <li class="list-group-item list-group-item-warning">Warning list group item</li>
  <li class="list-group-item list-group-item-danger">Danger list group item</li>
  <li class="list-group-item list-group-item-info">Info list group item</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Button list group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

use the `.list-group` class with a <code>&lt;div&gt;</code> element.

Use the `.list-group-item` class with <code>&lt;button&gt;</code> elements.

Do not use the `.btn` and `.btn-bsk` classes for <code>&lt;button&gt;</code> elements within button list groups.
{: .alert .alert-danger }

{% example html %}
<div class="list-group">
  <button type="button" class="list-group-item">Active list group item</button>
  <button type="button" class="list-group-item">Another list group item</button>
</div>
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

Add the `.active` class to the list group item currently active, to highlight where the end user is in the site.

Make sure to include a `<span class="sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% include snippets/back-to-top.html %}

{% example html %}
<!-- Basic list group -->
<ul class="list-group">
  <li class="list-group-item active">Active list group item</li>
  <li class="list-group-item">Another list group item</li>
</ul>

<!-- Link list group -->
<div class="list-group">
  <a href="#" class="list-group-item active">Active list group item</a>
  <a href="#" class="list-group-item">Another list group item</a>
</div>

<!-- Button list group -->
<div class="list-group">
  <button type="button" class="list-group-item active">List group item</button>
  <button type="button" class="list-group-item">Another list group item</button>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Disabled item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.disabled` class to list group items which cannot be used.

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

{% example html %}
<!-- Basic list group -->
<ul class="list-group">
  <li class="list-group-item">List group item</li>
  <li class="list-group-item disabled">Disabled list group item</li>
</ul>

<!-- Link list group -->
<div class="list-group">
  <a href="#" class="list-group-item">List group item</a>
  <a href="#" class="list-group-item disabled">Disabled list group item</a>
</div>

<!-- Button list group -->
<div class="list-group">
  <button type="button" class="list-group-item">List group item</button>
  <button type="button" class="list-group-item disabled">Disabled list group item</button>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Badges"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

[Badges]({{ '/components/badge' | prepend: site.baseurl }}) can be used within list items, in all list group
[variants]({{ '/components/list-group/#variants' | prepend: site.baseurl }}), and will be aligned to the right.

{% example html %}
<!-- Basic list group -->
<ul class="list-group">
  <li class="list-group-item">List group item <span class="badge">4</span></li>
  <li class="list-group-item">Another list group item <span class="badge">4</span></li>
</ul>

<!-- Link list group -->
<div class="list-group">
  <a href="#" class="list-group-item">List group item <span class="badge">4</span></a>
  <a href="#" class="list-group-item">Another list group item <span class="badge">4</span></a>
</div>

<!-- Button list group -->
<div class="list-group">
  <button type="button" class="list-group-item">List group item <span class="badge">4</span></button>
  <button type="button" class="list-group-item">Another list group item <span class="badge">4</span></button>
</div>
{% endexample %}
