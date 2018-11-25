---
title: Navigation
menus:
  primary_components:
    weight: 16
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

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-nav` class to create secondary navigation elements, for splitting content into logical sections or linking
to other parts of an application or website.

Each navigation item **must** use an <code>&lt;a&gt;</code> element.

{% capture alert_content %}
For assistive technologies, all navigation elements should use a `role=navigation` attribute on an element which wraps
around the element using the `.bsk-nav` class.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Interactive tabs and pills require the [nav]({{ '/interactivity/nav' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
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

{% include topic-section-metadata.html
  title="Tab navigation"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  revised_version="0.5.0"
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

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
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
    <li role="presentation" class="bsk-active"><a href="#">Pill 1</a></li>
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
    <li role="presentation" class="bsk-active"><a href="#">Tab 1</a></li>
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

{% include topic-section-metadata.html
  title="Navigation content"
  heading_level=3
  phase="beta"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Place the contents of each pill or tab in an element with the `.bsk-tab-pane` class, with a unique `id` attribute that
corresponds to the target of a pill or tab, which have a `data-toggle="tab"` attribute.

Wrap all the content sections in an element with the `.bsk-tab-content` class. Wrap this, and the pills or tabs, in
another element with the `.bsk-nav-wrapper` and either the `.bsk-nav-wrapper-pills` or `.bsk-nav-wrapper-tabs` class
respectively.

{% capture alert_content %}
Some extra attributes, shown in these examples, are needed to work with the
[nav]({{ '/interactivity/nav' | prepend: site.baseurl }}){: .bsk-alert-link } JavaScript plugin.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<!-- Pills -->
<nav class="bsk-nav-wrapper bsk-nav-wrapper-pills" role="navigation">
  <ul class="bsk-nav bsk-nav-pills" role="tablist">
    <li role="presentation" class="bsk-active"><a href="#nav-content-example-1A" role="tab" data-toggle="tab">Pill 1</a></li>
    <li role="presentation"><a href="#nav-content-example-1B" role="tab" data-toggle="tab">Pill 2</a></li>
  </ul>
  <div class="bsk-tab-content">
    <div class="bsk-tab-pane bsk-active" role="tabpanel" id="nav-content-example-1A">
      Content for Navigation example 1 (A)
    </div>
    <div class="bsk-tab-pane" role="tabpanel" id="nav-content-example-1B">
      Content for Navigation example 1 (B)
    </div>
  </div>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav class="bsk-nav-wrapper bsk-nav-wrapper-tabs" role="navigation">
  <ul class="bsk-nav bsk-nav-tabs" role="tablist">
    <li role="presentation" class="bsk-active"><a href="#nav-content-example-2A" role="tab" data-toggle="tab">Tab 1</a></li>
    <li role="presentation"><a href="#nav-content-example-2B" role="tab" data-toggle="tab">Tab 2</a></li>
  </ul>
  <div class="bsk-tab-content">
    <div class="bsk-tab-pane bsk-active" role="tabpanel" id="nav-content-example-2A">
      Content for Navigation example 2 (A)
    </div>
    <div class="bsk-tab-pane" role="tabpanel" id="nav-content-example-2B">
      Content for Navigation example 2 (B)
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Active item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-active` class to the navigation item currently active, to highlight where the end user is in the site.

{% capture alert_content %}
Make sure to include a `<span class="bsk-sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

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

{% include topic-section-metadata.html
  title="Disabled item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-disabled` class to indicate unavailable navigation items.

<div class="bsk-alert bsk-alert-solid bsk-alert-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="fas fa-fw fa-exclamation-circle bsk-alert-icon"></i>
      It is not safe to rely on this state to prevent users activating disabled actions
    </div>
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

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Stacked pills"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-nav-stacked` class to arrange pills vertically.

{% capture alert_content %}
Stacked tabs are not supported.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-stacked bsk-nav-pills">
    <li role="presentation"><a href="#">Pill 1</a></li>
    <li class="bsk-active" role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% include topic-section-metadata.html
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
    <li class="bsk-active" role="presentation"><a href="#">Pill 2</a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<!-- Tabs -->
<nav role="navigation">
  <ul class="bsk-nav bsk-nav-justified bsk-nav-tabs">
    <li role="presentation"><a href="#">Tab 1</a></li>
    <li class="bsk-active" role="presentation"><a href="#">Tab 2</a></li>
  </ul>
</nav>
{% endexample %}
