---
title: Affix
menus:
  primary_interactivity:
    weight: 2
sections:
  -
    title: Overview
---

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Bootstrap [affix](http://getbootstrap.com/javascript/#affix) plugin to position navigation or sidebar content
inline with some main content so it is always visible.

[View Affix Plugin](http://getbootstrap.com/javascript/#affix){:.bsk-btn .bsk-btn-default }

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
