---
item_type: Start
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

The BAS Style Kit is based on [Bootstrap](https://www.getbootstrap.com), the world's most popular CSS framework.
The Style Kit uses a customised version of Bootstrap to follow our design choices (such as not using rounded corners).

The Style Kit is based on version *3.3.7* of the official [Bootstrap Sass port](https://github.com/twbs/bootstrap-sass).

As well as Bootstrap, the BAS Style Kit takes influences from:

* the [Government Design System](https://design-system.service.gov.uk)
* other frameworks, organisations and sources of best practice

{% include topic-section-metadata.html
  title="Quick start"
  heading_level=2
%}

The simplest way to use the Style Kit is to include it's CSS file, before any other of your project's styles, in the
<code>&lt;head&gt;</code> element of your website or service.

{% highlight html %}
<link rel="stylesheet" href="{{ site.data.variables.cdn_base }}/0.6.1/css/bas-style-kit.min.css" integrity="sha256-k05vjok9IGTMBJ8KYnQYX9sEc7A9eGWsTM8tQ2XqE8A=" crossorigin="anonymous">
{% endhighlight %}

To use any of the Style Kit's [interactive features]({{ '/interactivity' | prepend: site.baseurl }}), you will also need
to add the Style Kit's JS file and its dependencies, usually just before the end of the <code>&lt;body&gt;</code>
element.

{% highlight html %}
<script src="{{ site.data.variables.cdn_base_libs }}/jquery/3.5.1/js/jquery-3.6.0.min.js" integrity="{{ site.data.bas_cdn_libs_sri['libs/jquery/3.6.0/js/jquery-3.6.0.min.js'] }}" crossorigin="anonymous"></script>
<script src="{{ site.data.variables.cdn_base_libs }}/js-cookie/2.2.1/js/js.cookie-2.2.1.min.js" integrity="{{ site.data.bas_cdn_libs_sri['libs/js-cookie/2.2.1/js/js.cookie-2.2.1.min.js'] }}" crossorigin="anonymous"></script>
<script src="{{ site.data.variables.cdn_base }}/0.6.1/js/bas-style-kit.min.js" integrity="sha256-cW+jowQERFqjJwdZ1VSZgG7dXQly19ykM5kVIONXmFg=" crossorigin="anonymous"></script>
{% endhighlight %}

{% capture alert_content %}
See the [distribution]({{ '/v0.6.1/start/distribution.html' | prepend: site.baseurl }}){: .bsk-alert-link } section for other ways
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
Pug is not a static site generator, and requires other tools to structure content for viewing. These tools can include
task runners such as [Gulp](https://gulpjs.com/){:.bsk-alert-link} or a static site generator.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

[Pug templates documentation](https://github.com/antarctica/bas-style-kit-pug-templates){: .bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Jinja2"
  heading_level=3
%}

[Jinja2](https://jinja.palletsprojects.com) is a Python template engine. A set of templates (layouts, includes and
macros) are available to use the Style Kit with Jinja.

{% capture alert_content %}
Jinja2 is not a static site generator, and requires other tools to structure content for viewing, such as
[Flask](https://flask.palletsprojects.com) or a static site generator.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

[Jinja templates documentation](https://github.com/antarctica/bas-style-kit-jinja-templates){: .bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Oracle Apex"
  heading_level=3
%}

[Oracle Application Express (Apex)](https://apex.oracle.com/en/) an application development platform built on top of
the Oracle Database. Apex can be used to make information available in databases available without needing to develop
a bespoke application. An Apex theme is available which applies some of the Style Kit's styles and components on top of
the [Apex Universal Theme](https://apex.oracle.com/pls/apex/f?p=42:100::::::).

{% capture alert_content %}
This theme is not a complete implementation of the Style Kit, but rather uses selected elements to make applications
look consistent with it. The Style Kit's grid system for example cannot be used as it doesn't work with Apex.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

[Apex theme documentation](https://github.com/antarctica/bas-style-kit-apex-theme){: .bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Global prefix"
  heading_level=2
%}

To avoid clashes with other CSS styles and to provide a more uniform and predictable structure, all classes within the
Style Kit use a `bsk-` prefix.

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
