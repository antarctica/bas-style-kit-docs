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

Use the `.bsk-list-group` class for displaying stacked content, either as a minimal list, or more advanced custom layout.

Use the `.bsk-list-group-item` for items within a list group, see the details of each.

{% alert info %}
**Heads up!** List group elements are not yet fully styled, but will be in the next version of the Style Kit.
{% endalert %}

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

Use the `.bsk-list-group` class with a <code>&lt;ul&gt;</code> element.

Use the `.bsk-list-group-item` class with <code>&lt;li&gt;</code> elements.

{% example html %}
<ul class="bsk-list-group">
  <li class="bsk-list-group-item">List group item</li>
  <li class="bsk-list-group-item">Another list group item</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Linked list group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

use the `.bsk-list-group` class with a <code>&lt;div&gt;</code> element.

Use the `.bsk-list-group-item` class with <code>&lt;a&gt;</code> elements.

{% example html %}
<div class="bsk-list-group">
  <a href="#" class="bsk-list-group-item">list group item</a>
  <a href="#" class="bsk-list-group-item">Another list group item</a>
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

| Standard Context | List Group Contextual Class    |
| ---------------- | ------------------------------ |
| Success          | `.bsk-list-group-item-success` |
| Warning          | `.bsk-list-group-item-warning` |
| Danger           | `.bsk-list-group-item-danger`  |
| Info             | `.bsk-list-group-item-info`    |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<ul class="bsk-list-group">
  <li class="bsk-list-group-item bsk-list-group-item-success">Successful list group item</li>
  <li class="bsk-list-group-item bsk-list-group-item-warning">Warning list group item</li>
  <li class="bsk-list-group-item bsk-list-group-item-danger">Danger list group item</li>
  <li class="bsk-list-group-item bsk-list-group-item-info">Info list group item</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Button list group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

use the `.bsk-list-group` class with a <code>&lt;div&gt;</code> element.

Use the `.bsk-list-group-item` class with <code>&lt;button&gt;</code> elements.

{% example html %}
<div class="bsk-list-group">
  <button type="button" class="bsk-list-group-item">Active list group item</button>
  <button type="button" class="bsk-list-group-item">Another list group item</button>
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

Add the `.bsk-active` class to the list group item currently active, to highlight where the end user is in the site.

{% alert warning %}
Make sure to include a `<span class="bsk-sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{% endalert %}

{% include snippets/back-to-top.html %}

{% example html %}
<!-- Basic list group -->
<ul class="bsk-list-group">
  <li class="bsk-list-group-item bsk-active">Active list group item</li>
  <li class="bsk-list-group-item">Another list group item</li>
</ul>

<!-- Link list group -->
<div class="bsk-list-group">
  <a href="#" class="bsk-list-group-item bsk-active">Active list group item</a>
  <a href="#" class="bsk-list-group-item">Another list group item</a>
</div>

<!-- Button list group -->
<div class="bsk-list-group">
  <button type="button" class="bsk-list-group-item bsk-active">List group item</button>
  <button type="button" class="bsk-list-group-item">Another list group item</button>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Disabled item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-disabled` class to list group items which cannot be used.

<div class="bsk-alert bsk-alert-solid-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-title">
    <h4><i class="fa fa-fw fa-exclamation-circle bsk-alert-icon"></i>
    It is not safe to rely on this state to prevent users activating disabled actions</h4>
  </header>
  <p>Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections
   <strong>must</strong> be used for dangerous actions.</p>
</div>

{% example html %}
<!-- Basic list group -->
<ul class="bsk-list-group">
  <li class="bsk-list-group-item">List group item</li>
  <li class="bsk-list-group-item disabled">Disabled list group item</li>
</ul>

<!-- Link list group -->
<div class="bsk-list-group">
  <a href="#" class="bsk-list-group-item">List group item</a>
  <a href="#" class="bsk-list-group-item bsk-disabled">Disabled list group item</a>
</div>

<!-- Button list group -->
<div class="bsk-list-group">
  <button type="button" class="bsk-list-group-item">List group item</button>
  <button type="button" class="bsk-list-group-item bsk-disabled">Disabled list group item</button>
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
<ul class="bsk-list-group">
  <li class="bsk-list-group-item">List group item <span class="bsk-badge">4</span></li>
  <li class="bsk-list-group-item">Another list group item <span class="bsk-badge">4</span></li>
</ul>

<!-- Link list group -->
<div class="bsk-list-group">
  <a href="#" class="bsk-list-group-item">List group item <span class="bsk-badge">4</span></a>
  <a href="#" class="bsk-list-group-item">Another list group item <span class="bsk-badge">4</span></a>
</div>

<!-- Button list group -->
<div class="bsk-list-group">
  <button type="button" class="bsk-list-group-item">List group item <span class="bsk-badge">4</span></button>
  <button type="button" class="bsk-list-group-item">Another list group item <span class="bsk-badge">4</span></button>
</div>
{% endexample %}
