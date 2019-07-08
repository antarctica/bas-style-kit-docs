---
title: Transition
menus:
  primary_interactivity:
    weight: 13
sections:
  -
    title: Overview
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
%}

The Style Kit includes a customised version of the Bootstrap
[transitions](https://getbootstrap.com/docs/3.3/javascript/#transitions) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

[View Transitions Plugin](https://getbootstrap.com/docs/3.3/javascript/#transitions){:.bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
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

{% capture alert_content %}
This plugin is used internally by other plugins.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
