---
item_type: Core
title: Layout
menus:
  primary_core:
    weight: 10
sections:
  -
    title: Overview
  -
    title: Containers
  -
    title: Responsive breakpoints
  -
    title: Floated blocks
  -
    title: Centred blocks
  -
    title: Clearfix
  -
    title: Visibility
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The BAS Style Kit inherits, and expands, the layout features provided by Bootstrap.

{% include topic-section-metadata.html
  title="Containers"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Containers are the fundamental layout element and typically contains most of a page. Containers are required when using
the [grid system]({{ '/core/grid/' | prepend: site.baseurl }}), or can be used independently for compatibility with
other layout designs.

Two containers are available, which can be mixed and nested if needed.

{% capture alert_content %}
Use the *fixed-width container* if you are unsure which to use.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Fixed-width container"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-container` class for a responsive and fixed-width container. This means its `max-width` changes at each
[responsive breakpoint]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}).

{% capture alert_content %}
The container in the example will appear broken, this is because it is already placed within a container as part of
this site's layout.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-container">
  <div class="bsk-docs-content-block"></div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Fluid container"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-container-fluid` class for a full-width container, meaning it spans the entire width of the viewport.

{% capture alert_content %}
You might need to use this container where you are integrating the Style Kit with existing or third party code, or for
certain types of content, such as mapping.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-container-fluid">
  <div class="bsk-docs-content-block"></div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Responsive breakpoints"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

The Style Kit is
[mobile first]({{ '/start/standards-accessibility/#responsiveness-and-mobile-first' | prepend: site.baseurl }}),
meaning it is assumed pages will be viewed at the smallest possible size (i.e. on mobile phones) and then scales up,
progressively, to larger sizes based on common devices classes such as phones, tablets, small and large monitors, TVs
etc.

[Media breakpoints](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries) are used to
implement this design. They check if the current browser width is greater than the `min-width` of each breakpoint.
These queries are reapplied whenever the browser size changes, for example when switching from landscape to portrait
orientation on a phone.

{% capture alert_content %}
These queries are based on the browser width only. We don't use query string sniffing, or other related techniques,
to identify the type of device being used. If this information is needed consider using an analytics service.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
No media-query is used for the *extra small* size, therefore devices smaller than the extra small minimum will still be
considered extra small. This slightly strange situation is resolved in the next Bootstrap version (v4) and will be
included in future versions of the Style Kit when this is released.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
The *extra large* size is custom to the BAS Style Kit, and is used to target larger displays to improve the use of
space for internal, data rich, applications. It is not recommended for use in general websites.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
The *full HD* size is custom to the BAS Style Kit, and is used to target displays such as Televisions for digital
signage applications. It is not recommended for use in general websites.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

| Size        | Class Name | Example Device <small class="bsk-text-muted">Orientation</small> | Minimum Width (px)                      | Min Width Variable  | Core Bootstrap                                                                                             |
| ----------- | ---------- | ---------------------------------------------------------------- | --------------------------------------- | ------------------- | ---------------------------------------------------------------------------------------------------------- |
| Extra Small | `xs`       | Phone <small class="bsk-text-muted">portrait</small>             | 480 ([see note](#xs-min-width-note))    | `$screen-xs-min`    | <span class="bsk-text-success"><i class="far fa-fw fa-check" aria-hidden="true"></i> Yes</span>             |
| Small       | `sm`       | Phone <small class="bsk-text-muted">landscape</small>            | 768                                     | `$screen-sm-min`    | <span class="bsk-text-success"><i class="far fa-fw fa-check" aria-hidden="true"></i> Yes</span>             |
| Medium      | `md`       | Tablets                                                          | 992                                     | `$screen-md-min`    | <span class="bsk-text-success"><i class="far fa-fw fa-check" aria-hidden="true"></i> Yes</span>             |
| Large       | `lg`       | Computers                                                        | 1200                                    | `$screen-lg-min`    | <span class="bsk-text-success"><i class="far fa-fw fa-check" aria-hidden="true"></i> Yes</span>             |
| Extra Large | `xl`       | Large desktop computers                                          | 1800                                    | `$screen-xl-min`    | <span class="bsk-text-danger"><i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"></i> No</span>  |
| Full HD     | `fhd`      | Televisions                                                      | 1920                                    | `$screen-fhd-min`   | <span class="bsk-text-danger"><i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"></i> No</span>  |
{: .bsk-table .bsk-table-responsive }

{% include topic-section-metadata.html
  title="Maximum width"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

In some cases it is necessary to use the `max-width` as well to better target some devices. The maximum width is
calculated as the next minimum width size minus `1px`. There is no maximum width for the largest grid size.

| Size        | Maximum Width (px) | Max Width Variable |
| ----------- | ------------------ | ------------------ |
| Extra Small | 767                | `$screen-xs-max`   |
| Small       | 991                | `$screen-sm-max`   |
| Medium      | 1199               | `$screen-md-max`   |
| Large       | 1799               | `$screen-lg-max`   |
| Extra Large | 1919               | `$screen-xl-max`   |
| Full HD     | N/A                | N/A                |
{: .bsk-table .bsk-table-responsive }

{% include topic-section-metadata.html
  title="Using responsive breakpoints"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Typically these breakpoints are used indirectly, through the [grid system]({{ '/core/grid/' | prepend: site.baseurl }})
and other components, however they can also be used manually. This is useful where you aren't using the grid system,
or, in cases where you are integrating with existing code or a third party system.

{% highlight scss %}
// Styles for extra-small devices, or above
.foo {
  padding: 10px;
}

// Additional styles for medium devices, or above
@media (min-width: $screen-md-min) {
  .foo {
    padding: 20px;
  }
}
{% endhighlight %}

{% include topic-section-metadata.html
  title="Floated blocks"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-pull-left` and `.bsk-pull-right` classes to float content. The `!important` modifier is used to prevent
specificity issues.

{% capture alert_content %}
Do not use these classes in [navbars]({{ '/components/navbar' | prepend: site.baseurl }}){: .bsk-alert-link},
`.bsk-navbar-left` and `.bsk-navbar-right` classes should be used instead.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-pull-left bsk-docs-content-block">...</div>

<!-- This class is used to make this example look correct -->
<div class="bsk-clearfix"></div>
{% endexample %}

{% example html %}
<div class="bsk-pull-right bsk-docs-content-block">...</div>

<!-- This class is used to make this example look correct -->
<div class="bsk-clearfix"></div>
{% endexample %}

Alternatively, mixins can be used:

{% highlight scss %}
.element-one {
  .pull-left();
}
.element-two {
  .pull-right();
}
{% endhighlight %}

{% include topic-section-metadata.html
  title="Centred blocks"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-center-block` class to align a block using CSS margins.

{% example html %}
<div class="bsk-center-block bsk-docs-content-block">...</div>
{% endexample %}

Alternatively, a mixin can be used:

{% highlight scss %}
.element {
  .center-block();
}
{% endhighlight %}

{% include topic-section-metadata.html
  title="Clearfix"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-clearfix` class on the **parent** element to clear floats. This uses the
[the micro clearfix](http://nicolasgallagher.com/micro-clearfix-hack/) by Nicolas Gallagher.

{% example html %}
<div class="bsk-clearfix"></div>
{% endexample %}

Alternatively, a mixin can be used:

{% highlight scss %}
.element {
  .clearfix();
}
{% endhighlight %}

{% include topic-section-metadata.html
  title="Visibility"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The BAS Style Kit supports four states of visibility for block level elements. The `!important` modifier is used to
prevent specificity issues.

Shown (visible)
: An element which can be seen by everyone, and which affects page layout

Hidden
: An element which cannot be seen by anyone, and which does not affect the page layout

Invisible
: An element which cannot be seen by anyone, but which still affects page layout

Screen readers only
: An element which can only be seen by assistive technologies such as screen readers, and which does not affect the
page layout
{: .bsk-dl-lg }

{% include topic-section-metadata.html
  title="General visibility classes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Both classes and mixins are available for setting these states generally (i.e. under any circumstances).

| State              | Class            | Mixin           |
| ------------------ | ---------------- | --------------- |
| Shown              | `.bsk-show`      | `.show();`      |
| Hidden             | `.bsk-hidden`    | `.hidden();`    |
| Invisible          | `.bsk-invisible` | `.invisible();` |
| Screen reader only | `.bsk-sr-only`   | `.sr-only();`   |
{: .bsk-table .bsk-table-responsive }

{% include topic-section-metadata.html
  title="Responsive visibility classes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

As an alternative to the general classes, it's possible to control an elements visibility at each responsive breakpoint.
Any of these classes can be mixed and matched for each size.

{% capture alert_content %}
These classes **should not** be used to display completely different content at different breakpoints. Rather these
classes **should** be targeted to specific areas or features, generally to hide non-essential information on smaller
devices.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
The Invisible and Screen Reader only states doesn't depend on the screen size and so have no per-breakpoint classes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Unlike grid columns for example, visibility does not flow upwards grid sizes. If you hide an element at the
*extra small* grid size, it will become visible again at the *small* size.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

| Size        | Visible Classes                                                                                  | Hidden Class      |
| ----------- | ------------------------------------------------------------------------------------------------ |------------------ |
| Extra Small | `.bsk-visible-xs-block` <br /> `.bsk-visible-xs-inline` <br /> `.bsk-visible-xs-inline-block`    | `.bsk-hidden-xs`  |
| Small       | `.bsk-visible-sm-block` <br /> `.bsk-visible-sm-inline` <br /> `.bsk-visible-sm-inline-block`    | `.bsk-hidden-sm`  |
| Medium      | `.bsk-visible-md-block` <br /> `.bsk-visible-md-inline` <br /> `.bsk-visible-md-inline-block`    | `.bsk-hidden-md`  |
| Large       | `.bsk-visible-lg-block` <br /> `.bsk-visible-lg-inline` <br /> `.bsk-visible-lg-inline-block`    | `.bsk-hidden-lg`  |
| Extra Large | `.bsk-visible-xl-block` <br /> `.bsk-visible-xl-inline` <br /> `.bsk-visible-xl-inline-block`    | `.bsk-hidden-xl`  |
| Full HD     | `.bsk-visible-fhd-block` <br /> `.bsk-visible-fhd-inline` <br /> `.bsk-visible-fhd-inline-block` | `.bsk-hidden-fhd` |
{: .bsk-table .bsk-table-responsive }

{% include topic-section-metadata.html
  title="Print visibility classes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The `.bsk-visible-print-block`, `.bsk-visible-print-inline` and `.bsk-visible-print-inline-block` classes can be used
to show content when printing.

Conversely, the `.bsk-hidden-print` class can be used to hide content.

{% include topic-section-metadata.html
  title="Test cases"
  heading_level=2
%}

See the [visibility examples]({{ '/examples/visibility' | prepend: site.baseurl }}) for testing which classes are
visible under different circumstances.
