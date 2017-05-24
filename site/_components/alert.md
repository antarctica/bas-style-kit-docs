---
title: Alert
sections:
  -
    title: Overview
  -
    title: Contextual colours
  -
    title: Contextual icons
  -
    title: Alert links
  -
    title: Dismissible alerts
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.alert` class to highlight feedback about a user action, or some other event.

You **must** pick a [variant]({{ '/components/alert/#variants' | prepend: site.baseurl }}){: .alert-link } for each
alert, otherwise it will look strange. It is not enough to use `.alert` on its own.
{: .alert .alert-warning }

**Heads up!** Alert elements are not yet fully styled, but will be in the next version of the Style Kit.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

There is no *default* alert variant, as a grey alert for example wouldn't make a lot of sense.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Label Contextual Class |
| ---------------- | ---------------------- |
| Success          | `.label-success`       |
| Warning          | `.label-warning`       |
| Danger           | `.label-danger`        |
| Info             | `.label-info`          |
{: .table .table-responsive }

{% example html %}
<div class="alert alert-success" role="alert">Success alert</div>
<div class="alert alert-warning" role="alert">Warning alert</div>
<div class="alert alert-danger" role="alert">Danger alert</div>
<div class="alert alert-info" role="alert">Info alert</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Contextual icons"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can be
used for adding extra context to alerts.

{% example html %}
<div class="alert alert-success" role="alert"><i class="fa fa-fw fa-check text-success" aria-hidden="true"></i> Success alert</div>
<div class="alert alert-warning" role="alert"><i class="fa fa-fw fa-exclamation-triangle text-warning" aria-hidden="true"></i> Warning alert</div>
<div class="alert alert-danger" role="alert"><i class="fa fa-fw fa-exclamation-circle text-danger" aria-hidden="true"></i> Danger alert</div>
<div class="alert alert-info" role="alert"><i class="fa fa-fw fa-info text-info" aria-hidden="true"></i> Info alert</div>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }}}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Alert links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.alert-link` class for any <code>&lt;a&gt;</code> elements within an alert.

{% example html %}
<div class="alert alert-success" role="alert">Alert with a <a href="#" class="alert-link">link</a></div>
<!-- This example doesn't include the '.alert-link' class for demonstration purposes -->
<div class="alert alert-success" role="alert">Alert with a <a href="#">link</a></div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Dismissible alerts"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add a `button` element using the [close icon]({{ '/core/icons/#close-icon' | prepend: site.baseurl }}), to create an ]
alert that can be closed or dismissed.

Dismissible alerts require the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }}){: .alert-link }
JavaScript plugin, which is enabled on this site.
{: .alert .alert-info }

The close button element should use a `button` element, not a <code>&lt;a&gt;</code> element, for browser compatibility.
{: .alert .alert-danger }

{% example html %}
<div class="alert alert-success" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fa times-circle" aria-hidden="true"></i></button>
  An alert
</div>
{% endexample %}
