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

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.alert` class to highlight feedback about a user action, or some other event.

You **must** pick a [variant]({{ '/components/alert/#variants' | prepend: site.baseurl }}){: .alert-link } for each
alert, otherwise it will look strange. It is not enough to use `.alert` on its own.
{: .alert .alert-warning }

## Variants
{: #{{ 'Variants' | slugify }}}

There is no *default* alert variant, as a grey alert for example wouldn't make a lot of sense.
{: .alert .alert-info }

### Contextual colours
{: #{{ 'contextual colours' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for adding context to alerts using these classes:

* `.label-success`
* `.label-warning`
* `.label-danger`
* `.label-info`

{% example html %}
<div class="alert alert-success" role="alert">Success alert</div>
<div class="alert alert-warning" role="alert">Warning alert</div>
<div class="alert alert-danger" role="alert">Danger alert</div>
<div class="alert alert-info" role="alert">Info alert</div>
{% endexample %}

### Contextual icons
{: #{{ 'contextual icons' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can be
used for adding extra context to alerts.

{% example html %}
<div class="alert alert-success" role="alert"><i class="fa fa-check text-success" aria-hidden="true"></i> Success alert</div>
<div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle text-warning" aria-hidden="true"></i> Warning alert</div>
<div class="alert alert-danger" role="alert"><i class="fa fa-exclamation-circle text-danger" aria-hidden="true"></i> Danger alert</div>
<div class="alert alert-info" role="alert"><i class="fa fa-info text-info" aria-hidden="true"></i> Info alert</div>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }}}

### Alert links
{: #{{ 'alert links' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the `.alert-link` class for any link (`a`) elements within an alert.

{% example html %}
<div class="alert alert-success" role="alert">Alert with a <a href="#" class="alert-link">link</a></div>
<!-- This example doesn't include the '.alert-link' class for demonstration purposes -->
<div class="alert alert-success" role="alert">Alert with a <a href="#">link</a></div>
{% endexample %}

### Dismissible alerts
{: #{{ 'dismissible alerts' | slugify }}}

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.alert-dismissible` class, with a `button` element using the
[close icon]({{ '/core/icons/#close-icon' | prepend: site.baseurl }}), to create an alert that can be closed or dismissed.

Dismissible alerts require the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }}){: .alert-link }
JavaScript plugin, which is enabled on this site.
{: .alert .alert-info }

The close button element should use a `button` element, not a link (`a`) element, for browser compatibility.
{: .alert .alert-danger }

{% example html %}
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
  An alert
</div>
{% endexample %}
