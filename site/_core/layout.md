---
title: Layout
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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The BAS Style Kit inherits, and expands, the layout features provided by Bootstrap. **Compatibility with Bootstrap's
layout classes is guaranteed.**

The Style Kit's additions focus on extending the [grid system]({{ '/core/grid/' | prepend: site.baseurl }}), to include
additional sizes (break-points), and an alternate, interchangeable, grid with more columns.

{% include snippets/topic-section-metadata.html
  title="Containers"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Containers are the fundamental layout element and typically contains most of a page. Containers are required when using
the [grid system]({{ '/core/grid/' | prepend: site.baseurl }}), or can be used independently for compatibility with
other layout designs.

Two containers are available, they can be mixed and nested if needed.

Use the *fixed-width container* if you are unsure which to use.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Fixed-width container"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.container` class for a responsive and fixed-width container. This means its `max-width` changes at each
[responsive breakpoint]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}).

{% example html %}
<div class="container">
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Fluid container"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.container-fluid` class for a full-width container, meaning it spans the entire width of the viewport.

You might need to use this container where you are integrating the Style Kit with existing or third party code, or for
certain types of content, such as mapping.
{: .alert .alert-info }

{% example html %}
<div class="container-fluid">
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Responsive breakpoints"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
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

These queries are based on the browser width only. We don't use query string sniffing, or other related techniques,
to identify the type of device being used. If this information is needed consider using an analytics service.
{: .alert .alert-warning }

No media-query is used for the *extra small* size, therefore devices smaller than the extra small minimum will still be
considered extra small. This slightly strange situation is resolved in the next Bootstrap version (v4) and will be
included in future versions of the Style Kit when this is released.
{: #xs-min-width-note .alert .alert-info }

The *extra large* size is custom to the BAS Style Kit, and is used to target larger displays to improve the use of
space for internal, data rich, applications. It is not recommended for use in general websites.
{: .alert .alert-info }

**Heads up!** Responsive breakpoints are changing in the next version of the Style Kit. See
[BSK-111](https://jira.ceh.ac.uk/browse/bsk-111) for more information.
{: .alert .alert-info }

| Size        | Class Name | Example Device <small class="text-muted">Orientation</small> | Minimum Width (px) | Min Width Variable | Core Bootstrap |
| ----------- | ---------- | ------------------------------------------------------------ | ------------------ | ------------------ | -------------- |
| Extra Small | `xs`       | Phone <small class="text-muted">portrait</small>             | 480 ([see note](#xs-min-width-note))     | `$screen-xs-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Small       | `sm`       | Phone <small class="text-muted">landscape</small>            | 768                | `$screen-sm-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Medium      | `md`       | Tablets                                                      | 992                | `$screen-md-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Large       | `lg`       | Computers                                                    | 1200               | `$screen-lg-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Extra Large | `xl`       | Large desktop computers                                      | 1800               | `$screen-xl-min`   | <span class="text-danger"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> No</span>  |
{: .table }

{% include snippets/topic-section-metadata.html
  title="Maximum width"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
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
| Extra Large | N/A                | N/A                |
{: .table }

{% include snippets/topic-section-metadata.html
  title="Unit responsive breakpoints"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
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

{% include snippets/topic-section-metadata.html
  title="Floated blocks"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.pull-left` and `.pull-right` classes to float content. The `!important` modifier is used to prevent
specificity issues.

Do not use these classes in [navbars]({{ '/components/navbar' | prepend: site.baseurl }}), `.navbar-left` and
`.navbar-right` classes should be used instead.
{: .alert .alert-warning }

{% example html %}
<div class="pull-left">
  <!-- TODO: Add example blocks -->
</div>
{% endexample %}

{% example html %}
<div class="pull-right">
  <!-- TODO: Add example blocks -->
</div>
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

{% include snippets/topic-section-metadata.html
  title="Centred blocks"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.center-block` class to align a block using CSS margins.

{% example html %}
<div class="center-block">
  <!-- TODO: Add example blocks -->
</div>
{% endexample %}

Alternatively, a mixin can be used:

{% highlight scss %}
.element {
  .center-block();
}
{% endhighlight %}

{% include snippets/topic-section-metadata.html
  title="Clearfix"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.clearfix` class on the **parent** element to clear floats. This uses the
[the micro clearfix](http://nicolasgallagher.com/micro-clearfix-hack/) by Nicolas Gallagher.

{% example html %}
<div class="clearfix"></div>
{% endexample %}

Alternatively, a mixin can be used:

{% highlight scss %}
.element {
  .clearfix();
}
{% endhighlight %}

{% include snippets/topic-section-metadata.html
  title="Visibility"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
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
{: .dl-bsk }

{% include snippets/topic-section-metadata.html
  title="General visibiliy classes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Both classes and mixins are available for setting these states generally (i.e. under any circumstances).

| State              | Class        | Mixin           |
| ------------------ | ------------ | --------------- |
| Shown              | `.show`      | `.show();`      |
| Hidden             | `.hidden`    | `.hidden();`    |
| Invisible          | `.invisible` | `.invisible();` |
| Screen reader only | `.sr-only`   | `.sr-only();`   |
{: .table }

### Responsive visibility classes
{: #{{ 'Responsive visibility classes' | slugify }} }

{% include snippets/back-to-top.html %}

{% include snippets/topic-section-metadata.html
  title="Responsive visibiliy classes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

As an alternative to the general classes, it's possible to control an elements visibility at each responsive breakpoint.
Any of these classes can be mixed and matched for each size.

These classes **should not** be used to display completely different content at different breakpoints. Rather these
classes **should** be targeted to specific areas or features, generally to hide non-essential information on smaller
devices.
{: .alert .alert-warning }

The Invisible and Screen reader only states doesn't depend on the screen size and so have no per-breakpoint classes.
{: .alert .alert-info }

Unlike grid columns for example, visibility does not flow upwards grid sizes. If you hide an element at the
*extra small* grid size, it will become visible again at the *small* size.
{: .alert .alert-info }

| Size        | Visible Classes                                                                   | Hidden Class |
| ----------- | --------------------------------------------------------------------------------- |------------- |
| Extra Small | `.visible-xs-block` <br /> `.visible-xs-inline` <br /> `.visible-xs-inline-block` | `.hidden-xs` |
| Small       | `.visible-sm-block` <br /> `.visible-sm-inline` <br /> `.visible-sm-inline-block` | `.hidden-sm` |
| Medium      | `.visible-md-block` <br /> `.visible-md-inline` <br /> `.visible-md-inline-block` | `.hidden-md` |
| Large       | `.visible-lg-block` <br /> `.visible-lg-inline` <br /> `.visible-lg-inline-block` | `.hidden-lg` |
| Extra Large | `.visible-xl-block` <br /> `.visible-xl-inline` <br /> `.visible-xl-inline-block` | `.hidden-xl` |
{: .table }

{% include snippets/topic-section-metadata.html
  title="Print visibility classes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The `.visible-print-block`, `.visible-print-inline` and `.visible-print-inline-block` classes can be used to show
content when printing.

Conversely, the `.hidden-print` class can be used to hide content.

{% include snippets/topic-section-metadata.html
  title="Test cases"
  heading_level=2
%}

See the [visibility examples]({{ '/examples/visibility' | prepend: site.baseurl }}) for testing which classes are
visible under different circumstances.
