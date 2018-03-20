---
title: Collapse
menus:
  primary_interactivity:
    weight: 6
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Boostrap [collapse](http://getbootstrap.com/javascript/#collapse) plugin to create collapseble elements, such
as [navbars]({{ '/components/navbar' | prepend: site.baseurl }})

[View Collapse Plugin](http://getbootstrap.com/javascript/#collapse){:.bsk-btn .bsk-btn-default }

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
