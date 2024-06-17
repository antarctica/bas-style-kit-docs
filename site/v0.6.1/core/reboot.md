---
item_type: Core
title: Reboot
menus:
  primary_core:
    weight: 13
sections:
  -
    title: Overview
  -
    title: Normalise.css
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The Style Kit includes a number of global settings, styles and technologies designed to provide a consistent foundation.

This minimises differences in experience between different browsers and operating systems, ensuring features such as
the layout grid work as expected.

Other technologies which are used in a global fashion, and which are described elsewhere, include:

* the [HTML5 document type]({{ '/start/standards-accessibility/#html5' | prepend: site.baseurl }})
* the [responsive meta tag]({{ '/start/standards-accessibility/#responsiveness-and-mobile-first' | prepend: site.baseurl }})

Other styles which are used in a global fashion, and which are described elsewhere, include:

* the default [font size, family and line spacing]({{ '/core/typography/#typographic base' | prepend: site.baseurl }})

{% include topic-section-metadata.html
  title="Normalise.css"
  heading_level=2
%}

[Normalize.css](http://necolas.github.io/normalize.css/) ensures browsers render all elements more consistently and in
line with modern standards.
