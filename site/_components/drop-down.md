---
title: Drop down
sections:
  -
    title: Overview
  -
    title: Button drop-down
  -
    title: Split-button drop-down
  -
    title: Variants
  -
    title: Link
  -
    title: Divider
  -
    title: Header
  -
    title: Active item
  -
    title: Disabled item
  -
    title: Drop-down alignment
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-dropdown` class to create a menu that appears when triggered by a
[supported element]({{ '/components/drop-down/#supported-elements' | prepend: site.baseurl }}).

Drop-down menus are `ul` list elements, containing a set of links and other
[components]({{ '/components/drop-down/#components' | prepend: site.baseurl }}).

{% alert info style=solid %}
Interactive drop-downs require the [drop-down]({{ '/interactivity/drop-down' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
%}

These elements are supported for triggering a drop-down menu. Other elements may be used, but are not supported and may
not look right.

{% include snippets/topic-section-metadata.html
  title="Button drop-down"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-dropdown">
  <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" id="dropdown-menu-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropdown <span class="bsk-caret"></span>
  </button>
  <ul class="bsk-dropdown-menu" aria-labelledby="dropdown-menu-1">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Split-button drop-down"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-btn-group">
  <button class="bsk-btn bsk-btn-default" type="button">Dropdown</button>
  <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" id="dropdown-menu-1a" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="bsk-caret"></span>
    <span class="bsk-sr-only">Toggle Dropdown</span>
  </button>
  <ul class="bsk-dropdown-menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Navbar item drop-down"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

See the [navbar]({{ '/components/navbar/#drop-down-menus' | prepend: site.baseurl }}) documentation for using drop-downs
in Navbar items.

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default drop-down"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-dropdown">
  <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" id="dropdown-menu-2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropdown <span class="bsk-caret"></span>
  </button>
  <ul class="bsk-dropdown-menu" aria-labelledby="dropdown-menu-2">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Reverse drop-down"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-dropup` class, rather than `.bsk-dropdown` to have the drop-down menu open upwards.

{% example html %}
<div class="bsk-dropup">
  <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" id="dropdown-menu-3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropup <span class="bsk-caret"></span>
  </button>
  <ul class="bsk-dropdown-menu" aria-labelledby="dropdown-menu-3">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Link"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-dropdown bsk-docs-dropdown-example">
  <ul class="bsk-dropdown-menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Divider"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.dropdown-divider` class on a drop-down item.

{% example html %}
<div class="bsk-dropdown bsk-docs-dropdown-example">
  <ul class="bsk-dropdown-menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li role="separator" class="bsk-divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Header"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-dropdown-header` class on a drop-down item.

{% example html %}
<div class="bsk-dropdown bsk-docs-dropdown-example">
  <ul class="bsk-dropdown-menu">
    <li><a href="#">Action</a></li>
    <li class="bsk-dropdown-header">Dropdown header</li>
    <li><a href="#">Another action</a></li>
  </ul>
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

If used within the [Navbar]({{ '/components/navbar' | prepend: site.baseurl }}) component, add the `.bsk-active` class
to the drop-down menu item currently active, to highlight where the end user is in the site.

Make sure to include a `<span class="bsk-sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% alert info style=highlight %}
**Heads up!** Active drop-down item elements are not yet fully styled, but will be in the next version of the Style Kit.
{% endalert %}

{% example html %}
<div class="bsk-dropdown bsk-docs-dropdown-example">
  <ul class="bsk-dropdown-menu">
    <li class="bsk-active"><span class="bsk-sr-only">(current)</span><a href="#">Active Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Disabled item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

<div class="bsk-alert bsk-alert-solid bsk-alert-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <h4><i class="fa fa-fw fa-exclamation-circle bsk-alert-icon"></i>
    It is not safe to rely on this state to prevent users activating disabled actions</h4>
  </header>
  <p>Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections
   <strong>must</strong> be used for dangerous actions.</p>
</div>

{% example html %}
<div class="bsk-disabled-dropdown bsk-docs-dropdown-example">
  <ul class="bsk-dropdown-menu">
    <li class="bsk-disabled"><a href="#" disabled>Disabled Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% include snippets/topic-section-metadata.html
  title="Drop-down alignment"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-dropdown-menu-right` class to right align the drop-down menu
[supported element]({{ '/components/drop-down/supported-elements' | prepend: site.baseurl }}), by default the menu is
left aligned.

{% example html %}
<div class="bsk-dropdown">
  <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" id="dropdown-menu-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Dropdown (right aligned) <span class="bsk-caret"></span>
  </button>
  <ul class="bsk-dropdown-menu bsk-dropdown-menu-right" aria-labelledby="dropdown-menu-4">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
  </ul>
</div>
{% endexample %}
