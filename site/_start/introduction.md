---
title: Introduction
sections:
  -
    title: About
  -
    title: Quick start
  -
    title: Starter template
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## About
{: #{{ 'About' | slugify }} }

The BAS Style Kit is based on [Bootstrap](https://www.getbootstrap.com), the worlds most popular CSS framework.
The Style Kit uses a customised version of Bootstrap to follow our design choices (such as not using rounded corners).

The Style Kit is currently based on version <em>3.6.6</em> of Bootstrap,
using the official [Bootstrap Sass port](https://github.com/twbs/bootstrap-sass).

As well as Bootstrap, the BAS Style Kit takes influences from the
[Government Digital Service (GDS)](https://gds.blog.gov.uk/about/), other frameworks, organisations and other sources
of best practice - and we are grateful for these being open-sourced.

## Quick start
{: #{{ 'Quick start' | slugify }} }

The recommended, and quickest, way to include the BAS Style Kit in your website or application is to use the BAS CDN.

Include these two CSS files, in the order given and before any other of your project's styles,
in the <code>&lt;head&gt;</code> element:

{% highlight html %}
{% include snippets/link-css-bootstrap-bsk-min.html %}
{% endhighlight %}

{% highlight html %}
{% include snippets/link-css-bas-style-kit-min.html %}
{% endhighlight %}

The first file, <em>bootstrap-bsk.min.css</em>, is the customised version of [Bootstrap](https://www.getbootstrap.com).
<br />
The second, <em>bas-style-kit.min.css</em>, is the Style Kit itself.

The order these files is important because of how CSS styles cascade.
{: .alert .alert-warning }

Other ways of including the Style Kit in a website or application are listed in the 
[distribution]({{ '/start/distribution' | prepend: site.baseurl }}) documentation.
{: .alert .alert-info }

## Starter template
{: #{{ 'Starter template' | slugify }} }

Below is the minimal HTML needed to use the BAS Style Kit, following recommended best practices, and ensuring
compatibility with older web browsers.

{% highlight html %}
<!DOCTYPE html>
<html lang="en-GB">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Recommended meta tags for SEO -->
    <title>BAS Style Kit - Starter template</title>
    <meta name="description" content="A brief description of this page, or application">

    <!-- Compiled and minified customised Bootstrap CSS for the BAS Style Kit -->
    {% if site.x_environment == 'staging' %}<link rel="stylesheet" href="{{ site.bsk_cdn_base_staging }}/{{ site.bsk_version_staging }}/css/bootstrap-bsk.min.css" integrity="{{ site.data.bsk_sri_base_staging['dist/css/bootstrap-bsk.min.css'] }}" crossorigin="anonymous">{% else %}
    <link rel="stylesheet" href="{{ site.bsk_cdn_base_production }}/{{ site.bsk_version_production }}/css/bootstrap-bsk.min.css" integrity="{{ site.data.bsk_sri_base_production['dist/css/bootstrap-bsk.min.css'] }}" crossorigin="anonymous">{% endif %}
    <!-- Compiled and minified BAS Style Kit CSS -->
    {% if site.x_environment == 'staging' %}<link rel="stylesheet" href="{{ site.bsk_cdn_base_staging }}/{{ site.bsk_version_staging }}/css/bas-style-kit.min.css" integrity="{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}" crossorigin="anonymous">{% else %}
    <link rel="stylesheet" href="{{ site.bsk_cdn_base_production }}/{{ site.bsk_version_production }}/css/bas-style-kit.min.css" integrity="{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}" crossorigin="anonymous">{% endif %}

    <!-- Optionally - any additional CSS for your website or application -->
  </head>
  <body>
    <h1>Welcome to the starter template for the BAS Style Kit!</h1>

    <!-- Optionally - any required JavaScript for your website or application, such as Google Analytics -->
  </body>
</html>
{% endhighlight %}

This [starter template]({{ '/examples/starter-template' | prepend: site.baseurl }}){: .alert-link } is also available
as a standalone example.
{: .alert .alert-info }
