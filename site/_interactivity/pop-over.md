---
title: Pop-Over
menus:
  primary_interactivity:
    weight: 10
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Bootstrap [pop-over](http://getbootstrap.com/javascript/#popovers) plugin to create small overlays of content,
for providing secondary information.

[View Pop-Over Plugin](http://getbootstrap.com/javascript/#popovers){:.bsk-btn .bsk-btn-default }

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
