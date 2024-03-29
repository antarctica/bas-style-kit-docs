---
item_type: Core
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
    title: Bootstrap Icons
  -
    title: Close icon
  -
    title: Conventional icons
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

The Style Kit uses some basic icons for drop-down menus and closing alerts only. To use other icons, you need to include
an external icon family alongside the Style Kit.

For general use, the [Font Awesome]({{ '/core/icons/#font-awesome' | prepend: site.baseurl }}) icon family is
recommended, with some specific icons recommended for consistency. Other families are available for more specialist
needs.

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
  phase="live"
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
  title="Bootstrap Icons"
  heading_level=2
  phase="live"
  initial_version="0.7.0"
  included="yes"
%}

[Bootstrap Icons](https://icons.getbootstrap.com/) are another general purpose set of icons.  
They are available under an MIT license: [https://github.com/twbs/icons/blob/main/LICENSE](https://github.com/twbs/icons/blob/main/LICENSE)  
As of 2023 they are open source.  

It is recommended to use the *solid* or *regular* font variants.

In most cases the Font Awesome icons should be prefered over the Bootstrap icons.

{% include topic-section-metadata.html
  title="Caret icon"
  heading_level=2
  phase="depreciated"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

The caret icon is now included in [drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}).

If a caret is needed elsewhere use a Font Awesome icon or an SVG.

{% example html %}
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
</svg>
{% endexample %}

{% include topic-section-metadata.html
  title="Close icon"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Use the `&times;` HTML entity wrapped in a `.bsk-close` element for indicating closing or dismissive things, such as
[alerts]({{ '/components/alert' | prepend: site.baseurl }}).

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
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
  phase="live"
  initial_version="0.3.0"
  revised_version="0.5.0"
  included="no"
%}

Use `.fas.fa-flask`, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family, to
indicate something that is experimental or a work in progress.

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-flask" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Flask</li>
        <li class="bsk-docs-icon-reference">fas fa-flask</li>
        <li><code>&lt;i class="fas fa-fw fa-flask" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Start now icon"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
  included="no"
%}

Use `.fas.fa-chevron-right`, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon
family, to consistently identify buttons that will start a process or task, as in the
[Start page]({{ '/patterns/start-page' | prepend: site.baseurl }}) pattern.

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-chevron-right" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Chevron Right</li>
        <li class="bsk-docs-icon-reference">fas fa-chevron-right</li>
        <li><code>&lt;i class="fas fa-fw fa-chevron-right" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Sortable icon"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="no"
%}

Use `.far.fa-bars`, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family, to
indicate something that can be reordered, such as the
[Sortable]({{ '/interactivity/sortable' | prepend: site.baseurl }}) component.

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-bars" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Bars</li>
        <li class="bsk-docs-icon-reference">far fa-bars</li>
        <li><code>&lt;i class="far fa-fw fa-bars" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="ORCID iD icon"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
%}

Use `.fab.fa-orcid`, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family, for
ORCID iDs.

{% capture alert_content %}
ORCID iD must be displayed according to
[ORCID Brand Guidelines](https://orcid.org/trademark-and-id-display-guidelines){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fa-fw fa-4x fab fa-orcid" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>ORCID iD</li>
        <li class="bsk-docs-icon-reference">fab fa-orcid</li>
        <li><code>&lt;i class="fa-fw fab fa-orcid" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
It is recommended to use the relevant
[external service colour]({{ '/core/colours/#external-service-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
with this icon.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fa-fw fa-4x fab fa-orcid bsk-docs-identifiers-orcid" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>ORCID iD</li>
        <li class="bsk-docs-icon-reference">fab fa-orcid</li>
        <li><code>&lt;i class="fa-fw fab fa-orcid" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Markdown icon"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
%}

Use `.fab.fa-markdown`, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family
to indicate support for Markdown formatting.

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fa-fw fa-4x fab fa-markdown" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Markdown</li>
        <li class="bsk-docs-icon-reference">fab fa-markdown</li>
        <li><code>&lt;i class="fa-fw fab fa-markdown" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Standard contextual icons"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.6.0"
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
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-check" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fas fa-check</li>
        <li><code>&lt;i class="fas fa-fw fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-exclamation-triangle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">far fa-exclamation-triangle</li>
        <li><code>&lt;i class="far fa-fw fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-exclamation-circle" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fas fa-exclamation-circle</li>
        <li><code>&lt;i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
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
When used on their own, it is recommended to use the
[standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
with these icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-check bsk-docs-icon-context-success" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fas fa-check</li>
        <li><code>&lt;i class="faa fa-fw fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-exclamation-triangle bsk-docs-icon-context-warning" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">far fa-exclamation-triangle</li>
        <li><code>&lt;i class="far fa-fw fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-exclamation-circle bsk-docs-icon-context-danger" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fas fa-exclamation-circle</li>
        <li><code>&lt;i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-info-square bsk-docs-icon-context-info" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Info</li>
        <li class="bsk-docs-icon-reference">far fa-info-square</li>
        <li><code>&lt;i class="far fa-fw fa-info-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
When used with text, it is recommended to use the
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
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-check bsk-text-success" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Success</li>
        <li class="bsk-docs-icon-reference">fas fa-check</li>
        <li><code>&lt;i class="fas fa-fw fa-check" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="far fa-fw fa-4x fa-exclamation-triangle bsk-text-warning" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Warning</li>
        <li class="bsk-docs-icon-reference">far fa-exclamation-triangle</li>
        <li><code>&lt;i class="far fa-fw fa-exclamation-triangle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-exclamation-circle bsk-text-danger" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Danger</li>
        <li class="bsk-docs-icon-reference">fas fa-exclamation-circle</li>
        <li><code>&lt;i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
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
  title="Development phase icons"
  heading_level=3
  phase="live"
  initial_version="0.5.0"
  included="no"
%}

Use these icons, from the [Font Awesome]({{ '/core/icons#font-awesome' | prepend: site.baseurl }}) icon family, to
indicate the state of a service, project, feature, component or other concept in its life-cycle.

Backlog
: A phase for concepts that are yet to be evaluated, or deliberately held for review in the future

Discovery
: A phase before a concept is started to find out whether users need it and is not already provided by another service

Alpha
: A development phase during which a concept is prototyped and tested to demonstrate its feasibility and function

Beta
: A refinement phase following alpha where a concept is tested and improved until it is suitable for general use

Live
: A phase where a concept is generally available and receiving support for, improvements and fixes

Retired
: A phase for where a concept is no longer needed, due to changing needs or replacement by another concept
{: .bsk-dl-lg }

{% capture alert_content %}
You should ensure icons are not the only means
 [context is conveyed to ensure those using assistive technologies are not excluded]({{ '/start/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-lightbulb" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Backlog</li>
        <li class="bsk-docs-icon-reference">fas fa-lightbulb</li>
        <li><code>&lt;i class="fas fa-fw fa-lightbulb" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-search" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Discovery</li>
        <li class="bsk-docs-icon-reference">fas fa-search</li>
        <li><code>&lt;i class="fas fa-fw fa-search" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-paper-plane" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Alpha</li>
        <li class="bsk-docs-icon-reference">fas fa-paper-plane</li>
        <li><code>&lt;i class="fas fa-fw fa-paper-plane" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-plane" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Beta</li>
        <li class="bsk-docs-icon-reference">fas fa-plane</li>
        <li><code>&lt;i class="fas fa-fw fa-plane" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-rocket" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Live</li>
        <li class="bsk-docs-icon-reference">fas fa-rocket</li>
        <li><code>&lt;i class="fas fa-fw fa-rocket" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-moon" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Retired</li>
        <li class="bsk-docs-icon-reference">fas fa-moon</li>
        <li><code>&lt;i class="fas fa-fw fa-moon" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
It is recommended to use the
[development phase colours]({{ '/core/colours/#development-phase-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
with these icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-lightbulb bsk-docs-icon-development-phase-backlog" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Backlog</li>
        <li class="bsk-docs-icon-reference">fas fa-lightbulb</li>
        <li><code>&lt;i class="fas fa-fw fa-lightbulb" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-search bsk-docs-icon-development-phase-discovery" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Discovery</li>
        <li class="bsk-docs-icon-reference">fas fa-search</li>
        <li><code>&lt;i class="fas fa-fw fa-search" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-paper-plane bsk-docs-icon-development-phase-alpha" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Alpha</li>
        <li class="bsk-docs-icon-reference">fas fa-paper-plane</li>
        <li><code>&lt;i class="fas fa-fw fa-paper-plane" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-plane bsk-docs-icon-development-phase-beta" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Beta</li>
        <li class="bsk-docs-icon-reference">fas fa-plane</li>
        <li><code>&lt;i class="fas fa-fw fa-plane" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-rocket bsk-docs-icon-development-phase-live" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Live</li>
        <li class="bsk-docs-icon-reference">fas fa-rocket</li>
        <li><code>&lt;i class="fas fa-fw fa-rocket" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fas fa-fw fa-4x fa-moon bsk-docs-icon-development-phase-retired" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Retired</li>
        <li class="bsk-docs-icon-reference">fas fa-moon</li>
        <li><code>&lt;i class="fas fa-fw fa-moon" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="External service icons"
  heading_level=3
  phase="live"
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
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fab fa-fw fa-4x fa-twitter-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Twitter</li>
        <li class="bsk-docs-icon-reference">fab fa-twitter-square</li>
        <li><code>&lt;i class="fab fa-fw fa-twitter-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fab fa-fw fa-4x fa-facebook-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Facebook</li>
        <li class="bsk-docs-icon-reference">fab fa-facebook-square</li>
        <li><code>&lt;i class="fab fa-fw fa-facebook-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon"><i class="fab fa-fw fa-4x fa-youtube-square" aria-hidden="true"></i></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>YouTube</li>
        <li class="bsk-docs-icon-reference">fab fa-youtube-square</li>
        <li><code>&lt;i class="fab fa-fw fa-youtube-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
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
[external service colours]({{ '/core/colours/#external-service-colours' | prepend: site.baseurl }}){: .bsk-alert-link }
with these icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-twitter">
        <i class="fab fa-fw fa-4x fa-twitter-square bsk-twitter" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Twitter</li>
        <li class="bsk-docs-icon-reference">fab fa-twitter-square</li>
        <li><code>&lt;i class="fab fa-fw fa-twitter-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-facebook">
        <i class="fab fa-fw fa-4x fa-facebook-square" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Facebook</li>
        <li class="bsk-docs-icon-reference">fab fa-facebook-square</li>
        <li><code>&lt;i class="fab fa-fw fa-facebook-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
      <div class="bsk-docs-icon bsk-social-media-static bsk-youtube">
        <i class="fab fa-fw fa-4x fa-youtube-square" aria-hidden="true"></i>
      </div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>YouTube</li>
        <li class="bsk-docs-icon-reference">fab fa-youtube-square</li>
        <li><code>&lt;i class="fab fa-fw fa-youtube-square" aria-hidden="true"&gt;&lt;/i&gt;</code></li>
      </ul>
    </div>
    <div class="bsk-col-md-3">
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
