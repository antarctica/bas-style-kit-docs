---
title: Button
menus:
  primary_interactivity:
    weight: 4
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Bootstrap [button](http://getbootstrap.com/javascript/#buttons) plugin with the Style Kit
[button styles]({{ '/core/button' | prepend: site.baseurl }}) and
[button group component]({{ '/components/button-group' | prepend: site.baseurl }}) to control button states or create
more advanced button toolbars.

[View Button Plugin](http://getbootstrap.com/javascript/#buttons){:.bsk-btn .bsk-btn-default }

## Dependencies
{: #{{ 'dependencies' | slugify }}}

This plugin depends upon [jQuery](https://jquery.com).

{% capture alert_content %}
See [distribution]({{ '/start/distribution/#javaScript-libraries' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
