---
title: Icons
sections:
  -
    title: Available icons
  -
    title: Standard contextual icons
  -
    title: Close icon
  -
    title: Caret icon
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Available icons
{: #{{ 'Available icons' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

The BAS Style Kit includes version **3.6** of the [Font Awesome](http://fontawesome.io) icon web font.

Font Awesome replaces, and removes, the Glyphicons icon font included by default in Bootstrap, its icons therefore
won't work using the Style Kit.
{: .alert .alert-warning }

[View Available Icons](http://fontawesome.io/icons/){:.btn .btn-bsk .btn-default }

## Close icon
{: #{{ 'Close icon' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Use the `times-circle` icon wrapped in a `.close` element for indicating closing or dismissive things, such as alerts.

<div class="bsk-docs-icons-wrapper">
  <div class="row">
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-times-circle" aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Close</li>
        <li class="bsk-docs-icon-reference">fa-times-circle</li>
        <li><code>&lt;i class="fa fa-times-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% example html %}
<button type="button" class="close" aria-label="Close"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
{% endexample %}

**Hint** The close icon is aligned right.
{: .alert .alert-info }

## Caret icon
{: #{{ 'Caret icon' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

For menus, Bootstrap's `.caret` class should be used over the Font Awesome `.caret-` classes, as it will automatically
rotate in drop up menus.

In all other cases, Font Awesome's `.caret-` classes should be used instead.

{% example html %}
<span class="caret"></span>

<br /><br />

<a href="#">Move right <i class="fa fa-caret-right" aria-hidden="true"></i></a>
{% endexample %}

## Standard contextual icons
{: #{{ 'Standard contextual icons' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

To indicate the intent or purpose of an element (such as a notice or action), the Style Kit uses a set of conventional
contextual icons.

Success
: Indicates something positive or successful will happen, or has happened

Warning
: Indicates something needs attention, or carries a low-risk

Danger
: Indicates something negative, dangerous, or with a high-risk, will happen, or has happened

Info
: Indicates something neutral, or informative
{: .dl-bsk }

You should ensure contextual icons are not the only means
 [context is conveyed to ensure those using assistive technologies are not excluded]({{ '/start/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-warning }

These icons can be used with many core styles and components, such as:

* [buttons]({{ '/core/buttons/#contextual-icons' | prepend: site.baseurl }})
* [form validation messages]({{ '/core/forms/#validation' | prepend: site.baseurl }})

<div class="bsk-docs-icons-wrapper">
  <div class="row">
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-check" aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fa-check</li>
        <li><code>&lt;i class="fa fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-exclamation-triangle" aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-triangle</li>
        <li><code>&lt;i class="fa fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-exclamation-circle" aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-circle</li>
        <li><code>&lt;i class="fa fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-info" aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">fa-info</li>
        <li><code>&lt;i class="fa fa-info" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

It is recommended to use the
[contextual text colour classes]({{ '/core/type/#contextual-colours' | prepend: site.baseurl }}){: .alert-link } with
these icons.
{: .alert .alert-info }

<div class="bsk-docs-icons-wrapper">
  <div class="row">
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-check text-success"
      aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fa-check</li>
        <li><code>&lt;i class="fa fa-check text-success" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-exclamation-triangle text-warning"
      aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-triangle</li>
        <li><code>&lt;i class="fa fa-exclamation-triangle text-warning" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-exclamation-circle text-danger"
      aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-circle</li>
        <li><code>&lt;i class="fa fa-exclamation-circle text-danger" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="col-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-4x fa-fw fa-info text-info"
      aria-hidden="true"></i></div>
      <ul class="list-unstyled text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">fa-info</li>
        <li><code>&lt;i class="fa fa-info text-info" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>
