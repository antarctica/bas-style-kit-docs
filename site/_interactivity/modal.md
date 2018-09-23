---
title: Modal
menus:
  primary_interactivity:
    weight: 8
sections:
  -
    title: Overview
  -
    title: Usage
  -
    title: Examples
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="alpha"
  initial_version="0.5.0"
%}

The Style Kit includes a customised version of the Bootstrap
[modal](https://getbootstrap.com/docs/3.3/javascript/#modal) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

[View Modal Plugin](https://getbootstrap.com/docs/3.3/javascript/#modal){:.bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="alpha"
  initial_version="0.5.0"
%}

This plugin depends upon:

* [jQuery](https://jquery.com).

{% capture alert_content %}
See [distribution]({{ '/start/distribution/#javascript-dependencies' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies.
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

Modals can be useful for drawing the users attention to something, such as a time limit for booking a ticket.

{% capture alert_content %}
In most cases modals should be avoided as they are hard to make accessible and do not work well on mobiles or
small devices, especially where there is lots of content.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
[Alerts]({{ '/components/alert' | prepend: site.baseurl }}){:.bsk-alert-link}, or taking users to a separate page to
confirm an action, should generally be used instead of a modal.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

{% example html %}
<!-- trigger -->
<button class="bsk-btn bsk-btn-default" type="button" data-toggle="modal" data-target="#example-modal">Trigger modal</button>

<!-- modal -->
<div class="bsk-modal bsk-fade" id="example-modal" tabindex="-1" role="dialog">
  <div class="bsk-modal-dialog" role="document">
    <div class="bsk-modal-content">
      <header class="bsk-modal-header">
        <button class="bsk-close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="bsk-modal-title">Your booking will expire in 24 minutes</h4>
      </header>
      <div class="bsk-modal-body">
        <p>Your tickets are only reserved for a limited time until paid for. If your booking expires you will need to start again.</p>
      </div>
      <footer class="bsk-modal-footer">
        <button class="bsk-btn bsk-btn-primary" type="button" data-dismiss="modal">Continue</button>
      </footer>
    </div>
  </div>
</div>
{% endexample %}
