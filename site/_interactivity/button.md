---
title: Button
menus:
  primary_interactivity:
    weight: 3
sections:
  -
    title: Overview
  -
    title: Examples
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="alpha"
  initial_version="0.5.0"
%}

The Style Kit includes a customised version of the Bootstrap
[button](https://getbootstrap.com/docs/3.3/javascript/#buttons) plugin to be compatible with Style Kit specific classes.
It's functionality and data API remain exactly the same.

[View Button Plugin](https://getbootstrap.com/docs/3.3/javascript/#buttons){:.bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="alpha"
  initial_version="0.5.0"
%}

This plugin depends upon:

* [jQuery](https://jquery.com).

{% capture alert_content %}
See [distribution]({{ '/start/distribution/#javascript-dependencies' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Use with the Style Kit [button styles]({{ '/core/button' | prepend: site.baseurl }}) and
[button group component]({{ '/components/button-group' | prepend: site.baseurl }}) to control button states or create
more advanced button toolbars.

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

{% example html %}
<button type="button" class="bsk-btn bsk-btn-default" data-toggle="button" aria-pressed="false" autocomplete="off">
  Toggle Action
</button>
{% endexample %}
