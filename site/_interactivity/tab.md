---
title: Tab
menus:
  primary_interactivity:
    weight: 12
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Bootstrap [tabs](http://getbootstrap.com/javascript/#tabs) plugin with the Style Kit
[navigation components]({{ '/components/nav' | prepend: site.baseurl }}) to create interactive
[pills]({{ '/components/nav/#pill-navigation' | prepend: site.baseurl }}) and
[tabs]({{ '/components/nav/#tab-navigation' | prepend: site.baseurl }}).

[View Tabs Plugin](http://getbootstrap.com/javascript/#tabs){:.bsk-btn .bsk-btn-default }

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
