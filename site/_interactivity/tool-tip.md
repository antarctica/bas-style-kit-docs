---
title: Tool-Tip
menus:
  primary_interactivity:
    weight: 11
sections:
  -
    title: Overview
  -
    title: Usage
  -
    title: Examples
body_js_files:
  -
    href: '/js/tooltips.js'
    type: 'local'
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
%}

The Style Kit includes a customised version of the Bootstrap
[tool-tip](https://getbootstrap.com/docs/3.3/javascript/#tooltips) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

{% capture alert_content %}
Tool-tip's are not enabled globally. You will need to add the code from the
[activation]({{ '/interactivity/tool-tip/#activation' | prepend: site.baseurl }}){:.bsk-alert-link} section to use them.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

[View Tool-Tip Plugin](https://getbootstrap.com/docs/3.3/javascript/#tooltips){:.bsk-btn .bsk-btn-default }

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
  title="Activation"
  heading_level=2
%}

To enable any element with a `data-toggle="tooltip"` attribute as a tool-tip, include this JavaScript code after the
Style Kit's JavaScript file.

{% highlight js %}
jQuery(document).ready(function() {
  jQuery('[data-toggle="tooltip"]').tooltip()
});
{% endhighlight %}

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

{% capture alert_content %}
In most cases tool-tips should be avoided as they are hard to make accessible, do not work well on mobiles or
small devices and are not more discoverable than regular title attributes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Wherever possible `title` attributes should be used as they are part of the HTML standard.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

{% example html %}
<button class="bsk-btn bsk-btn-default" type="button" data-toggle="tooltip" data-placement="bottom" title="tooltip on the bottom" style="margin-bottom:20px;">Tooltip (bottom)</button>
{% endexample %}

{% capture alert_content %}
Extra space is added below the button to fit into the example box.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

An alternative using the `title` attribute alone.

{% example html %}
<button class="bsk-btn bsk-btn-default" type="button" title="button with">Button with title</button>
{% endexample %}
