---
title: Reboot
sections:
  -
    title: Overview
  -
    title: Normalise.css
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Basic' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The Style Kit includes a number of global settings, styles and technologies designed to provide a consistent foundation.
{: .lead }

This minimises differences in experience between different browsers and operating systems, ensuring features such as
the layout grid work as expected.

Other technologies which are used in a global fashion, and which are described elsewhere, include:

* the [HTML5 document type]({{ '/start/standards-accessibility/#html5' | prepend: site.baseurl }})
* the [responsive meta tag]({{ '/start/standards-accessibility/#responsiveness-and-mobile-first' | prepend: site.baseurl }})

Other pages in this section detail other settings used, such as the default font and font-size.
{: .alert .alert-info }

## Normalise.css
{: #{{ 'Normalise.css' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

[Normalize.css](http://necolas.github.io/normalize.css/) makes browsers render all elements more consistently and in
line with modern standards. It precisely targets only the styles that need normalising.
