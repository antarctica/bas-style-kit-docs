---
title: Tool Tip
menus:
  primary_interactivity:
    weight: 13
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Bootstrap [tool-tip](http://getbootstrap.com/javascript/#tooltips) plugin to create CSS only tool-tips.

[View Tool-Tip Plugin](http://getbootstrap.com/javascript/#tooltips){:.bsk-btn .bsk-btn-default }

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
