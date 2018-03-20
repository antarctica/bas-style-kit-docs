---
title: Drop-Down
menus:
  primary_interactivity:
    weight: 8
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

The Style Kit includes a customised version of the Bootstrap [drop-down](http://getbootstrap.com/javascript/#dropdowns)
plugin, to be compatible with Style Kit specific classes. It's functionality and data API remain exactly the same.

It is used to create drop-down
[menus]({{ '/components/navbar/#drop-down-menus' | prepend: site.baseurl }}) or
[buttons]({{ '/components/drop-down/#button-drop-down' | prepend: site.baseurl }}).

[View Drop-Down Plugin Documentation](http://getbootstrap.com/javascript/#dropdowns){:.bsk-btn .bsk-btn-default }

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
