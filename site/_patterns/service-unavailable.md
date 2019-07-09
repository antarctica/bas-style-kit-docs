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
  -
    title: Contacts
  -
    title: Availability
  -
    title: Alternative
  -
    title: Partly closed
  -
    title: Replaced
  -
    title: Closed
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this page pattern where a service is planned to be unavailable. This pattern should be shown for some
*503 Service Unvailable* errors, where action has been taken deliberately.

Page patterns represent complete pages that should be used with few changes to promote consistency. If you are using
one of the Style Kit's
[themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link}, this
page pattern is available as a special layout or view.

{% capture alert_content %}
Use the
[problem with this service]({{ '/pattern/problem-with-this-service' | prepend: site.baseurl }}){:.bsk-alert-link}
pattern where a service is unavailable unexpectedly, i.e. where a service crashes and there isn't a fail-over.
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
* include information that is not known, or cannot be relied upon

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

Use the `.bsk-pattern-service-unavailable` class to create a page element containing:

* a page title of 'Service unavailable - [website or application]'
* a [page header]({{ '/components/page-header' | prepend: site.baseurl }}) with 'Sorry, [website or application] is unavailable' as a
  `h1` header
* a [lead paragraph]({{ '/core/type/#lead-paragraph' | prepend: site.baseurl }}) with 'You will be able to use the
service later.'

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">You will be able to use the service later.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0002--service-unavailable-basic.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Contacts"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

Where known, include an email address for, or link to information on, a team that can provide information on:

* when the service will be available again (i.e. the technical owner)
* how a task can be completed, or information accessed, whilst the service is unavailable (i.e. the business owner)

If there isn't a contact for a service use the [BAS IT Service Desk](mailto:servicedesk.bas.ac.uk).

{% capture alert_content %}
Try not to use specific people as contacts, as they may be on holiday or change role.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">You will be able to use the service later.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>South</em> is unavailable</h1>
  <p class="bsk-lead">You will be able to use the service later.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
  <p>Contact the <a href="https://www.bas.ac.uk/team/operational-teams/operational-delivery/field-planning-science-support/">Polar Operations Support Team</a> if you need to check your travel arrangements.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0003--service-unavailable-contact.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Availability"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

Where known, change the lead paragraph to explain when the service can be used again.

{% capture alert_content %}
Where a time is known, make sure to include a time zone.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">You will be able to use this service on the 24th August 2012 from 14:00 (UTC).</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0004--service-unavailable-availability.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Alternative"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

Include a link to any other services users can use for some tasks, or to access some information, whilst the main
service is unavailable.

{% capture alert_content %}
Alternatives may include off-line information such as printed information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">You will be able to use the service later.</p>
  <p>Until then, you can use <a href="#">another service</a> to check some information.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">You will be able to use the service later.</p>
  <p>Until then, you can check local noticeboards for important information.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0005--service-unavailable-alternative.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Partly closed"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

If a service can only be used for part of the year, or until a specific event, change the lead paragraph to explain
when the service can be used again.

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">This service can only be used from April to August.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0006--service-unavailable-partly-closed.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Replaced"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

Change the lead paragraph to 'This service has been replaced and can longer be used.' and include a link to the service,
or services, that replace the service.

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">This service has been replaced and can longer be used.</p>
  <p>Use <a href="#">another service</a> to complete this task.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0008--service-unavailable-replaced.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Closed"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="yes"
%}

Change the lead paragraph to 'This service has been closed and can no longer be used.' and explain who users should
contact if they have questions.

{% example html %}
<main class="bsk-pattern-service-unavailable">
  <h1 class="bsk-page-header">Sorry, <em>[website or application]</em> is unavailable</h1>
  <p class="bsk-lead">This service has been closed and can no longer be used.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0007--service-unavailable-closed.html){:.bsk-btn.bsk-btn-default}
