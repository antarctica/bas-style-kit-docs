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

<mark>The BAS Style Kit is ... [TODO - Write paragraph]</mark>

The Style Kit is based on [Bootstrap](https://www.getbootstrap.com), the worlds most popular CSS framework.
The Style Kit uses a customised version of Bootstrap to follow our design choices (such as not using rounded corners).

As well as Bootstrap, the BAS Style Kit takes influences from the
[Government Digital Service (GDS)](https://gds.blog.gov.uk/about/), other frameworks, organisations and other sources
of best practice - and we are grateful for these being open-sourced.

**Note:** The Style Kit is currently based on version <em>3.6.6</em> of Bootstrap,
using the official [Bootstrap Sass port](https://github.com/twbs/bootstrap-sass).

## Quick start
{: #{{ 'Quick start' | slugify }} }

The recommended, and quickest, way to include the BAS Style Kit in your project is to use the BAS CDN.

Include these two CSS files in the <code>&lt;head&gt;</code> element <strong>before</strong> any other styles
(such as those for your website or application):

{% highlight html %}
<link rel="stylesheet" href="{{ site.bsk_cdn_base }}{{ site.bsk-version }}/css/bootstrap-bsk.min.css" integrity="{{ site.data.bsk_sri['dist/css/bootstrap-bsk.min.css'] }}" crossorigin="anonymous">
{% endhighlight %}

{% highlight html %}
<link rel="stylesheet" href="{{ site.bsk_cdn_base }}{{ site.bsk-version }}/css/bas-style-kit.min.css" integrity="{{ site.data.bsk_sri['dist/css/bas-style-kit.min.css'] }}" crossorigin="anonymous">
{% endhighlight %}

The first file, <em>bootstrap-bsk.min.css</em>, is a custom version of [Bootstrap](https://www.getbootstrap.com),
the underlying framework the Style Kit is built on.

The second file, <em>bas-style-kit.min.css</em>, is the Style Kit itself.

**Note:** The order these files are included is important due to the way in which CSS styles cascade.

**Note:** The <code>integrity</code> attribute, relating to [Sub-Resource Integrity (SRI)](#)
<mark>[TODO - Write and link to section]</mark>, and <code>crossorigin</code> attribute, relating to
[Cross Origin Resource Sharing (CORS)](#) <mark>[TODO - Write and link to section]</mark>, are technically optional.
However both are best practices, and therefore strongly recommended.

**Note:** <em>BSK</em> is a conventional identifier for the BAS Style Kit and is used as a CSS and general
[namespace](https://en.wikipedia.org/wiki/Namespace).

## Starter template
{: #{{ 'Starter template' | slugify }} }

<mark>[TODO - Write section]</mark>
