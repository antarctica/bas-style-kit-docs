---
# layout: bas-style-kit/bsk--standard
title: Page not found page
menus:
  primary_patterns:
    weight: 2
sections:
  -
    title: Overview
  -
    title: Uses
  -
    title: Basic
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this page pattern where a page can't be found. This pattern should be shown for *404 Not Found* errors.

{% capture alert_content %}
Page patterns represent complete pages that should be used with few changes to promote consistency.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
This pattern is based on the
[page not found](https://design-system.service.gov.uk/patterns/page-not-found-pages/){:.bsk-alert-link} pattern from the
Government Digital Service (GDS) Design System.
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

Use this pattern when the user:

* selects a link or button that takes them to a page that does not exist
* types or copies a web address for a page that does not exist
* types or copies a web address incorrectly

When using this pattern, do not:

* blame the user or use red (danger) text
* use technical jargon like '404' or 'resource not found', use 'page'
* use informal or humourous words like 'oops'

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic"
  heading_level=3
  phase="alpha"
  initial_version="0.5.0"
  included="yes"
%}

Use the `bsk-pattern-page-not-found` class to create a page element containing:

* a page title of 'Page not found - [website or application]'
* a [page header]({{ '/components/page-header' | prepend: site.baseurl }}) with 'Page not found' as a `h1` header
* contact information (see below)

{% capture alert_content %}
If you are using one of the Style Kit's [themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link} this page pattern is available as a special layout.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

Wherever possible use specific contact information for each website or application, such as a team email address. If
there is no contact for a service, use the [contact page](https://www.bas.ac.uk/about/contact-bas/) on the BAS public
website.

{% capture alert_content %}
Try not to mention specific people, as they may be on holiday or change role.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% example html %}
<main class="bsk-pattern-page-not-found">
  <h1 class="bsk-page-header">Page not found</h1>
  <p>If you typed the web address, check it is correct.</p>
  <p>If you pasted the web address, check you copied the entire address.</p>
  <p>If the web address is correct or you selected a link or button, <a href="#">contact us</a> to let us know.</p>
</main>
{% endexample %}

[See a full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0001--page-not-found.html){:.bsk-btn.bsk-btn-default}
