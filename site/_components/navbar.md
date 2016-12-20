---
title: Navbar
sections:
  -
    title: Overview
  -
    title: Overflowing content
  -
    title: Default navbar
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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.navbar-bsk` and `.navbar` classes to create navigation bars used for primary, horizontal, navigation.
They can contain links, drop-down menus, forms and other
[components]({{ '/components/navbar/#components' | prepend: site.baseurl }}).

Navbars are designed to scale with screen size. At small sizes key items will be shown normally, with less important
items shown in a hidden menu, which can be toggled with a button. At larger sizes, all elements are shown directly.

Always use the `.navbar-bsk` and `.navbar` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

Navbars are relatively *heavy* elements, requiring significant markup and JavaScript plugins to work correctly. Where
this isn't possible, or suitable, the [header]({{ '/components/header' | prepend: site.baseurl }}){: .alert-link }
component can be used instead.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Overflowing content"
  heading_level=3
%}

The navbar component is not aware of the width of items that sit within it. This means it is possible for items to
*overflow* onto a second level, breaking the page layout and looking bad.
{: .alert .alert-warning }

This problem worsens as the screen size narrows, and worst just before the
[small grid size]({{ 'core/grid/#grid-sizes' | prepend: site.baseurl }}). Past this point, the navbar will hide
elements and so reduce pressure on the number of items that need to be shown.

There is no way to automatically detect when this overflow happens, and so requires manual testing at multiple screen
sizes to ensure things work correctly.

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default navbar"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

This example, whilst quite complex, demonstrates the sort of items shown in a typical navbar.

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="collapse navbar-collapse" id="bsk-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="#">About</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-bsk">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Part of the British Antarctic Survey <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-bsk">
            <li><a href="https://www.bas.ac.uk">BAS Home</a></li>
            <li><a href="#">Another link</a></li>
            <li><a href="https://data.bas.ac.uk">Discover BAS data</a></li>
          </ul>
        </li>
        <li><a href="#">Feedback</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Hidden items menu"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

At small screen sizes, a button is shown to open and close the menu of navbar items.

The first example below will only show the menu button at small screen sizes. The second example shows the button at
any screen size (for demonstration purposes).

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-2" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <div class="navbar-header">
      <!-- The '.navbar-toggle-always' class is used instead of '.navbar-toggle' for demonstration purposes -->
      <button type="button" class="navbar-toggle-always collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-3" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Brand text"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.navbar-brand` class to indicate the name of the current website or service.

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Brand image"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the same `.navbar-brand` class with a image to show a logo or other image.

You will likely need to create add a custom class wherever the `.navbar-brand` class is used to adjust padding.

The examples below use a `.navbar-brand-bas-logo` class with the following styles:

{% highlight css %}
.navbar-brand-bas-logo {
  padding-top: 7px;
}
.navbar-brand-bas-logo .img {
  width: 150px;
}
{% endhighlight %}

Using an image and text together is not currently supported.
{: .alert .alert-warning }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand navbar-brand-bas-logo" href="#">
        <img alt="British Antarctic Survey Logo" src="{{ '/img/bas-logo-full-white-transparent.png' | prepend: site.baseurl }}">
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Text"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.navbar-text` class to correctly position and colour any text elements.

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <p class="navbar-text">Some text</p>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Buttons"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.navbar-btn` class to correctly position any button elements, unless the button is inside a `form` element.

Remember to always use `.btn-bsk` and `.btn` together so that Style Kit specific styles are applied.
{: .alert .alert-info }

Using the `.btn` class with a <code>&lt;a&gt;</code> element within a navigation menu using the `.navbar-nav` class is not supported.
{: .alert .alert-warning }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <button class="btn btn-bsk btn-default navbar-btn">Action</button>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Forms"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.navbar-form` class to correctly position any form elements.

The navbar [alignment]({{ '/components/navbar/#item-alignment' | prepend: site.baseurl }}){: .alert-link }, classes can
be used to further control such items.
{: .alert .alert-info }

It is strongly recommended to include visible labels for each form field (the `placeholder` attribute is not
universally supported yet for example).

Where labels are hidden, the `.sr-only` class **should** always be used to ensure assistive technologies can
understand forms. Alternatively, you can use the `aria-label`, `aria-labelledby` or `title` attributes.
{: .alert .alert-warning }

Some form controls, like [input groups]({{ '/components/input-group' | prepend: site.baseurl }}){: .alert-link },
may require fixed widths to be show up properly within a navbar.
{: .alert .alert-warning }

Support for form controls in navbars at small sizes, such as mobile, is limited.
It is recommended to use this feature sparingly until support improves.
{: .alert .alert-warning }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <label class="control-label sr-only" for="navbar-form-inputs-example-1">Text input</label>
        <input id="navbar-form-inputs-example-1" type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-bsk btn-default">Submit</button>
    </form>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Drop-down menus"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

[Drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}) can be used as navbar items as-is.

Remember to always use `.dropdown-menu-bsk` and `.dropdown-menu` together so that Style Kit specific styles are applied.
{: .alert .alert-info }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
        Dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu dropdown-menu-bsk">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another item</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Non-navigation links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.navbar-link` class to correctly colour any link elements that are not part of the navigation menu.

Typically this will be used within elements using the
[navbar text]({{ '/components/#text' | prepend: site.baseurl }}){: .alert-link } class.
{: .alert .alert-info }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <p class="navbar-text">Some text with a <a href="#" class="navbar-link">link</a></p>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a jumbotron:

| Navbar Size | Navbar Size Class |
| ----------- | ----------------- |
| Large       | `.navbar-bsk-lg`  |
{: .table .table-responsive }

{% example html %}
<nav class="navbar navbar-bsk navbar-bsk-lg">
  <div class="container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="collapse navbar-collapse" id="bsk-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="#">About</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-bsk">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Part of the British Antarctic Survey <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-bsk">
            <li><a href="https://www.bas.ac.uk">BAS Home</a></li>
            <li><a href="#">Another link</a></li>
            <li><a href="https://data.bas.ac.uk">Discover BAS data</a></li>
          </ul>
        </li>
        <li><a href="#">Feedback</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

Large navbars using a [brand image]({{ '/components/navbar/#brand-image' | prepend: site.baseurl }}){: .alert-link }
need to use the `.navbar-brand-img-fix` class. <br />
This adds the correct top-padding and makes the page layout look normal.
{: .alert .alert-info }

{% example html %}
<nav class="navbar navbar-bsk navbar-bsk-lg">
  <div class="container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand navbar-brand-bas-logo-lg" href="#">
        <img class="navbar-brand-img-fix" alt="British Antarctic Survey Logo" src="{{ '/img/bas-logo-full-white-transparent.png' | prepend: site.baseurl }}">
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">Item</a></li>
    </ul>
  </div><!-- /.container-fluid -->
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

Add the `.active` class to the navbar item currently active, to highlight where the end user is in the site.

Make sure to include a `<span class="sr-only">(current)</span>` element as well. <br />
This provides a non-visual indication of the currently active item, suitable for assistive technologies.
{: .alert .alert-warning }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Active item <span class="sr-only">(current)</span></a></li>
      <li><a href="#">Another item</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

This can also be used within [drop-down]({{ '/components/drop-down/#active' | prepend: site.baseurl }}) menus if needed.
{: .alert .alert-info }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
        Dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu dropdown-menu-bsk">
          <li><a href="#">Action</a></li>
          <li class="active"><a href="#">Active item <span class="sr-only">(current)</span></a></li>
          <li><a href="#">Another item</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Hidden items"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Wrap navbar items to be hidden in the menu in an element with the `.navbar-collapse` class.
The [hidden items menu]({{ '/components/navbar/#hidden-items-menu' | prepend: site.baseurl }}) is used to show and hide
this menu.

The navbar component requires the [collapse]({{ '/interactivity/collapse' | prepend: site.baseurl }}){: .alert-link }
JavaScript plugin, which is enabled on this site.
{: .alert .alert-danger }

When the screen size narrows past the [small grid size]({{ 'core/grid/#grid-sizes' | prepend: site.baseurl }}), items
will be hidden using CSS classes to be shown in a menu. The collapse JavaScript plugin is used to control this menu.
Without this plugin, these items can never be shown, until the screen size increases past the small grid size.

The example below will only behave correctly at small screen sizes.
{: .alert .alert-info }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <!-- Hidden navbar items menu -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bsk-example-navbar-collapse-4" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div class="collapse navbar-collapse" id="bsk-example-navbar-collapse-4">
      <ul class="nav navbar-nav">
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
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Item alignment"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.navbar-left` and `.navbar-right` classes to position navbar items, including navigation links, drop-down
menus, text, buttons etc.

To align navigation links and drop-downs wrap them in a `ul` element with the relevant alignment class.

Multiple right aligned elements are not currently supported and won't look right.
{: .alert .alert-warning }

{% example html %}
<nav class="navbar navbar-bsk">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="#">Left (Non)-aligned item</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Right aligned item</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Fixed to top"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.navbar-fixed-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to fix a navbar to the top of the page.

Fixed styles require additional padding on the `body` element. Otherwise the navbar will cover up other page content.
{: .alert .alert-danger }

The Style Kit doesn’t provide styles for this, however the class below can be used as a starting point

{% highlight css %}
body {
  padding-top: 70px;
}
{% endhighlight %}

{% example html %}
<nav class="navbar navbar-bsk navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Fixed to bottom item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.navbar-fixed-bottom` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to fix a navbar to the bottom of the page.

Fixed styles require additional padding on the `body` element. Otherwise the navbar will cover up other page content.
{: .alert .alert-danger }

The Style Kit doesn’t provide styles for this, however the class below can be used as a starting point

{% highlight css %}
body {
  padding-bottom: 70px;
}
{% endhighlight %}

{% example html %}
<nav class="navbar navbar-bsk navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Static top"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.navbar-static-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }}) to create a
full-width navbar that scrolls with the page.

Unlike the `.navbar-fixed-*` classes, you do not need to change any padding on the body.
{: .alert .alert-info }

{% example html %}
<nav class="navbar navbar-bsk navbar-static-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Site Name</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div><!-- /.container-fluid -->
</nav>
{% endexample %}
