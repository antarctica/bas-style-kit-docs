---
title: Version
menus:
  primary_interactivity:
    weight: 3
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
  initial_version="0.5.0"
%}

The Style Kit includes a custom plugin to report the version of the Style Kit used.

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

The version of the Style Kit is exposed as a variable `$.fn.bsk_version.Constructor.VERSION`.

{% highlight js %}
console.log($.fn.bsk_version.Constructor.VERSION);
{% endhighlight %}
