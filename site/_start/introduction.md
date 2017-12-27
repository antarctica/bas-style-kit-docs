---
sort_index: 1
title: Introduction
sections:
  -
    title: About
  -
    title: Quick start
  -
    title: Global prefix
  -
    title: Starter template
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The BAS Style Kit is based on [Bootstrap](https://www.getbootstrap.com), the worlds most popular CSS framework.
The Style Kit uses a customised version of Bootstrap to follow our design choices (such as not using rounded corners).

The Style Kit is based on version <em>3.3.7</em> of the official
[Bootstrap Sass port](https://github.com/twbs/bootstrap-sass).

As well as Bootstrap, the BAS Style Kit takes influences from:

* the [Government Digital Service (GDS)](https://gds.blog.gov.uk/about/)
* other frameworks, organisations and sources of best practice

{% include snippets/topic-section-metadata.html
  title="Quick start"
  heading_level=2
%}

The recommended, and quickest, way to include the BAS Style Kit in your website or service is to use the BAS CDN.

Include this CSS file before any other of your project's styles, in the <code>&lt;head&gt;</code> element:

{% highlight html %}
{% include snippets/link-css-bas-style-kit-min.html %}
{% endhighlight %}

{% alert info style=highlight %}
See the [distribution]({{ '/start/distribution' | prepend: site.baseurl }}){: .bsk-alert-link } section for other ways
to use the Style Kit.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Global prefix"
  heading_level=2
%}

To avoid clashes with other CSS styles and to provide a more uniform and predicatable structure, all classes within the
Style Kit use a *Global Prefix* of <code>bsk-</code>.

{% alert info style=highlight %}
I.e. use `.bsk-btn bsk-btn-default` not `.btn .btn-default`.
{% endalert %}

There are some exceptions to this:

* As an external library, [Font Awesome]({{ '/core/icons/#available-icons' | prepend: site.baseurl }}) classes are not
prefixed (i.e. use `fa fa-star` not `.bsk-fa .bsk-fa-star`)

{% alert warning %}
Take care not to use default Bootstrap classes as they won't be styled correctly and may stop working without warning.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Starter template"
  heading_level=2
%}

Below is the minimal HTML needed to use the BAS Style Kit, following recommended best practices, and ensuring
compatibility with older web browsers.

{% alert info style=highlight %}
This [starter template]({{ '/examples/starter-template' | prepend: site.baseurl }}){: .bsk-alert-link } is also available
as a standalone example.
{% endalert %}

{% highlight html %}
<!DOCTYPE html>
<html lang="en-GB">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head -->

    <!-- Recommended meta tags for SEO -->
    <title>BAS Style Kit - Starter template</title>
    <meta name="description" content="A brief description of this page, or application">

    <!-- Compiled and minified BAS Style Kit -->
    <link rel="stylesheet" href="{{ site.bsk_cdn_base_staging }}/{{ site.bsk_version_staging }}/css/bas-style-kit.min.css" integrity="{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}" crossorigin="anonymous">

    <!-- Site specific styles - optional -->
  </head>
  <body>
    <h1>Welcome to the starter template for the BAS Style Kit!</h1>

    <!-- jQuery (necessary for JavaScript plugins) -->
    <script src="https://cdn.web.bas.ac.uk/js-libs/jquery-3.1.1.min.js"></script>
    <!-- Cookie library used to persistently hide the cookie banner (slightly ironic we need a cookie to do this) -->
    <script src="https://cdn.web.bas.ac.uk/js-libs/js.cookie-2.1.3.min.js"></script>
    <!-- Compiled and minified JavaScript plugins provided by the Style Kit -->
    <script src="https://cdn.web.bas.ac.uk/bas-style-kit/0.3.0-alpha/js/bas-style-kit.min.js"></script>

    <!-- Site specific scripts - optional -->
  </body>
</html>
{% endhighlight %}
