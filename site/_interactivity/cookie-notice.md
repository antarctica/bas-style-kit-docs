---
title: Cookie Notice
sections:
  -
    title: Overview
  -
    title: Usage
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the Style Kit cookie notice plugin to hide a site cookie notice for 30 days. This plugin builds upon functionality
provided by the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }}) plugin.

{% alert info style=highlight %}
It is recommended to use the
[cookie notice alert variant]({{ '/components/alert/#cookie-notice-alert' | prepend: site.baseurl }}) with this plugin.
{% endalert %}

## Usage
{: #{{ 'Usage' | slugify }}}

Add the `data-bsk-role="cookie-notice"` data attribute to any alert using the
[alert]({{ '/interactivity/alert' | prepend: site.baseurl }}) plugin.

When this alert is dismissed a cookie is set on the client set to expire after 30 days. A check is made for this cookie
on each page load and if found the element with the data attribute is removed from the DOM, effectively hiding the
alert.

Specifically, when the `close.bs.alert` event is triggered on an element with the `[data-bsk-role="cookie-notice"]`
data attribute a cookie named `bsk_cookie_notice_seen` is set on the client to expire 30 days from the current time.
The cookie is set at the sub-domain level (i.e. `foo.example.com` is considered different to `bar.example.com`).

{% alert info %}
Using this plugin to target multiple elements (i.e. multiple cookie notices) is not supported.
{% endalert %}

## Dependencies
{: #{{ 'dependencies' | slugify }}}

This plugin depends upon [jQuery](https://jquery.com) and [js-cookie](https://github.com/js-cookie/js-cookie) library
and the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }}) plugin.

{% alert info style=highlight %}
See [distribution]({{ '/start/distribution/#javaScript-libraries' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies
{% endalert %}
