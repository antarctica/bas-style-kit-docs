---
sort_index: 1
title: Introduction
menus:
  primary_start:
    weight: 2
sections:
  -
    title: About
  -
    title: Quick start
  -
    title: Themes and Templates
  -
    title: Global prefix
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The BAS Style Kit is based on [Bootstrap](https://www.getbootstrap.com), the worlds most popular CSS framework.
The Style Kit uses a customised version of Bootstrap to follow our design choices (such as not using rounded corners).

The Style Kit is based on version *3.3.7* of the official [Bootstrap Sass port](https://github.com/twbs/bootstrap-sass).

As well as Bootstrap, the BAS Style Kit takes influences from:

* the [Government Digital Service (GDS)](https://gds.blog.gov.uk/about/)
* other frameworks, organisations and sources of best practice

{% include topic-section-metadata.html
  title="Quick start"
  heading_level=2
%}

The recommended, and quickest, way to include the BAS Style Kit in your website or service is to use the BAS CDN.

Include this CSS file before any other of your project's styles, in the <code>&lt;head&gt;</code> element:

{% highlight html %}
<link rel="stylesheet" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/css/bas-style-kit.min.css" integrity="
  {%- unless jekyll.environment == 'production' -%}
    {{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}
  {%- else -%}
    {{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}
  {%- endunless -%}" crossorigin="anonymous">
{% endhighlight %}

{% capture alert_content %}
See the [distribution]({{ '/start/distribution' | prepend: site.baseurl }}){: .bsk-alert-link } section for other ways
to include the Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Themes and Templates"
  heading_level=2
%}

The Style Kit provides integrations with a limited number of applications and template languages. These integrations
will automatically include the Style Kit and its dependencies into your website or service, and may provide other
features to reduce having to write extra code.

{% capture alert_content %}
Although these integrations are officially supported, they may be out of step with the core BAS Style Kit project. Take
care to check which Style Kit version they support, and any caveats or known issues, when reading this documentation.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Jekyll"
  heading_level=3
%}

[Jekyll](https://jekyllrb.com) is an static site generator for creating websites and blogs, such as this documentation
site. A BAS Style Kit Jekyll theme is available to use the Style Kit within a Jekyll site.

[Jekyll theme documentation](https://github.com/antarctica/bas-style-kit-jekyll-theme){: .bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Global prefix"
  heading_level=2
%}

To avoid clashes with other CSS styles and to provide a more uniform and predictable structure, all classes within the
Style Kit use a *Global Prefix* of `bsk-`.

{% capture alert_content %}
I.e. use `.bsk-btn bsk-btn-default` not `.btn .btn-default`.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

There are some exceptions to this:

* As an external library, [Font Awesome]({{ '/core/icons/#available-icons' | prepend: site.baseurl }}) classes are not
prefixed (i.e. use `fa fa-star` not `.bsk-fa .bsk-fa-star`)

{% capture alert_content %}
Take care not to use default Bootstrap classes as they won't be styled correctly and may stop working without warning.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}
