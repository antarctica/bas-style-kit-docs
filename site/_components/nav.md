---
title: Navigation
sections:
  -
    title: Overview
  -
    title: Pill navigation
  -
    title: Tab navigation
  -
    title: Components
  -
    title: States
  -
    title: Layouts
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-nav` class to create secondary navigation elements, for splitting content into logical sections.

Each navigation item **must** use an <code>&lt;a&gt;</code> element.

{% alert warning %}
For assistive technologies, all navigation elements should use a `role=navigation` attribute on an element which wraps
around the element using the `.bsk-nav` class.
{% endalert %}

{% alert info style=solid %}
Interactive tabs and pills require the [tabs]({{ '/interactivity/tab' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Pill navigation"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-nav-pills` class to create a minimalist navigation element.

{% example html %}
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-pills">
    <li role="presentation" class="bsk-active"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
    <li role="presentation"><a href="#">Pill 3</a></li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Tab navigation"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-nav-tabs` class to create a more structured navigation element.

{% example html %}
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-tabs">
    <li role="presentation" class="bsk-active"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
    <li role="presentation"><a href="#">Tab 3</a></li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Drop-down menus"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

[Drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}) can be used as navigation items as-is.

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-pills">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
    <li role="presentation" class="bsk-dropdown">
      <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="bsk-caret"></span></a>
      <ul class="bsk-dropdown-menu">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-tabs">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
    <li role="presentation" class="bsk-dropdown">
      <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="bsk-caret"></span></a>
      <ul class="bsk-dropdown-menu">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Active item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-active` class to the navigation item currently active, to highlight where the end user is in the site.

{% alert warning %}
Make sure to include a `<span class="bsk-sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{% endalert %}

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-pills">
    <li role="presentation" class="bsk-active"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-tabs">
    <li role="presentation" class="bsk-active"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}

This can also be used within [drop-down]({{ '/components/drop-down/#active' | prepend: site.baseurl }}) menus if needed.
{: .alert .alert-info }

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-pills">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
    <li role="presentation" class="bsk-dropdown bsk-active">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="bsk-caret"></span></a>
      <ul class="bsk-dropdown-menu">
        <li class="bsk-active"><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-tabs">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
    <li role="presentation" class="bsk-dropdown bsk-active">
      <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      Dropdown <span class="bsk-caret"></span></a>
      <ul class="bsk-dropdown-menu">
        <li class="bsk-active"><a href="#">Action</a></li>
        <li><a href="#">Another item</a></li>
      </ul>
    </li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Disabled item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-disabled` class to indicate unavailable navigation items.

<div class="bsk-alert bsk-alert-solid bsk-alert-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <h4><i class="fa fa-fw fa-exclamation-circle bsk-alert-icon"></i>
    It is not safe to rely on this state to prevent users activating disabled actions</h4>
  </header>
  <p>Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections
   <strong>must</strong> be used for dangerous actions.</p>
</div>

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-pills">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation" class="bsk-disabled"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-tabs">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation" class="bsk-disabled"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Stacked pills"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-nav-stacked` class to arrange pills vertically.

{% alert danger %}
Stacked tabs are not supported.
{% endalert %}

{% example html %}
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-stacked bsk-nav-pills">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Justified pills/tabs"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-nav-justified` class to display equally navigation items filling the width of the navigation element.
On smaller screens, the navigation items are stacked.

{% example html %}
<!-- Pills -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-justified bsk-nav-pills">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-justified bsk-nav-tabs">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li role="presentation"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}
