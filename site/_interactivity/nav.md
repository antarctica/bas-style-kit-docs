---
item_type: Interactive
title: Navigation
menus:
  primary_interactivity:
    weight: 9
sections:
  -
    title: Overview
  -
    title: Usage
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
%}

The Style Kit includes a customised version of the Bootstrap
[tabs](https://getbootstrap.com/docs/3.3/javascript/#tabs) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

[View Tabs Plugin](https://getbootstrap.com/docs/3.3/javascript/#tabs){:.bsk-btn .bsk-btn-default }

{% capture alert_content %}
For consistency with the [navigation component]({{ '/components/nav' | prepend: site.baseurl }}){:.bsk-alert-link},
this plugin is known as *nav* rather than *tabs* but is otherwise exactly the same.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

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

Use with the [navigation component]({{ '/components/nav' | prepend: site.baseurl }}) to create interactive
[pills]({{ '/components/nav/#pill-navigation' | prepend: site.baseurl }}) and
[tabs]({{ '/components/nav/#tab-navigation' | prepend: site.baseurl }}).

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

See the [navigation content]({{ '/components/nav/#navigation-content' | prepend: site.baseurl }}) component for examples.
