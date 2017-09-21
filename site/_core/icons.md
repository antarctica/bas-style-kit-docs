---
title: Icons
sections:
  -
    title: Available icons
  -
    title: Caret icon
  -
    title: Close icon
  -
    title: Image purchase icon
  -
    title: Standard contextual icons
  -
    title: External service icons
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Available icons"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The BAS Style Kit includes version **3.7** of the [Font Awesome](http://fontawesome.io) icon web font.

{% alert warning %}
Font Awesome replaces, and removes, the Glyphicons icon font included by default in Bootstrap, its icons therefore
won't work using the Style Kit.
{% endalert %}

{% alert info style=highlight %}
For consistency, it is recommended to use the `.fa-fw` (fixed width) class with all icons.
{% endalert %}

[View Available Icons](http://fontawesome.io/icons/){:.bsk-btn .bsk-btn-default }

{% include snippets/topic-section-metadata.html
  title="Caret icon"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

For menus, Bootstrap's `.bsk-caret` class should be used over the Font Awesome `.fa-caret-` classes, as it will
automatically rotate in drop up menus.

In all other cases, Font Awesome's `.fa-caret-` classes should be used instead.

{% example html %}
<span class="bsk-caret"></span>

<br /><br />

<a href="#">Move right <i class="fa fa-fw fa-caret-right" aria-hidden="true"></i></a>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Standard conventional icons"
  heading_level=2
%}

For common actions or concepts, the Style Kit uses a set of conventional icons.

{% include snippets/topic-section-metadata.html
  title="Close icon"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `fa-times-circle` icon wrapped in a `.bsk-close` element for indicating closing or dismissive things, such as
[alerts]({{ '/components/alert' | prepend: site.baseurl }}).

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-times-circle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Times Circle</li>
        <li class="bsk-docs-icon-reference">fa-times-circle</li>
        <li><code>&lt;i class="fa fa-fw fa-times-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% example html %}
<button type="button" class="bsk-close" aria-label="Close"><i class="fa fa-fw fa-times-circle" aria-hidden="true"></i></button>
{% endexample %}

{% alert info style=highlight %}
**Hint** The close icon is aligned right.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Image purchase icon"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `fa-camera` icon for indicating images and other media items available for purchase from the BAS Image
Collection, such as the [image purchase]({{ '/components/image-purchase' | prepend: site.baseurl }}) component.

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-fw fa-4x fa-camera" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Camera</li>
        <li class="bsk-docs-icon-reference">fa-camera</li>
        <li><code>&lt;i class="fa fa-fw fa-camera" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Standard contextual icons"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

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
{: .bsk-dl-lg }

{% alert warning %}
You should ensure contextual icons are not the only means
 [context is conveyed to ensure those using assistive technologies are not excluded]({{ '/start/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endalert %}

These icons can be used with core styles and components, such as:

* [buttons]({{ '/core/buttons/#contextual-icons' | prepend: site.baseurl }})
* [form validation messages]({{ '/core/forms/#validation' | prepend: site.baseurl }})
* [alerts]({{ '/components/alert' | prepend: site.baseurl }})

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-check" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fa-check</li>
        <li><code>&lt;i class="fa fa-fw fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-exclamation-triangle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-triangle</li>
        <li><code>&lt;i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-exclamation-circle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-circle</li>
        <li><code>&lt;i class="fa fa-fw fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-info" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">fa-info</li>
        <li><code>&lt;i class="fa fa-fw fa-info" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% alert info %}
It is recommended to use the
[contextual text colour classes]({{ '/core/type/#contextual-colours' | prepend: site.baseurl }}){: .bsk-alert-link } with
these icons.
{% endalert %}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-check bsk-text-success"
      aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fa-check</li>
        <li><code>&lt;i class="fa fa-fw fa-check bsk-text-success" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-exclamation-triangle bsk-text-warning"
      aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-triangle</li>
        <li><code>&lt;i class="fa fa-fw fa-exclamation-triangle bsk-text-warning" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-exclamation-circle bsk-text-danger"
      aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fa-exclamation-circle</li>
        <li><code>&lt;i class="fa fa-fw fa-exclamation-circle bsk-text-danger" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-info bsk-text-info"
      aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">fa-info</li>
        <li><code>&lt;i class="fa fa-fw fa-info bsk-text-info" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="External service icons"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

By convention, and often recommendation by the relevant service, the Style Kit uses these icons for various external
services.

{% alert warning style=solid %}
All brand assets trademarks of their respective owners, and subject to their respective licensing restrictions. <br />
You **must** ensure that where you use these assets you comply with these restrictions.
{% endalert %}

These icons can be used with components such as:

* [social media]({{ '/components/social-media' | prepend: site.baseurl }})

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-twitter-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Twitter</li>
        <li class="bsk-docs-icon-reference">fa-twitter-square</li>
        <li><code>&lt;i class="fa fa-fw fa-twitter-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-facebook-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Facebook</li>
        <li class="bsk-docs-icon-reference">fa-facebook-square</li>
        <li><code>&lt;i class="fa fa-fw fa-facebook-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-youtube-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>YouTube</li>
        <li class="bsk-docs-icon-reference">fa-youtube-square</li>
        <li><code>&lt;i class="fa fa-fw fa-youtube-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fa fa-fw fa-4x fa-rss-square"
      aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>RSS</li>
        <li class="bsk-docs-icon-reference">fa-rss-square</li>
        <li><code>&lt;i class="fa fa-fw fa-rss-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>
