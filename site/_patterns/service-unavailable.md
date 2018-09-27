---
# layout: bas-style-kit/bsk--standard
title: Service unavailable page
menus:
  primary_patterns:
    weight: 3
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

Use this page pattern where a service is planned to be unavailable. This pattern should be shown for
*503 Service Unvailable* errors.

{% capture alert_content %}
Page patterns represent complete pages that should be used with few changes to promote consistency.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Use the
[problem with this service]({{ '/pattern/problem-with-this-service' | prepend: site.baseurl }}){:.bsk-alert-link}
pattern where a service is not planned to be unavailable.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
This pattern is based on the
[service unavailable](https://design-system.service.gov.uk/patterns/service-unavailable-pages/){:.bsk-alert-link} pattern
from the Government Digital Service (GDS) Design System.
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

Use this pattern when a service:

* will be temporarily unavailable because of a planned upgrade or another maintenance task
* will be temporarily unavailable because of scheduled changes to a service or provider this service relies upon
* is only used for part of the year (for example a annual or seasonal task)
* has been replaced with another service
* has been closed without a replacement (because a task is no longer needed)

When using this pattern, do not:

* blame the user or use red (danger) text
* use technical jargon like '503' or 'resource unavailable'
* use vague terms like 'we are making improvements'
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

Use the `bsk-pattern-service-unavailable` class to create a page element containing:

* a page title of 'Service unavailable - [website or application]'
* a [page header]({{ '/components/page-header' | prepend: site.baseurl }}) with 'Sorry, the service is unavailable' as a
  `h1` header
* information on when the service will be available again
* information on why the service is unavailable
* contact information (see below)
* a link to alternative service (if applicable)

Ensure you can update a service unavailable page as new information becomes available. If information is not known, or
cannot be relied upon, do not include it.

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
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, the service is unavailable</h1>
  <p class="bsk-lead">You will be able to use the service later</p>
</main>
{% endexample %}

[See a full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0002--service-unavailable-basic.html){:.bsk-btn.bsk-btn-default}
