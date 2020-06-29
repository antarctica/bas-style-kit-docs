---
item_type: Interactive
title: Alert
menus:
  primary_interactivity:
    weight: 2
sections:
  -
    title: Overview
  -
    title: Examples
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
%}

The Style Kit includes a customised version of the Bootstrap
[alert](https://getbootstrap.com/docs/3.3/javascript/#alerts) plugin to be compatible with Style Kit specific classes.
It's functionality and data API remain exactly the same.

[View Alert Plugin](https://getbootstrap.com/docs/3.3/javascript/#alerts){:.bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
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

Use with the Style Kit [alert component]({{ '/components/alert' | prepend: site.baseurl }}) to create
[dismissible alerts]({{ '/components/alert/#dismissible-alerts' | prepend: site.baseurl }}).

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-success bsk-alert-dismissible" role="alert">
  <button type="button" class="bsk-close" data-dismiss="alert" aria-label="Close">&times;</button>
  A dismissible alert
</div>
{% endexample %}
