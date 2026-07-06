---
item_type: Pattern
title: Problem with this service page
menus:
  primary_patterns:
    weight: 5
sections:
  -
    title: Overview
  -
    title: Uses
  -
    title: Basic
  -
    title: Alternative
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this page pattern where a service is unavailable unexpectedly, such as an error or fault. This pattern
should be shown for *500 Internal Server Error* errors and some *503 Not Found* errors, where actions have not be taken
deliberately.

Page patterns represent complete pages that should be used with few changes to promote consistency. If you are using
one of the Style Kit's
[themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link}, this
page pattern is available as a special layout or view.

{% capture alert_content %}
Use the
[service unavailable]({{ '/pattern/service-unavailable' | prepend: site.baseurl }}){:.bsk-alert-link}
pattern where a service is planned to be unavailable, i.e. where it is under maintenance or turned off.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
This pattern is based on the
[there is a problem with the service](https://design-system.service.gov.uk/patterns/problem-with-the-service-pages/){:.bsk-alert-link} pattern from the
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

Use this pattern when a service:

* suffers an unexpected error and cannot continue
* cannot access a service it is dependent upon to complete a task
* cannot be accessed unexpectedly

When using this pattern, do not:

* blame the user or use red (danger) text
* use technical jargon like '500' or 'resource unavailable'
* use vague terms like 'we are making improvements'
* use informal or humourous words like 'oops'
* include information that is not known, or cannot be relied upon

Only use this pattern for a short time. Suspend the service using the
[service unavailable]({{ '/pattern/service-unavailable' | prepend: site.baseurl }}){:.bsk-alert-link} pattern if it
will take some time to fix any problems.

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

Use the `.bsk-pattern-problem-with-service` class to create a page element containing:

* a page title of 'There is a problem with this service - [website or application]'
* a [page header]({{ '/components/page-header' | prepend: site.baseurl }}) with 'Sorry, there is a problem with this
service' as a `h1` header
* a [lead paragraph]({{ '/core/type/#lead-paragraph' | prepend: site.baseurl }}) with 'Try again later.'
* an email address for, or link to information on, a team that can provide information on:
  * when the service will be available again (i.e. the technical owner)
  * how a task can be completed, or information accessed, whilst the service is unavailable (i.e. the business owner)
  * if there isn't a contact for a service use the [BAS IT Service Desk](mailto:servicedesk.bas.ac.uk).

{% capture alert_content %}
Try not to use specific people as contacts, as they may be on holiday or change role.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
Indicate whether users should contact someone to report errors, or if this happens automatically.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<main class="bsk-pattern-problem-with-service">
  <h1 class="bsk-page-header">Sorry, there is a problem with this service</h1>
  <p class="bsk-lead">Try again later.</p>
  <p>Please <a href="mailto:servicedesk.bas.ac.uk">report this problem</a>, including what you were trying to do.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0011--problem-with-service-alternative.html){:.bsk-btn.bsk-btn-default}

{% example html %}
<main class="bsk-pattern-problem-with-service">
  <h1 class="bsk-page-header">Sorry, there is a problem with this service</h1>
  <p class="bsk-lead">Try again later.</p>
  <p>This problem has been automatically reported, but you can <a href="mailto:servicedesk.bas.ac.uk">contact us</a>
  to explain what you were trying to do or if you would like a reply.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}

{% example html %}
<main class="bsk-pattern-problem-with-service">
  <h1 class="bsk-page-header">Sorry, there is a problem with this service</h1>
  <p class="bsk-lead">Try again later.</p>
  <p>Please <a href="mailto:servicedesk.bas.ac.uk">report this problem</a>, including what you were trying to do.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
  <p>Contact the <a href="https://www.bas.ac.uk/team/operational-teams/operational-delivery/field-planning-science-support/">Polar Operations Support Team</a> if you need to check your travel arrangements.</p>
</main>
{% endexample %}

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
<main class="bsk-pattern-problem-with-service">
  <h1 class="bsk-page-header">Sorry, there is a problem with this service</h1>
  <p class="bsk-lead">Try again later.</p>
  <p>Until then, you can use <a href="#">another service</a> to check some information.</p>
  <p>Please <a href="mailto:servicedesk.bas.ac.uk">report this problem</a>, including what you were trying to do.</p>
  <p>Contact the <a href="mailto:servicedesk.bas.ac.uk">BAS IT Service Desk</a> for more information.</p>
</main>
{% endexample %}
