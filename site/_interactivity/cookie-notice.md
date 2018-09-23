---
title: Cookie Notice
menus:
  primary_interactivity:
    weight: 5
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
  initial_version="0.3.0"
%}

The Style Kit includes a plugin for hiding a cookie notice for 30 days.

This plugin builds upon functionality provided by the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }})
plugin.

{% capture alert_content %}
Using this plugin to target multiple elements (i.e. multiple cookie notices) is not supported.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
%}

This plugin depends upon:

* [jQuery](https://jquery.com)
* [js-cookie](https://github.com/js-cookie/js-cookie)

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

Add the `data-bsk-role="cookie-notice"` data attribute to any [alert]({{ '/components/alert' | prepend: site.baseurl }})
using the [alert plugin]({{ '/interactivity/alert' | prepend: site.baseurl }}).

{% capture alert_content %}
It is recommended to use the
[cookie notice alert variant]({{ '/components/alert/#cookie-notice-alert' | prepend: site.baseurl }}){: .bsk-alert-link }
with this plugin.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

When this alert is dismissed, a cookie is set on the client to expire after 30 days. On each page load, a check is made
for this cookie, if found the `data-bsk-role="cookie-notice"` is removed from the DOM, hiding the alert.

The cookie is set at the sub-domain level (i.e. `foo.example.com` is considered different to `bar.example.com`).
