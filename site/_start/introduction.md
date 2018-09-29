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

The simplest way to use the Style Kit is to include it's CSS file, before any other of your project's styles, in the
<code>&lt;head&gt;</code> element of your website or service.

{% highlight html %}
<link rel="stylesheet" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/css/bas-style-kit.min.css" integrity="
  {%- unless jekyll.environment == 'production' -%}
    {{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}
  {%- else -%}
    {{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}
  {%- endunless -%}" crossorigin="anonymous">
{% endhighlight %}

To use any of the Style Kit's [interactive features]({{ '/interactivity' | prepend: site.baseurl }}), you will also need
to add the Style Kit's JS file and its dependencies, usually just before the end of the <code>&lt;body&gt;</code>
element.

{% highlight html %}
<script src="{{ site.data.variables.cdn_base_libs }}/jquery/3.3.1/jquery-3.3.1.min.js" integrity="{{ site.data.bas_cdn_libs_sri['libs/jquery/3.3.1/jquery-3.3.1.min.js'] }}" crossorigin="anonymous"></script>
<script src="{{ site.data.variables.cdn_base_libs }}/js-cookie/2.1.3/js.cookie-2.1.3.min.js" integrity="{{ site.data.bas_cdn_libs_sri['libs/js-cookie/2.1.3/js.cookie-2.1.3.min.js'] }}" crossorigin="anonymous"></script>
<script src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/js/bas-style-kit.min.js" integrity="
  {%- unless jekyll.environment == 'production' -%}
    {{ site.data.bsk_sri_base_staging['dist/js/bas-style-kit.min.js'] }}
  {%- else -%}
    {{ site.data.bsk_sri_base_production['dist/js/bas-style-kit.min.js'] }}
  {%- endunless -%}" crossorigin="anonymous"></script>
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
  title="Pug"
  heading_level=3
%}

[Pug](https://pugjs.org) is a JavaScript template engine, formally known as 'Jade'. Pug supports a concise/abbreviated
form of HTML that makes it ideal for prototyping. A set of templates (layouts, includes and mixins) are available to
use the Style Kit with Pug.

{% capture alert_content %}
Pug is not a static site generator, and requires other tools to feed in to be compiled and place content in a structure
for viewing. These tools can include task runners such as [Gulp](https://gulpjs.com/){:.bsk-alert-link} or a static
site generator.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

[Pug templates documentation](https://github.com/antarctica/bas-style-kit-pug-templates){: .bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Global prefix"
  heading_level=2
%}

To avoid clashes with other CSS styles and to provide a more uniform and predictable structure, all classes within the
Style Kit use a *Global Prefix* of `bsk-`.

{% capture alert_content %}
I.e. use `.bsk-btn .bsk-btn-default` not `.btn .btn-default`.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
Take care not to use default Bootstrap classes as they won't be styled correctly and may stop working without warning.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}
