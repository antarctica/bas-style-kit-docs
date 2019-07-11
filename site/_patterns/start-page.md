---
# layout: bas-style-kit/bsk--standard
title: Start page
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
    title: Before you start
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this pattern to introduce transactional processes or tasks.

Page patterns represent complete pages that should be used with few changes to promote consistency. If you are using
one of the Style Kit's
[themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link}, this
page pattern is available as a special layout or view.

{% capture alert_content %}
This pattern is based on the
[start](https://design-system.service.gov.uk/patterns/start-pages/){:.bsk-alert-link} pattern from the Government
Digital Service (GDS) Design System.
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

Use this pattern to introduce a service to users where it allows them to complete a task or process.

When using this pattern, do:

* include the name of the service
* include a list of tasks the service can be used for, so that the user can check they are using the right service
* include information on who can use a service and why, if it is restricted
* include of list of things a user must have done or information they need access to, such as their employee number
* include links to other relevant information about a service or the tasks it relates to

When using this pattern, do not:

* change the style and text of the *Start Now* button

Where known, include an email address for, or link to information on, a team that can provide information on the
service. If there isn't a contact for a service, use the [BAS IT Service Desk](https://servicedesk.bas.ac.uk).

{% capture alert_content %}
Try not to use specific people as contacts, as they may be on holiday or change role.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic"
  heading_level=3
  phase="alpha"
  initial_version="0.6.0"
  included="yes"
%}

Use the `.bsk-pattern-page-start` class to create a page element containing:

* a page title of '[website or application name]'
* a [page header]({{ '/components/page-header' | prepend: site.baseurl }}) with '[website or application name]' as a
  `h1` header
* a section with the `.bsk-service-uses` class, containing:
  * a `h2` header with the `.bsk-h3` class that says 'Use this service to:'
  * an unordered list of tasks the service allows the user to do
* a section with the `.bsk-call-to-action` class, containing:
  * a [primary button]({{ '/core/buttons/#primary-button' | prepend: site.baseurl }}), that takes the user to the start
    of a process or task
* a section with the `.bsk-more-information` class, containing:
  * a `h2` header with the `.bsk-h3` class that says 'More information'
  * a point of contact for a service

{% capture alert_content %}
If you are using the [Font Awesome icons]({{ '/core/icons/#font-awesome' | prepend: site.baseurl }}){:.bsk-alert-link},
include the [start now]({{ '/core/icons/#start-now-icon' | prepend: site.baseurl }}){:.bsk-alert-link} icon in the
*start now* button.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<main class="bsk-pattern-start">
  <h1 class="bsk-page-header">[website or application]</h1>
  <section class="bsk-service-uses">
    <div class="bsk-h3">Use this service to:</div>
    <ul>
      <li>book a training course</li>
      <li>manage your training course bookings</li>
      <li>access training material for a training course</li>
      <li>give feedback after a training course</li>
    </ul>
  </section>
  <section class="bsk-call-to-action">
    <button class="bsk-btn bsk-btn-primary bsk-btn-lg">Start Now <i class="fa-fw fas fa-chevron-right"></i></button>
  </section>
  <section class="bsk-more-information">
    <div class="bsk-h3">More information</div>
    <p>Contact the <a href="#">Example team</a> for information and help on how to use [website or application].
  </section>
</main>
{% endexample %}

{% capture alert_content %}
This example does not use heading elements to prevent breaking the table of contents.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0012--start-basic.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Before you start"
  heading_level=3
  phase="alpha"
  initial_version="0.6.0"
  included="yes"
%}

If relevant, add a section with the `.bsk-before-you-start` class, containing:
  * a `h2` header with the `.bsk-h3` class that says 'Before you start'
  * preconditions, prerequisites or information a user needs to fulfil or know to use the service

{% example html %}
<main class="bsk-pattern-start">
  <h1 class="bsk-page-header">[website or application]</h1>
  <section class="bsk-service-uses">
    <div class="bsk-h3">Use this service to:</div>
    <ul>
      <li>book a training course</li>
      <li>manage your training course bookings</li>
      <li>access training material for a training course</li>
      <li>give feedback after a training course</li>
    </ul>
  </section>
  <section class="bsk-call-to-action">
    <button class="bsk-btn bsk-btn-primary bsk-btn-lg">Start Now <i class="fa-fw fas fa-chevron-right"></i></button>
  </section>
  <section class="bsk-before-you-start">
    <div class="bsk-h3">Before you start</div>
    <p>You need approval from your line manager to book training courses.</p>
  </section>
  <section class="bsk-more-information">
    <div class="bsk-h3">More information</div>
    <p>Contact the <a href="#">Example team</a> for more information and help with [website or application].</p>
  </section>
</main>
{% endexample %}

{% capture alert_content %}
This example does not use heading elements to prevent breaking the table of contents.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0014--start-before-you-start.html){:.bsk-btn.bsk-btn-default}

{% include topic-section-metadata.html
  title="Sign in to start"
  heading_level=3
  phase="alpha"
  initial_version="0.6.0"
  included="yes"
%}

Where a service requires a user to sign in to start:

* in the 'before you start' section:
  * add a [info highlight alert]({{ '/components/alert/#highlight' | prepend: site.baseurl }}) with information on who
    can or can't use a service
* in the 'call to action' section:
  * change the *Start Now* button to read 'Sign in to Start' and use the
[Microsoft sign-in button variant]({{ '/core/buttons/#microsoft-sign-in-button' | prepend: site.baseurl }})
  * add a paragraph with `.bsk-sign-in-hint.bsk-text-muted` describing the account users need to sign-in with
* in the 'more information' section:
  * add a point of contact if users have problems signing in

{% example html %}
<main class="bsk-pattern-start">
  <h1 class="bsk-page-header">[website or application]</h1>
  <section class="bsk-service-uses">
    <div class="bsk-h3">Use this service to:</div>
    <ul>
      <li>administer training courses</li>
    </ul>
    <div class="bsk-alert bsk-alert-highlight bsk-alert-info">This service can only be used by members of the Example
    team.</div>
  </section>
  <section class="bsk-call-to-action">
    <a class="bsk-btn bsk-btn-ms-account bsk-btn-lg" href="#">
      <object class="bsk-ms-pictogram" type="image/svg+xml" data="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ms-pictogram.svg"></object>
      Sign in to Start
    </a>
    <p class="bsk-sign-in-hint bsk-text-muted">Use the account you use for your NERC email to sign into this service.</p>
  </section>
  <section class="bsk-more-information">
    <div class="bsk-h3">More information</div>
    <p>Contact the <a href="mailto:servicedesk@bas.ac.uk">IT Service Desk</a> if you are unable to sign in.</p>
  </section>
</main>
{% endexample %}

{% capture alert_content %}
This example does not use heading elements to prevent breaking the table of contents.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0015--start-microsoft-sign-in.html){:.bsk-btn.bsk-btn-default}
