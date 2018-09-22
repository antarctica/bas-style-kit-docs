---
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
    title: Drop-down menus
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
  included="yes"
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-active"><a href="#">Home <span class="bsk-sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

This example, whilst quite complex, demonstrates the sort of items shown in a typical navbar.

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="bsk-navbar-header">
      <button type="button" class="bsk-navbar-toggle bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="bsk-collapse bsk-navbar-collapse" id="bsk-example-navbar-collapse-1">
      <ul class="bsk-nav bsk-navbar-nav">
        <li class="bsk-active"><a href="#">Home <span class="bsk-sr-only">(current)</span></a></li>
        <li><a href="#">About</a></li>
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Dropdown <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="bsk-divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="bsk-divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="bsk-nav bsk-navbar-nav bsk-navbar-right">
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Part of British Antarctic Survey <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu">
            <li><a href="https://www.bas.ac.uk">BAS Home</a></li>
            <li><a href="#">Another link</a></li>
            <li><a href="https://data.bas.ac.uk">Discover BAS data</a></li>
          </ul>
        </li>
        <li><a href="#">Feedback</a></li>
      </ul>
    </div><!-- /.bsk-navbar-collapse -->
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Hidden items menu"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

At small screen sizes, a button is shown to open and close the menu of navbar items.

The first example below will only show the menu button at small screen sizes. The second example shows the button at
any screen size (for demonstration purposes).

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <button type="button" class="bsk-navbar-toggle bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-2" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
    </div>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <!-- The '.bsk-docs-navbar-toggle-always' class is used instead of '.bsk-navbar-toggle' for demonstration purposes -->
      <button type="button" class="bsk-docs-navbar-toggle-always bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-3" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
    </div>
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Forms"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
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
Where labels are hidden, the `.bsk-sr-only` class **should** always be used to ensure assistive technologies can
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
    <form class="bsk-navbar-form bsk-navbar-left" role="search">
      <div class="bsk-form-group">
        <label class="bsk-control-label bsk-sr-only" for="bsk-navbar-form-inputs-example-1">Text input</label>
        <input id="bsk-navbar-form-inputs-example-1" type="search" class="bsk-form-control" placeholder="Search">
      </div>
      <button type="submit" class="bsk-btn bsk-btn-default bsk-navbar-btn">Submit</button>
    </form>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Drop-down menus"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

[Drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}) can be used as navbar items as-is.

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-dropdown">
        <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
        Dropdown <span class="bsk-caret"></span></a>
        <ul class="bsk-dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another item</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
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
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a jumbotron:

| Navbar Size | Navbar Size Class |
| ----------- | ----------------- |
| Large       | `.bsk-navbar-lg`  |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<nav class="bsk-navbar bsk-navbar-lg">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="bsk-navbar-header">
      <button type="button" class="bsk-navbar-toggle bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="bsk-collapse bsk-navbar-collapse" id="bsk-example-navbar-collapse-1">
      <ul class="bsk-nav bsk-navbar-nav">
        <li class="bsk-active"><a href="#">Home <span class="bsk-sr-only">(current)</span></a></li>
        <li><a href="#">About</a></li>
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Dropdown <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="bsk-divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="bsk-divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="bsk-nav bsk-navbar-nav bsk-navbar-right">
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Part of British Antarctic Survey <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu">
            <li><a href="https://www.bas.ac.uk">BAS Home</a></li>
            <li><a href="#">Another link</a></li>
            <li><a href="https://data.bas.ac.uk">Discover BAS data</a></li>
          </ul>
        </li>
        <li><a href="#">Feedback</a></li>
      </ul>
    </div><!-- /.bsk-navbar-collapse -->
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% example html %}
<nav class="bsk-navbar bsk-navbar-lg">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="bsk-navbar-header">
      <button type="button" class="bsk-navbar-toggle bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
      <a class="bsk-navbar-brand bsk-navbar-brand-image-64" href="#">
        <img src="{{ '/img/placeholder-64.png' | prepend: site.baseurl }}">
      </a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% example html %}
<nav class="bsk-navbar bsk-navbar-lg">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="bsk-navbar-header">
      <button type="button" class="bsk-navbar-toggle bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
      <a class="bsk-navbar-brand bsk-navbar-brand-image-96" href="#">
        <img src="{{ '/img/placeholder-96.png' | prepend: site.baseurl }}">
      </a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="bsk-active item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-active` class to the navbar item currently active, to highlight where the end user is in the site.

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
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-active"><a href="#">Active item <span class="bsk-sr-only">(current)</span></a></li>
      <li><a href="#">Another item</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% capture alert_content %}
This can also be used within [drop-down]({{ '/components/drop-down/#active' | prepend: site.baseurl }}) menus if needed.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-active bsk-dropdown">
        <a href="#" class="bsk-dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
        Dropdown <span class="bsk-caret"></span></a>
        <ul class="bsk-dropdown-menu">
          <li><a href="#">Action</a></li>
          <li class="bsk-active"><a href="#">Active item <span class="bsk-sr-only">(current)</span></a></li>
          <li><a href="#">Another item</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
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

Wrap navbar items to be hidden in the menu in an element with the `.bsk-navbar-collapse` class.
The [hidden items menu]({{ '/components/navbar/#hidden-items-menu' | prepend: site.baseurl }}) is used to show and hide
this menu.

{% capture alert_content %}
The navbar component requires the [collapse]({{ '/interactivity/collapse' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

When the screen size narrows past the [small grid size]({{ 'core/grid/#grid-sizes' | prepend: site.baseurl }}), items
will be hidden using CSS classes to be shown in a menu. The collapse JavaScript plugin is used to control this menu.
Without this plugin, these items can never be shown, until the screen size increases past the small grid size.

{% capture alert_content %}
The example below will only behave correctly at small screen sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<nav class="bsk-navbar">
  <div class="bsk-container-fluid">
    <!-- Hidden navbar items menu -->
    <div class="bsk-navbar-header">
      <button type="button" class="bsk-navbar-toggle bsk-collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-4" aria-expanded="false">
        <span class="bsk-sr-only">Toggle navigation</span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
        <span class="bsk-icon-bar"></span>
      </button>
    </div>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="bsk-collapse bsk-navbar-collapse" id="bsk-example-navbar-collapse-4">
      <ul class="bsk-nav bsk-navbar-nav">
        <li><a href="#">Item 0</a></li>
        <li><a href="#">Item 1</a></li>
        <li><a href="#">Item 2</a></li>
        <li><a href="#">Item 3</a></li>
        <li><a href="#">Item 4</a></li>
        <li><a href="#">Item 5</a></li>
        <li><a href="#">Item 6</a></li>
        <li><a href="#">Item 7</a></li>
        <li><a href="#">Item 8</a></li>
        <li><a href="#">Item 9</a></li>
      </ul>
    </div><!-- /.bsk-navbar-collapse -->
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Item alignment"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-navbar-left` and `.bsk-navbar-right` classes to position navbar items, including navigation links, drop-down
menus, text, buttons etc.

To align navigation links and drop-downs wrap them in a `ul` element with the relevant alignment class.

{% capture alert_content %}
Multiple right aligned elements are not currently supported and won't look right.
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
    <ul class="bsk-nav bsk-navbar-nav bsk-navbar-right">
      <li><a href="#">Right aligned item</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Fixed to top"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-navbar-fixed-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to fix a navbar to the top of the page.

Additional CSS rules, such as the example below, are needed to prevent the navbar covering up other page content.

{% highlight scss %}
body {
  padding-top: 70px;
}
{% endhighlight %}

{% example html %}
<nav class="bsk-navbar navbar-fixed-top">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-active"><a href="#">Home <span class="bsk-sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Fixed to bottom item"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-navbar-fixed-bottom` class and include a
[container]({{ 'core/layout/#containers' | prepend: site.baseurl }}) to fix a navbar to the bottom of the page.

Additional CSS rules, such as the example below, are needed to prevent the navbar covering up other page content.

The Style Kit doesn’t provide styles for this, however the class below can be used as a starting point

{% highlight scss %}
body {
  padding-bottom: 70px;
}
{% endhighlight %}

{% example html %}
<nav class="bsk-navbar navbar-fixed-bottom">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-active"><a href="#">Home <span class="bsk-sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}

{% include topic-section-metadata.html
  title="Static top"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-navbar-static-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
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
<nav class="bsk-navbar navbar-static-top">
  <div class="bsk-container-fluid">
    <div class="bsk-navbar-header">
      <a class="bsk-navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="bsk-nav bsk-navbar-nav">
      <li class="bsk-active"><a href="#">Home <span class="bsk-sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.bsk-container-fluid -->
</nav>
{% endexample %}
