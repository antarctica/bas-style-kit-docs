---
title: Icons
menus:
  primary_core:
    weight: 8
sections:
  -
    title: Overview
  -
    title: Font Awesome
  -
    title: Close icon
  -
    title: Standard contextual icons
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

The Style Kit uses some basic icons for drop-down menus and closing alerts only. To use other icons, you need to include
an external icon family alongside the Style Kit.

For general use, the [Font Awesome]({{ '/core/icons/#font-awesome' | prepend: site.baseurl }}) icon family is
recommended, with some specific icons recommended for consistency. Other families are available for more specific needs.

{% capture alert_content %}
Icons should be used to enhance rather than replace other content, unless it is clearer or more familiar for users.
Always ensure any icons used are
[accessible]({{ '/start/standards-accessibility/#link-context-and-roles' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
**Heads up!** The Style Kit used to include
[Font Awesome]({{ '/core/icons/#font-awesome' | prepend: site.baseurl }}){: .bsk-alert-link } directly but is now
optional.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Icon families"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Font Awesome"
  heading_level=3
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="no"
%}

[Font Awesome](https://fontawesome.com) is a general purpose icon family designed for use in websites and applications.
It includes a wide range of icons including indicators, media playbook, progress indicators and social media brands. It
is available in two versions, *Free* and *Pro*.

It is recommended to use the *solid* or *regular* font variants and the `.fa-fw` class for fixed-width icons.

<div class="bsk-alert bsk-alert-solid bsk-alert-warning bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="far fa-fw fa-exclamation-triangle bsk-alert-icon"></i>
      Font Awesome Pro is a protected work and may not be used without a license
    </div>
  </header>
  <p>BAS has a licence to use this icon family in its official websites and applications. This licence
  <strong>does not cover</strong> non-BAS projects, including personal projects of BAS Staff.</p>
</div>

{% capture alert_content %}
Font Awesome is not included in the Style Kit but is available through the BAS CDN. See
[distribution]({{ '/start/distribution/#optional-components' | prepend: site.baseurl }}){: .bsk-alert-link } for how to
include it.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Caret icon"
  heading_level=2
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Use `.bsk-caret` for [drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}).

{% example html %}
<span class="bsk-caret"></span>
{% endexample %}

{% include topic-section-metadata.html
  title="Close icon"
  heading_level=2
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Use the `&times;` HTML entity wrapped in a `.bsk-close` element for indicating closing or dismissive things, such as
[alerts]({{ '/components/alert' | prepend: site.baseurl }}).

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon">&times;</div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Times</li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
**Hint** The close icon is aligned right.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<button type="button" class="bsk-close" aria-label="Close">&times;</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Conventional icons"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Experimental icon"
  heading_level=3
  phase="alpha"
  initial_version="0.3.0"
  revised_version="0.5.0"
  included="no"
%}

Use the `fas fa-flask` icon, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon
family, to indicate something that is experimental or a work in progress.

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-flask" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Flask</li>
        <li class="bsk-docs-icon-reference">fas fa-flask</li>
        <li><code>&lt;i class="fas fa-fw fa-flask" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% example html %}
<button type="button" class="bsk-btn bsk-btn-experimental"><i class="fas fa-fw fa-flask" aria-hidden="true"></i> Experimental Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Standard contextual icons"
  heading_level=3
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="no"
%}

Use these icons, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family, to
indicate the context of an intent or purpose (such as a notice or action).

Success
: Indicates something positive or successful will happen, or has happened

Warning
: Indicates something needs attention, or carries a low-risk

Danger
: Indicates something negative, dangerous, or with a high-risk, will happen, or has happened

Info
: Indicates something neutral, or informative
{: .bsk-dl-lg }

{% capture alert_content %}
You should ensure contextual icons are not the only means
 [context is conveyed to ensure those using assistive technologies are not excluded]({{ '/start/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

These icons can be used with core styles and components, such as:

* [buttons]({{ '/core/buttons/#contextual-icons' | prepend: site.baseurl }})
* [form validation messages]({{ '/core/forms/#validation' | prepend: site.baseurl }})
* [alerts]({{ '/components/alert' | prepend: site.baseurl }})

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-check" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">far fa-check</li>
        <li><code>&lt;i class="far fa-fw fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-exclamation-triangle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">far fa-exclamation-triangle</li>
        <li><code>&lt;i class="far fa-fw fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-exclamation-circle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fas fa-exclamation-circle</li>
        <li><code>&lt;i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-info-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">far fa-info-square</li>
        <li><code>&lt;i class="far fa-fw fa-info-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
It is recommended to use the
[contextual text colour classes]({{ '/core/type/#contextual-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
with these icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-check bsk-text-success" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">far fa-check</li>
        <li><code>&lt;i class="far fa-fw fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-exclamation-triangle bsk-text-warning" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">far fa-exclamation-triangle</li>
        <li><code>&lt;i class="far fa-fw fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-exclamation-circle bsk-text-danger" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fas fa-exclamation-circle</li>
        <li><code>&lt;i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-info-square bsk-text-info" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">far fa-info-square</li>
        <li><code>&lt;i class="far fa-fw fa-info-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="External service icons"
  heading_level=3
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="no"
%}

Use these icons, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family, for
indicating various external services.

{% capture alert_content %}
Icons for external services may be trademarked or otherwise restricted. If used, you **must** ensure you follow any
requirements to use these icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

These icons can be used with components such as:

* [social media]({{ '/components/social-media' | prepend: site.baseurl }})

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fab fa-fw fa-4x fa-twitter-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Twitter</li>
        <li class="bsk-docs-icon-reference">fab fa-twitter-square</li>
        <li><code>&lt;i class="fab fa-fw fa-twitter-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fab fa-fw fa-4x fa-facebook-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Facebook</li>
        <li class="bsk-docs-icon-reference">fab fa-facebook-square</li>
        <li><code>&lt;i class="fab fa-fw fa-facebook-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fab fa-fw fa-4x fa-youtube-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>YouTube</li>
        <li class="bsk-docs-icon-reference">fab fa-youtube-square</li>
        <li><code>&lt;i class="fab fa-fw fa-youtube-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-rss-square"
      aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>RSS</li>
        <li class="bsk-docs-icon-reference">fas fa-rss-square</li>
        <li><code>&lt;i class="fas fa-fw fa-rss-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
It is recommended to use the
[external service colour classes]({{ '/core/colours/#external-service-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
with these icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-twitter">
        <i class="fab fa-fw fa-4x fa-twitter-square bsk-twitter" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Twitter</li>
        <li class="bsk-docs-icon-reference">fab fa-twitter-square</li>
        <li><code>&lt;i class="fab fa-fw fa-twitter-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-facebook">
        <i class="fab fa-fw fa-4x fa-facebook-square" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Facebook</li>
        <li class="bsk-docs-icon-reference">fab fa-facebook-square</li>
        <li><code>&lt;i class="fab fa-fw fa-facebook-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-youtube">
        <i class="fab fa-fw fa-4x fa-youtube-square" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>YouTube</li>
        <li class="bsk-docs-icon-reference">fab fa-youtube-square</li>
        <li><code>&lt;i class="fab fa-fw fa-youtube-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-rss">
        <i class="fas fa-fw fa-4x fa-rss-square" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>RSS</li>
        <li class="bsk-docs-icon-reference">fas fa-rss-square</li>
        <li><code>&lt;i class="fas fa-fw fa-rss-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>
