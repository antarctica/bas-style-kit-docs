---
title: Sign in to continue
menus:
  primary_patterns:
    weight: 6
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

Use this pattern to interrupt a task or process where a user needs to sign in.

Page patterns represent complete pages that should be used with few changes to promote consistency. If you are using
one of the Style Kit's
[themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link}, this
page pattern is available as a special layout or view.

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Use this pattern where a user's identity is needed to complete a task or process.

This pattern is intended to require users to sign in when they have to, rather than as an initial step that isn't always
needed. For example, you may need to sign in to manage items but not to view them.

When using this pattern, do not:

* change the style and text of the *Sign in to Continue* button

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
  phase="beta"
  initial_version="0.6.0"
  included="yes"
%}

Use the `.bsk-pattern-sign-in` class to create a page element containing:

* a page title of '[website or application name]'
* a [page header]({{ '/components/page-header' | prepend: site.baseurl }}) with 'Please sign in to continue' as a `h1`
  header
* a lead paragraph using `.bsk-lead` with 'We need to check you are allowed to use this part of this service.'
* a section with the `.bsk-call-to-action` class, containing:
  * a [Microsoft sign in button]({{ '/core/buttons/#microsoft-sign-in-button' | prepend: site.baseurl }}) with 'Sign in
    to Continue'
* a section with the `.bsk-sign-in-information` class, containing:
  * a description of the account users need to sign in with
  * a point of contact for the service
  * a point of contact if users have problems signing in

{% example html %}
<main class="bsk-pattern-sign-in">
  <h1 class="bsk-page-header">Please sign in to continue</h1>
  <p class="bsk-lead">We need to check you are allowed to use this part of this service.</p>
  <section class="bsk-call-to-action">
    <a class="bsk-btn bsk-btn-ms-account bsk-btn-lg" href="#">
      <object class="bsk-ms-pictogram" type="image/svg+xml" data="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ms-pictogram.svg"></object>
      Sign in to Continue
    </a>
  </section>
  <section class="bsk-sign-in-information">
    <p>Use the account you use for your NERC email to sign into this service.</p>
    <p>Contact the <a href="mailto:servicedesk@bas.ac.uk">IT Service Desk</a> if you are unable to sign in.</p>
  </section>
</main>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0016--sign-in-microsoft.html){:.bsk-btn.bsk-btn-default}
