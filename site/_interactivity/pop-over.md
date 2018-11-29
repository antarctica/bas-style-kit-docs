---
title: Pop-Over
menus:
  primary_interactivity:
    weight: 10
sections:
  -
    title: Overview
  -
    title: Usage
  -
    title: Examples
body_js_files:
  -
    href: '/js/popovers.js'
    type: 'local'
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
%}

The Style Kit includes a customised version of the Bootstrap
[pop-over](https://getbootstrap.com/docs/3.3/javascript/#popover) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

This plugin builds upon functionality provided by the [tool-tip]({{ '/interactivity/tool-tip' | prepend: site.baseurl }})
plugin.

{% capture alert_content %}
Pop-over's are not enabled globally. You will need to add the code from the
[activation]({{ '/interactivity/pop-over/#activation' | prepend: site.baseurl }}){:.bsk-alert-link} section to use them.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

[View Pop-Over Plugin](https://getbootstrap.com/docs/3.3/javascript/#popover){:.bsk-btn .bsk-btn-default }

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

To enable any element with a `data-toggle="popover"` attribute as a pop-over, include this JavaScript code after the
Style Kit's JavaScript file.

{% highlight js %}
jQuery(document).ready(function() {
  jQuery('[data-toggle="popover"]').popover()
});
{% endhighlight %}

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Pop-overs can be useful for displaying summary information inside other elements, such as basic details about a feature
on a map.

{% capture alert_content %}
In most cases pop-overs should be avoided as they are hard to make accessible and do not work well on mobiles or
small devices, especially where there is lots of content.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Consider if information can be shown elsewhere in the page, where there is more space and it can be interacted with
normally.
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
<button class="bsk-btn bsk-btn-default" type="button" data-toggle="popover" data-placement="top" data-content="Popover content" title="popover on the top" style="margin-top:80px;margin-left:20px;">Popover (top)</button>
{% endexample %}

{% capture alert_content %}
Extra space is added above the button to fit into the example box.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
