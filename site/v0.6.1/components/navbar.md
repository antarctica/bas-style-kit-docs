---
item_type: Component
title: Navbar
menus:
  primary_components:
    weight: 17
sections:
  -
    title: Overview
  -
    title: Overflowing content
  -
    title: Default navbar
  -
    title: Item
  -
    title: Active item
  -
    title: Brand text
  -
    title: Brand image
  -
    title: Text
  -
    title: Buttons
  -
    title: Form
  -
    title: Drop-down menu
  -
    title: Non-navigation links
  -
    title: Sizes
  -
    title: Hidden items
  -
    title: Layouts
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-navbar` class to create navigation bars used for primary, horizontal, navigation.
They can contain links, drop-down menus, forms and other
[components]({{ '/components/navbar/#components' | prepend: site.baseurl }}).

Navbars are designed to scale with screen size. At small sizes key items will be shown normally, with less important
items shown in a hidden menu, which can be toggled with a button. At larger sizes, all elements are shown directly.

{% capture alert_content %}
Navbars are relatively *heavy* elements, requiring significant markup and JavaScript plugins to work correctly. Where
this isn't possible, or suitable, the [header]({{ '/components/header' | prepend: site.baseurl }}){: .bsk-alert-link }
component can be used instead.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Overflowing content"
  heading_level=3
%}

{% capture alert_content %}
The navbar component is not aware of the width of items that sit within it. This means it is possible for items to
*overflow* onto a second level, breaking the page layout and looking bad.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

This problem worsens as the screen size narrows, and worst just before the
[small grid size]({{ 'core/grid/#grid-sizes' | prepend: site.baseurl }}). Past this point, the navbar will hide
elements and so reduce pressure on the number of items that need to be shown.

There is no way to automatically detect when this overflow happens, and so requires manual testing at multiple screen
sizes to ensure things work correctly.

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default navbar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

This variant is used as part of the [standard header]({{ '/patterns/standard-header' | prepend: site.baseurl }}) pattern.

Use `bsk-navbar-expand-**` to change the width at which the menu collapses.  
E.g. `sm`, `md`, `lg`, `custom` - can be set in the website override css E.g. `site/_sass/_example-fixes.scss`

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-sm">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-collapse">
        <a class="bsk-navbar-brand bsk-nav-link" href="#">Site Name</a>
      <div class="collapse navbar-collapse">
        <ul class="bsk-nav bsk-navbar-nav bsk-flex-sm-row">
          <li class="bsk-active"><a href="#" class="bsk-nav-link">Home <span class="bsk-visually-hidden">(current)</span></a></li>
          <li><a href="#" class="bsk-nav-link">About</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Usage"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Navigation launcher"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

A [right aligned]({{ '/components/navbar/#item-alignment' | prepend: site.baseurl }}) navigation menu with a
[drop-down menu]({{ '/components/navbar/#drop-down-menu' | prepend: site.baseurl }}) item should be used in all navbars
to indicate a website or application is part of BAS. This menu is known as the navigation launcher.

The navigation launcher **must** use the text 'Part of British Antarctic Survey'.

The navigation launcher **must** contain links to:

* the [BAS public website](https://www.bas.ac.uk), referred to as *BAS Home*
* the [BAS data catalogue](https://data.bas.ac.uk), referred to as *Discover BAS data*

Other links may be added after these required items.

{% capture alert_content %}
A version of the navigation launcher for internal websites and applications is still
[under development](https://trello.com/c/BIUqkqc4){:.bsk-alert-link}.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-lg">
  <div class="bsk-container-fluid">
    <ul class="bsk-nav bsk-ms-auto">
      <li class="bsk-dropdown bsk-nav-item">
        <a href="#" class="bsk-dropdown-toggle bsk-nav-link" data-bs-toggle="dropdown" role="button" aria-expanded="false">
        Part of British Antarctic Survey <span class="bsk-caret"></span></a>
        <ul class="bsk-dropdown-menu bsk-dropdown-menu-lg-end">
          <li><a href="https://www.bas.ac.uk">BAS Home</a></li>
          <li><a href="https://data.bas.ac.uk">Discover BAS data</a></li>
          <li><a href="#">Another service (optional)</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use a list of <code>&lt;a&gt;</code> elements within a navigation menu using the `.bsk-nav .bsk-navbar-nav` classes.

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Hidden items menu"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

At small screen sizes, a button is used to show or hide extra navbar items in a [vertical menu]({{ 'components/navbar/#hidden-items-menu' | prepend: site.baseurl }}).

{% capture alert_content %}
This example simulates the menu button at all sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
{% example html %}
<nav class="bsk-navbar bsk-navbar-lg bsk-navbar-expand-lg bsk-navbar-dark bsk-bg-dark">
  <div class="bsk-container-fluid">
      <!-- The '.bsk-docs-navbar-toggle-always' class is used instead of '.bsk-navbar-toggle' for demonstration purposes -->
      <!-- <a class="bsk-navbar-brand" href="#">Site Name</a> -->
      <button class="bsk-navbar-toggler bsk-docs-navbar-toggle-always bsk-collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
        <span class="bsk-navbar-toggler-icon"></span>
      </button>
  </div>
</nav>
{% endexample %}

{% capture alert_content %}
This example is real but will only work at small screen sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-lg bsk-navbar-dark bsk-bg-dark">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <button class="bsk-navbar-toggler bsk-collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
        <span class="bsk-navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Brand text"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-navbar-brand` class to indicate the name of the current website or service.

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Brand image"
  heading_level=3
  phase="live"
  initial_version="0.2.0"
  revised_version="0.3.0"
  included="yes"
%}

Use the same `.bsk-navbar-brand` class with a image a logo or other image.

To look right, scale the logo or image so that its height is one of these sizes and use the corresponding
`.bsk-navbar-brand-image-{size}` class on the same element as `.bsk-navbar-brand`.

| Navbar Variant | Relative Image Size | Absolute Image Height (Px) | Navbar Brand Image Class     |
| -------------- | ------------------- | -------------------------- | ---------------------------- |
| Regular        | Regular             | 32                         | `.bsk-navbar-brand-image-32` |
| Regular        | Full height         | 48                         | `.bsk-navbar-brand-image-48` |
| Large          | Regular             | 64                         | `.bsk-navbar-brand-image-64` |
| Large          | Full height         | 96                         | `.bsk-navbar-brand-image-96` |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
If you need to use a specific size not in this list you will need to use your own classes to add suitable padding
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
See the other [navbar sizes](#sizes){: .bsk-alert-link} for other examples.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand bsk-navbar-brand-image-32" href="#">
        <img src="{{ '/img/placeholder-32.png' | prepend: site.baseurl }}">
      </a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand bsk-navbar-brand-image-48" href="#">
        <img src="{{ '/img/placeholder-48.png' | prepend: site.baseurl }}">
      </a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

Add the `.bsk-fix-navbar-brand-img-txt` class to a brand image to combine with brand text.

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand bsk-navbar-brand-image-32" href="#">
        <img class="bsk-fix-navbar-brand-img-txt" src="{{ '/img/placeholder-32.png' | prepend: site.baseurl }}">
        Site name
      </a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Text"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-navbar-text` class to correctly position and colour any text elements.

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <p class="bsk-navbar-text">Some text</p>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Buttons"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-navbar-btn` class to correctly position any button elements, unless the button is inside a `form` element.

{% capture alert_content %}
Using the `.bsk-btn` class with an <code>&lt;a&gt;</code> element, within a navigation menu using the `.bsk-navbar-nav` class, is not supported.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <button class="bsk-btn bsk-btn-default bsk-navbar-btn">Action</button>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Forms"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Add the `.bsk-navbar-form` class to correctly position any form elements.

{% capture alert_content %}
The [navbar alignment classes]({{ '/components/navbar/#item-alignment' | prepend: site.baseurl }}){: .bsk-alert-link }
can be used to further control form elements.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

It is strongly recommended to include visible labels for each form field (the `placeholder` attribute is not yet
universally supported).

{% capture alert_content %}
Where labels are hidden, the `.bsk-visually-hidden` class **should** always be used to ensure assistive technologies can
understand forms. Alternatively, you can use the `aria-label`, `aria-labelledby` or `title` attributes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Some form controls, like [input groups]({{ '/components/input-group' | prepend: site.baseurl }}){: .bsk-alert-link },
may require fixed widths to be show up properly within a navbar.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Support for form controls in navbars at small sizes, such as mobile, is limited.
It is recommended to use this feature sparingly until support improves.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <form class="bsk-d-flex" role="search">
      <label class="bsk-control-label bsk-visually-hidden" for="bsk-navbar-form-inputs-example-1">Text input</label>
      <input id="bsk-navbar-form-inputs-example-1" type="search" class="bsk-form-control" placeholder="Search">
      <button type="submit" class="bsk-btn bsk-btn-default bsk-navbar-btn">Submit</button>
    </form>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Drop-down menu"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

[Drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}) can be used as navbar items.

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-lg">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-collapse">
      <ul class="bsk-navbar-nav">
        <li class="bsk-nav-item bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle bsk-nav-link" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Dropdown <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu">
            <li><a href="#" class="bsk-dropdown-item">Action</a></li>
            <li><a href="#" class="bsk-dropdown-item">Another item</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Non-navigation links"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-navbar-link` class to correctly colour any link elements that are not part of the navigation menu.

{% capture alert_content %}
Typically this will be used within elements using the
[navbar text]({{ '/components/#text' | prepend: site.baseurl }}){: .bsk-alert-link } class.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <p class="bsk-navbar-text">Some text with a <a href="#" class="bsk-navbar-link">link</a></p>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Large:

| Navbar Size | Navbar Size Class |  Font Size  | 
| ----------- | ----------------- | ----------- |
| Large       | `.bsk-navbar-lg`  | `.bsk-fs-*` |
{: .bsk-table .bsk-table-responsive }   
{% example html %}
<nav class="bsk-navbar bsk-navbar-lg bsk-fs-4 bsk-navbar-expand-xl bsk-navbar-dark bsk-bg-dark">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
      <a class="bsk-navbar-brand" href="#">Site Name</a>
      <button class="bsk-navbar-toggler bsk-ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
        <span class="bsk-navbar-toggler-icon"></span>
      </button>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="bsk-collapse bsk-navbar-collapse" id="bsk-example-navbar-collapse-1" >
      <ul class="bsk-navbar-nav">
        <li><a href="#" class="bsk-nav-link bsk-active">Home <span class="bsk-visually-hidden">(current)</span></a></li>
        <li><a href="#" class="bsk-nav-link">About</a></li>
        <li class="bsk-dropdown">
          <a href="#" class="bsk-nav-link bsk-dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Dropdown</a>
          <ul class="bsk-dropdown-menu">
            <li><a href="#" class="bsk-dropdown-item">Action</a></li>
            <li><a href="#" class="bsk-dropdown-item">Another action</a></li>
            <li><a href="#" class="bsk-dropdown-item">Something else here</a></li>
            <li><a href="#" class="bsk-dropdown-item">Separated link</a></li>
            <li><a href="#" class="bsk-dropdown-item">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="bsk-nav bsk-navbar-nav bsk-ms-auto">
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false">
          Part of British Antarctic Survey <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu bsk-dropdown-menu-lg-end">
            <li><a href="https://www.bas.ac.uk" class="bsk-dropdown-item">BAS Home</a></li>
            <li><a href="#" class="bsk-dropdown-item">Another link</a></li>
            <li><a href="https://data.bas.ac.uk" class="bsk-dropdown-item">Discover BAS data</a></li>
          </ul>
        </li>
        <li><a href="#">Feedback</a></li>
      </ul>
    </div>
  </div>
</nav>
{% endexample %}

{% example html %}
<nav class="bsk-navbar bsk-navbar-lg">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand bsk-navbar-brand-image-64" href="#">
        <img src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}">
      </a>
      <!-- <button class="bsk-navbar-toggler bsk-ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-2" aria-controls="bsk-example-navbar-collapse-2" aria-expanded="false" aria-label="Toggle navigation">
        <span class="bsk-navbar-toggler-icon"></span>
      </button> -->
    </div>
    <ul class="bsk-navbar-nav">
      <li><a href="#" class="bsk-nav-link">Item</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

{% example html %}
<nav class="bsk-navbar bsk-navbar-lg">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand bsk-navbar-brand-image-96" href="#">
        <img src="{{ '/img/placeholder-96.png' | prepend: site.baseurl }}">
      </a>
      <!-- <button class="bsk-navbar-toggler bsk-ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-3" aria-controls="bsk-example-navbar-collapse-3" aria-expanded="false" aria-label="Toggle navigation">
        <span class="bsk-navbar-toggler-icon"></span>
      </button> -->
    </div>
    <ul class="bsk-navbar-nabsk-navbar-navv">
      <li><a href="#" class="bsk-nav-link">Item</a></li>
    </ul>
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

Add the `.bsk-active` class to the navbar item currently active, to highlight where the end user is in the site.

{% capture alert_content %}
Make sure to include a `<span class="bsk-visually-hidden">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-lg">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-collapse">
      <ul class="bsk-navbar-nav bsk-flex-lg-row">
        <li class="bsk-active"><a href="#" class="bsk-nav-link">Active item <span class="bsk-visually-hidden">(current)</span></a></li>
        <li><a href="#" class="bsk-nav-link">Another item</a></li>
      </ul>
    </div>
  </div>
</nav>
{% endexample %}

This can also be used within [drop-down]({{ '/components/drop-down/#active' | prepend: site.baseurl }}) menus.

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-lg">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-collapse">
      <ul class="bsk-navbar-nav">
        <li class="bsk-nav-item bsk-dropdown bsk-active">
          <a href="#" class="bsk-dropdown-toggle bsk-nav-link" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Dropdown <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu bsk-dropdown-menu-dark">
            <li><a href="#" class="bsk-dropdown-item">Action</a></li>
            <li class="bsk-active"><a href="#" class="bsk-dropdown-item">Active item <span class="bsk-visually-hidden">(current)</span></a></li>
            <li><a href="#" class="bsk-dropdown-item">Another item</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Hidden items"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-navbar-collapse` class on an element that will contain navbar items to be hidden behind a menu at small
screen sizes.

When the screen size narrows past the [small grid size]({{ 'core/grid/#grid-sizes' | prepend: site.baseurl }}), items
in this element will be hidden using the [collapse]({{ '/interactivity/collapse' | prepend: site.baseurl }}) JavaScript
plugin. A [hidden items menu]({{ 'components/navbars/#hidden-items-menu' | prepend: site.baseurl }}) button is used to
show or hide these items in a vertical menu.

{% capture alert_content %}
This navbar component requires the [collapse]({{ '/interactivity/collapse' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
This example will only work at small screen sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-md bsk-navbar-dark bsk-bg-dark">
  <div class="bsk-container-fluid">
      <button class="bsk-navbar-toggler bsk-ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-4" aria-controls="bsk-example-navbar-collapse-4" aria-expanded="false" aria-label="Toggle navigation">
        <span class="bsk-navbar-toggler-icon"></span>
      </button>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="bsk-collapse bsk-navbar-collapse" id="bsk-example-navbar-collapse-4">
      <ul class="bsk-nav bsk-navbar-nav">
        <li><a href="#" class="bsk-dropdown-item">Item 0</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 1</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 2</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 3</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 4</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 5</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 6</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 7</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 8</a></li>
        <li><a href="#" class="bsk-dropdown-item">Item 9</a></li>
      </ul>
    </div>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Item alignment"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Use the `.bsk-ms-auto` class to position navbar items to the right, including navigation links, drop-down
menus, text, buttons etc.

To align navigation links and drop-downs wrap them in a `ul` element with the relevant alignment class.

{% capture alert_content %}
Multiple right aligned elements are not currently supported and may not look correct.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Left (Non)-aligned item</a></li>
    </ul>
    <ul class="bsk-nav bsk-navbar-nav bsk-ms-auto">
      <li><a href="#">Right aligned item</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Fixed to top"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Add the `.bsk-fixed-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to fix a navbar to the top of the page.

Additional CSS rules, such as the example below, are needed to prevent the navbar covering up other page content.

{% highlight scss %}
body {
  padding-top: 70px;
}
{% endhighlight %}

{% example html %}
<nav class="bsk-navbar bsk-fixed-top">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav bsk-flex-sm-row">
      <li class="bsk-active"><a href="#">Home <span class="bsk-visually-hidden">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div>
</nav>
{% endexample %}

{% capture alert_content %}
This example would normally use absolute positioning. It is disabled here to avoid breaking the website.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Fixed to bottom item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-fixed-bottom` class and include a
[container]({{ 'core/layout/#containers' | prepend: site.baseurl }}) to fix a navbar to the bottom of the page.

Additional CSS rules, such as the example below, are needed to prevent the navbar covering up other page content.

The Style Kit doesn’t provide styles for this, however the class below can be used as a starting point

{% highlight scss %}
body {
  padding-bottom: 70px;
}
{% endhighlight %}

{% example html %}
<nav class="bsk-navbar bsk-navbar-expand-lg bsk-fixed-bottom">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-collapse">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
      <div class="collapse navbar-collapse">
        <ul class="bsk-nav bsk-navbar-nav bsk-flex-sm-row">
          <li class="bsk-active"><a href="#">Home <span class="bsk-visually-hidden">(current)</span></a></li>
          <li><a href="#">About</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>
{% endexample %}

{% capture alert_content %}
This example would normally use absolute positioning. It is disabled here to avoid breaking the website.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Sticky top"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Add the `.bsk-sticky-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to create a full-width navbar that scrolls with the page.

{% capture alert_content %}
Unlike the `.bsk-navbar-fixed-*` classes, you do not need to change any padding on the body.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar bsk-sticky-top">
  <div class="bsk-container-fluid">
    <a class="bsk-navbar-brand" href="#">Site Name</a>
    <div class="collapse navbar-collapse">
      <ul class="bsk-nav bsk-navbar-nav bsk-flex-sm-row">
        <li class="bsk-active"><a href="#">Home <span class="bsk-visually-hidden">(current)</span></a></li>
        <li><a href="#">About</a></li>
      </ul>
    </div>
  </div>
</nav>
{% endexample %}
