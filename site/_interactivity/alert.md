---
title: Alert
sections:
  -
    title: Overview
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }}}

The Style Kit includes a customised version of the Bootstrap [alert](http://getbootstrap.com/javascript/#alerts) plugin
to be compatible with Style Kit specific classes. It's functionality and data API remain exactly the same.

It can be used to create
[dismissible alerts]({{ '/components/alert/#dismissible-alerts' | prepend: site.baseurl }}).

[View Alert Plugin Documentation](http://getbootstrap.com/javascript/#alerts){:.bsk-btn .bsk-btn-default }

{% alert info %}
All interactive plugins require [jQuery]({{ '/start/distribution#javascript-libraries' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endalert %}
