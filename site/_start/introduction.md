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

## Starter template
{: #{{ 'Starter template' | slugify }} }

<mark>[TODO - Write section]</mark>
