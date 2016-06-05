---
title: Layout
sections:
  -
    title: Overview
  -
    title: Containers
  -
    title: Responsive breakpoints
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The BAS Style Kit inherits, and expands, the layout features provided by Bootstrap. **Compatibility with Bootstrap's
layout classes is guaranteed.**

The Style Kit's additions focus on extending the [grid system]({{ '/core/grid/' | prepend: site.baseurl }}), to include
additional sizes (break-points), and an alternate, interchangeable, grid with more columns.

## Containers
{: #{{ 'Containers' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Containers are the fundamental layout element and typically contains most of a page. Containers are required when using
the [grid system]({{ '/core/grid/' | prepend: site.baseurl }}), or can be used independently for compatibility with
other layout designs.

Two containers are available, they can be mixed and nested if needed.

Use the *default container* if you are unsure which to use.
{: .alert .alert-info }

### Default container
{: #{{ 'Default container' | slugify }} }

{% include snippets/back-to-top.html %}

The default container, `.container`, is responsive and fixed-width, meaning its `max-width` changes at each
[responsive breakpoint]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}).

{% example html %}
<div class="container">
  <!-- TODO: Add example blocks -->
</div>
{% endexample %}

### Fluid container
{: #{{ 'Fluid container' | slugify }} }

{% include snippets/back-to-top.html %}

The fluid container, `.container-fluid`, is full-width, meaning it will always span the entire width of the viewport.

You might need to use this container where you are integrating the Style Kit with existing or third party code, or for
certain types of content, such as mapping.
{: .alert .alert-info }

{% example html %}
<div class="container-fluid">
  <!-- TODO: Add example blocks -->
</div>
{% endexample %}

## Responsive breakpoints
{: #{{ 'Responsive breakpoints' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

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
considered extra small. This is a slightly strange situation will be resolved in future versions of the Style Kit.

The *extra large* size is custom to the BAS Style Kit, and is used to target larger displays to improve the use of
space for internal, data rich, applications. It is not recommended for use in general websites.

**Heads up!** Responsive breakpoints are changing in the next version of the Style Kit. See {% jira issue="BSK-111" %}
for more information.
{: .alert .alert-info }

| Size        | Class Name | Example Device <small class="text-muted">Orientation</small> | Minimum Width (px) | Min Width Variable | Core Bootstrap |
| ----------- | ---------- | ------------------------------------------------------------ | ------------------ | ------------------ | -------------- |
| Extra Small | `xs`       | Phone <small class="text-muted">portrait</small>             | 480 (see note)     | `$screen-xs-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Small       | `sm`       | Phone <small class="text-muted">landscape</small>            | 768                | `$screen-sm-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Medium      | `md`       | Tablets                                                      | 992                | `$screen-md-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Large       | `lg`       | Computers                                                    | 1200               | `$screen-lg-min`   | <i class="fa fa-check" aria-hidden="true"></i> Yes                                               |
| Extra Large | `xl`       | Large desktop computers                                      | 1800               | `$screen-xl-min`   | <span class="text-danger"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> No</span>  |
{: .table }

### Maximum width
{: #{{ 'Maximum width' | slugify }} }

{% include snippets/back-to-top.html %}

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

###  Using responsive breakpoints
{: #{{ 'Using responsive breakpoints' | slugify }} }

{% include snippets/back-to-top.html %}

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
