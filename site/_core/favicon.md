---
title: Favicon
menus:
  primary_core:
    weight: 5
sections:
  -
    title: Overview
  -
    title: Supported browsers
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The Style Kit includes a default Favicon based on the [BAS logo]({{ '/core/logos/#bas-logo' | prepend: site.baseurl }}).

{% include topic-section-metadata.html
  title="Supported browsers"
  heading_level=2
%}

The Style Kit favicon is designed to work with all browsers and devices
[supported]({{ '/start/standards-accessibility/#browser-support' | prepend: site.baseurl }}) by the Style Kit. This
includes icons in browsers and when pinned to start/home screens.

{% include topic-section-metadata.html
  title="Usage"
  heading_level=2
%}

The Style Kit hosts hosts a default Favicon through the BAS CDN. Unfortunately there is no universal way to do specify
a favicon that works across all browsers and devices, which means multiple references are needed.

If integrating the Style Kit directly into a website or application, add these tags to the HTML `<head>` element.

{% capture alert_content %}
If you are using one of the Style Kit's [themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link} this is already done for you.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% highlight html %}
<!-- Add these tags to the HTML 'head' element -->
<link rel="apple-touch-icon" sizes="180x180" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/favicon-16x16.png" />
<link rel='manifest' href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/site.webmanifest" />
<link rel="mask-icon" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/safari-pinned-tab.svg" color="#222222" />
<link rel="shortcut icon" href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/favicon.ico" />
<meta name="msapplication-TileColor" content="#222222">
<meta name="msapplication-config" content="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/favicon/browserconfig.xml">
<meta name="theme-color" content="#222222">
{% endhighlight %}
