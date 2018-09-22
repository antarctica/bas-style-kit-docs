---
title: Alert
menus:
  primary_interactivity:
    weight: 3
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

The Style Kit includes a customised version of the Bootstrap [alert](http://getbootstrap.com/javascript/#alerts) plugin
to be compatible with Style Kit specific classes. It's functionality and data API remain exactly the same.

It can be used to create
[dismissible alerts]({{ '/components/alert/#dismissible-alerts' | prepend: site.baseurl }}).

[View Alert Plugin Documentation](http://getbootstrap.com/javascript/#alerts){:.bsk-btn .bsk-btn-default }

## Dependencies
{: #{{ 'dependencies' | slugify }}}

This plugin depends upon [jQuery](https://jquery.com).

{% capture alert_content %}
See [distribution]({{ '/start/distribution/#javascript-dependencies' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
