---
title: Colours
menus:
  primary_core:
    weight: 4
sections:
  -
    title: Overview
  -
    title: Page background
  -
    title: Typography
  -
    title: Components
  -
    title: Variants
  -
    title: Standard contextual colours
  -
    title: Development phase colours
  -
    title: Standard colours
  -
    title: Extended colours
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The Style Kit defines two sets of colours:

1. [standard colours](#standard-colours) - consisting of a general colour and greyscale schemes, used by almost all page
elements and recommended for general use
2. [extended colours](#standard-colours) - consisting of highly specific colours for particular purposes such as branding

The extended colours are used for specific purposes such as meeting [external service]({{ '#external-services' }})
branding requirements or to give sufficient contrast within a component, they should not be used generally.

{% capture alert_content %}
To promote consistency, it is strongly recommended to only use
[standard colours](#standard-colours){: .bsk-alert-link }, unless specifically recommended to use an alternative.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
If you do use other colours (including [extended colours](#standard-colours){: .bsk-alert-link }) you must ensure this
complies with the [recommended minimum colour contrast]({{ '/start/standards-accessibility/#colour-contrast' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Page background"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

A default background colour is applied to the `<body>` element.

A default background colour is also applied to the parent `<html>` element to account for shorter pages where a white
space would be shown after the [footer]({{ '/components/footer' | prepend: site.baseurl }}) component.

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-html-background"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>HTML background</li>
        <li><code>$html-bg</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-body-background"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Body background</li>
        <li><code>$body-bg </code></li>
        <li class="bsk-docs-hex-reference">#FFFFFF</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Typography"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

A default text colour is applied to the `<body>` element, which is inherited by headings and paragraphs for example.

A default link colour is applied to the `<body>` element.

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-page-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Page text</li>
        <li><code>$page-text</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-link-colour"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Link colour</li>
        <li><code>$link-color</code></li>
        <li class="bsk-docs-hex-reference">#2B8CC4</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-component-default-color"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Default component colour</li>
        <li><code>$component-default-color</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-component-default-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Default component background</li>
        <li><code>$component-default-bg</code></li>
        <li class="bsk-docs-hex-reference">#EEEEEE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-component-default-active-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Default component active background</li>
        <li><code>$component-default-active-bg</code></li>
        <li class="bsk-docs-hex-reference">#2B8CC4</li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-component-inverse-color"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Inverse component colour</li>
        <li><code>$component-inverse-color</code></li>
        <li class="bsk-docs-hex-reference">#EEEEEE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-component-inverse-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Inverse component background</li>
        <li><code>$component-inverse-bg</code></li>
        <li class="bsk-docs-hex-reference">#555555</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-component-inverse-link-color"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Inverse component link colour</li>
        <li><code>$component-inverse-link-color</code></li>
        <li class="bsk-docs-hex-reference">#71B2D7</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

To indicate the significance of an element (such as a notice or action), the Style Kit uses a set of conventional
colours.

Primary
: Indicates the most important, common or default option, may be used where there is only one option

Experimental
: Indicates something new or that will be different and is being tested, with possibly unexpected results
{: .bsk-dl-lg }

{% capture alert_content %}
These colours have meaning. To promote recognition by users, they should not be used beyond their intended purpose.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
If something experimental may also be dangerous, use the 'danger'
[contextual]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}){:.bsk-alert-link} colour as
well.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-variant-primary-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Primary variant base</li>
        <li><code>$state-primary-base</code></li>
        <li class="bsk-docs-hex-reference">#28A197</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-variant-experimental-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Experimental variant base</li>
        <li><code>$state-experimental-base</code></li>
        <li class="bsk-docs-hex-reference">#6F72AF</li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-variant-primary-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Primary variant text</li>
        <li><code>$state-primary-text</code></li>
        <li class="bsk-docs-hex-reference">#1B6C65</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-variant-experimental-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Experimental variant text</li>
        <li><code>$state-experimental-text</code></li>
        <li class="bsk-docs-hex-reference">#4A4C75</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Standard contextual colours"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

To indicate the context of an element (such as a notice or action), the Style Kit uses a set of conventional,
contextual, colours.

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
These colours have meaning. To promote recognition by users, they should not be used beyond their intended purpose.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

These colours can be used with many core styles and components, such as:

* [alerts]({{ '/components/alert/#contextual-colours' | prepend: site.baseurl }})
* [buttons]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }})
* [form validation]({{ '/core/forms/#validation' | prepend: site.baseurl }})
* [labels]({{ '/components/label/#contextual-colours' | prepend: site.baseurl }})
* [list groups]({{ '/components/list-group/#contextual-colours' | prepend: site.baseurl }})
* [panels]({{ '/components/panel/#contextual-colours' | prepend: site.baseurl }})
* [progress bars]({{ '/components/progress-bar/#contextual-colours' | prepend: site.baseurl }})
* [tables]({{ '/core/tables/#contextual-rows' | prepend: site.baseurl }})
* [text, lists, etc.]({{ '/core/type/#contextual-colours' | prepend: site.baseurl }})
* etc.

{% capture alert_content %}
You should ensure contextual colours are not the only means
 [context is conveyed to ensure those using assistive technologies are not excluded]({{ '/start/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
There are accompanying
[standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}){: .bsk-alert-link }
which can be used alongside these classes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-success-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Success base</li>
        <li><code>$state-success-base</code></li>
        <li class="bsk-docs-hex-reference">#379245</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-warning-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Warning base</li>
        <li><code>$state-warning-base</code></li>
        <li class="bsk-docs-hex-reference">#FFBF47</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-danger-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Danger base</li>
        <li><code>$state-danger-base</code></li>
        <li class="bsk-docs-hex-reference">#B10E1E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-info-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Info base</li>
        <li><code>$state-info-base</code></li>
        <li class="bsk-docs-hex-reference">#2B8CC4</li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-success-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Success text</li>
        <li><code>$state-success-text</code></li>
        <li class="bsk-docs-hex-reference">#25622E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-warning-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Warning text</li>
        <li><code>$state-warning-text</code></li>
        <li class="bsk-docs-hex-reference">#AB8030</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-danger-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Danger text</li>
        <li><code>$state-danger-text</code></li>
        <li class="bsk-docs-hex-reference">#770914</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-info-text"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Info text</li>
        <li><code>$state-info-text</code></li>
        <li class="bsk-docs-hex-reference">#1D5E83</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Standard contextual background colours"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-conventional-colours' | prepend: site.baseurl }}) can be
used as the background of an element using these classes:

| Standard Context | Background Contextual Class |
| ---------------- | --------------------------- |
| Success          | `.bsk-bg-success`           |
| Warning          | `.bsk-bg-warning`           |
| Danger           | `.bsk-bg-danger`            |
| Info             | `.bsk-bg-info`              |
{: .bsk-table .bsk-table-responsive }

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-success-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Success background</li>
        <li><code>$state-success-bg</code></li>
        <li class="bsk-docs-hex-reference">#BBDAC0</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-warning-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Warning background</li>
        <li><code>$state-warning-bg</code></li>
        <li class="bsk-docs-hex-reference">#FFE9C0</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-danger-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Danger background</li>
        <li><code>$state-danger-bg</code></li>
        <li class="bsk-docs-hex-reference">#E4ADB3</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-info-bg"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Info background</li>
        <li><code>$state-info-bg</code></li>
        <li class="bsk-docs-hex-reference">#B7D8EB</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Development phase colours"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

To indicate the state of a service, project, feature, component or other concept in its life-cycle, the Style Kit uses
a set of development phases, which have associated colours. These phases and colours are defined by the Government
Digital Service (except *Backlog*).

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

These colours can be used with many core styles and components, such as:

* [labels]({{ '/components/label/#development-phases' | prepend: site.baseurl }})

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-development-phase-backlog-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Backlog base</li>
        <li><code>$development-phase-backlog</code></li>
        <li class="bsk-docs-hex-reference">#2E358B</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-development-phase-discovery-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Discovery base</li>
        <li><code>$development-phase-discovery</code></li>
        <li class="bsk-docs-hex-reference">#912B88</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-development-phase-alpha-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Alpha base</li>
        <li><code>$development-phase-alpha</code></li>
        <li class="bsk-docs-hex-reference">#D53880</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-development-phase-beta-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Beta base</li>
        <li><code>$development-phase-beta</code></li>
        <li class="bsk-docs-hex-reference">#F47738</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-development-phase-live-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Live base</li>
        <li><code>$development-phase-live</code></li>
        <li class="bsk-docs-hex-reference">#AAB437</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-development-phase-retired-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Retired base</li>
        <li><code>$development-phase-retired</code></li>
        <li class="bsk-docs-hex-reference">#555555</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="BAS theme colours"
  heading_level=2
  phase="beta"
  initial_version="0.5.0"
  included="yes"
%}

To promote consistency, the Style Kit defines a series of colours for different types of activity undertaken at, by, or
in relation to BAS and the polar regions. These are termed 'BAS theme colours' and are unique to the Style Kit.

Polar Science
: Activities primarily associated with science and research undertaken at BAS or by BAS staff

Polar Operations
: Activities primarily associated with the operations of BAS ships, stations and aircraft

Polar Arts
: Activities related to artistic endeavours, either as a primary focus or drawing from other BAS activities

Polar People
: Activities related to the BAS staff in a non-professional setting (see other themes if a processional focus)

Polar Environment
: Activities related to the preservation of the polar environment

Polar Wildlife
: Activities related to the wildlife in the polar regions (see other themes if focus is primarily research)
{: .bsk-dl-lg }

{% capture alert_content %}
Contact the BAS Communications Team if you are unsure which theme to use, and for idents and other assets that
incorporate them.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-theme-polar-science-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Polar Science</li>
        <li><code>$bas-theme-polar-science</code></li>
        <li class="bsk-docs-hex-reference">#B10E1E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-theme-polar-operations-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Polar Operations</li>
        <li><code>$bas-theme-polar-operations</code></li>
        <li class="bsk-docs-hex-reference">#F47738</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-theme-polar-arts-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Polar Arts</li>
        <li><code>$bas-theme-polar-arts</code></li>
        <li class="bsk-docs-hex-reference">#912B88</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-theme-polar-people-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Polar People</li>
        <li><code>$bas-theme-polar-people</code></li>
        <li class="bsk-docs-hex-reference">#1D5E83</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-theme-polar-environment-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Polar Environment</li>
        <li><code>$bas-theme-polar-environment</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-theme-polar-wildlife-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Polar Wildlife</li>
        <li><code>$bas-theme-polar-wildlife</code></li>
        <li class="bsk-docs-hex-reference">#FFBF47</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="BAS facility colours"
  heading_level=2
  phase="beta"
  initial_version="0.5.0"
  included="yes"
%}

To promote consistency, the BAS Style Kit defines a series of colours to represent major BAS facilities, such as
offices, ships, stations and aircraft. These are termed 'BAS facility colours' and are unique to the Style Kit.

Rothera
: Station

Bird Island
: Station

King Edward Point
: Station

Sir David Attenbourgh
: Ship
{: .bsk-dl-lg }

{% capture alert_content %}
This series is incomplete. If you need a colour for an undefined location check first with the BAS Communications Team.
**Do not** simply use a colour.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-facility-rothera-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Rothera</li>
        <li><code>$bas-facility-rothera</code></li>
        <li class="bsk-docs-hex-reference">#2B8CC4</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-facility-bird-island-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Bird Island</li>
        <li><code>$bas-facility-bird-island</code></li>
        <li class="bsk-docs-hex-reference">#379245</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-facility-king-edward-point-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>King Edward Point</li>
        <li><code>$bas-facility-king-edward-point</code></li>
        <li class="bsk-docs-hex-reference">#FFBF47</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-facility-sir-david-attenborough-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sir David Attenborough</li>
        <li><code>$bas-facility-sir-david-attenborough</code></li>
        <li class="bsk-docs-hex-reference">#B10E1E</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="External service colours"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

By convention, and often recommendation by the relevant service, the Style Kit uses these colours for various external
services.

These colours can be used with components such as:

* [social media]({{ '/components/social-media' | prepend: site.baseurl }})

{% capture alert_content %}
These colours are part of the extended colour scheme and should not be used except for representing their respective
service.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-twitter-background"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Twitter</li>
        <li><code>$bsk-colour-ext-twitter-base</code></li>
        <li class="bsk-docs-hex-reference">#55ACEE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-facebook-background"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Facebook</li>
        <li><code>$bsk-colour-ext-facebook-base</code></li>
        <li class="bsk-docs-hex-reference">#3B5998</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-youtube-background"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>YouTube</li>
        <li><code>$bsk-colour-ext-youtube-base</code></li>
        <li class="bsk-docs-hex-reference">#CD201F</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-rss-background"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>RSS</li>
        <li><code>$bsk-colour-ext-rss-base</code></li>
        <li class="bsk-docs-hex-reference">#F26522</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Standard greyscale colours"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

This section lists all the greyscale colours in the standard colour set.

These colours are defined by mixing black with a white base, they do not use a colour tint.

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-white"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>White</li>
        <li><code>$bsk-colour-std-white</code></li>
        <li class="bsk-docs-hex-reference">#FFFFFF</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-grey-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey lighter</li>
        <li><code>$bsk-colour-std-grey-lighter</code></li>
        <li class="bsk-docs-hex-reference">#EEEEEE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-grey-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey light</li>
        <li><code>$bsk-colour-std-grey-light</code></li>
        <li class="bsk-docs-hex-reference">#999999</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-grey-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey base</li>
        <li><code>$bsk-colour-std-grey-base</code></li>
        <li class="bsk-docs-hex-reference">#777777</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-grey-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey dark</li>
        <li><code>$bsk-colour-std-grey-dark</code></li>
        <li class="bsk-docs-hex-reference">#555555</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-grey-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey darker</li>
        <li><code>$bsk-colour-std-grey-darker</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-black"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Black</li>
        <li><code>$bsk-colour-std-black</code></li>
        <li class="bsk-docs-hex-reference">#000000</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Standard colours"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

This section lists all the colours in the standard colour set.

Each standard colour consists of a *base* colour defined as part of a colour pallet. These bases are then mixed with
black and white to produce variants, two lighter and two darker, using a consistent process.

| Variant | Made By                                 |
| ------- | --------------------------------------- |
| lighter | Mixing the *base* colour with 66% white |
| light   | Mixing the *base* colour with 33% white |
| base    | N/A                                     |
| dark    | Mixing the *base* colour with 33% black |
| darker  | Mixing the *base* colour with 66% black |
{:.bsk-table .bsk-table-responsive}

Some base colours are choosen for specific reasons:

Aircraft Red
: The colour of BAS aircraft

Blue
: The BAS brand colour used in the colour roundel and logo

NERC Green
: The NERC brand colour used in the NERC logo
{: .bsk-dl-lg }

<!-- Bases -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-yellow-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Yellow</li>
        <li><code>$bsk-colour-std-yellow-base</code></li>
        <li class="bsk-docs-hex-reference">#FFBF47</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-orange-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Orange</li>
        <li><code>$bsk-colour-std-orange-base</code></li>
        <li class="bsk-docs-hex-reference">#F47738</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-aircraft-red-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Aircraft-red</li>
        <li><code>$bsk-colour-std-aircraft-red-base</code></li>
        <li class="bsk-docs-hex-reference">#CC0033</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-red-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>red</li>
        <li><code>$bsk-colour-std-red-base</code></li>
        <li class="bsk-docs-hex-reference">#B10E1E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-baby-pink-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Baby pink</li>
        <li><code>$bsk-colour-std-baby-pink-base</code></li>
        <li class="bsk-docs-hex-reference">#F499BE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-pink-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Pink</li>
        <li><code>$bsk-colour-std-pink-base</code></li>
        <li class="bsk-docs-hex-reference">#D53880</li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-fuschia-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Fuschia</li>
        <li><code>$bsk-colour-std-fuschia-base</code></li>
        <li class="bsk-docs-hex-reference">#912B88</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-mauve-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Mauve</li>
        <li><code>$bsk-colour-std-mauve-base</code></li>
        <li class="bsk-docs-hex-reference">#6F72AF</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-sky-blue-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue</li>
        <li><code>$bsk-colour-std-sky-blue-base</code></li>
        <li class="bsk-docs-hex-reference">#2B8CC4</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-blue-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Blue</li>
        <li><code>$bsk-colour-std-blue-base</code></li>
        <li class="bsk-docs-hex-reference">#003A5D</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-turquoise-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Turquoise</li>
        <li><code>$bsk-colour-std-turquoise-base</code></li>
        <li class="bsk-docs-hex-reference">#28A197</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-green-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>green</li>
        <li><code>$bsk-colour-std-green-base</code></li>
        <li class="bsk-docs-hex-reference">#379245</li>
      </ul>
    </div>
  </div>
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-nerc-green-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>NERC Green</li>
        <li><code>$bsk-colour-std-nerc-green-base</code></li>
        <li class="bsk-docs-hex-reference">#AAB437</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-brown-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Brown</li>
        <li><code>$bsk-colour-std-brown-base</code></li>
        <li class="bsk-docs-hex-reference">#B58840</li>
      </ul>
    </div>
  </div>
</div>

---

<!-- Yellow -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-yellow-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Yellow lighter</li>
        <li><code>$bsk-colour-std-yellow-lighter</code></li>
        <li class="bsk-docs-hex-reference">#FFE9C0</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-yellow-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Yellow light</li>
        <li><code>$bsk-colour-std-yellow-light</code></li>
        <li class="bsk-docs-hex-reference">#FFD484</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-yellow-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Yellow base</li>
        <li><code>$bsk-colour-std-yellow-base</code></li>
        <li class="bsk-docs-hex-reference">#FFBF47</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-yellow-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Yellow dark</li>
        <li><code>$bsk-colour-std-yellow-dark</code></li>
        <li class="bsk-docs-hex-reference">#AB8030</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-yellow-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Yellow darker</li>
        <li><code>$bsk-colour-std-yellow-darker</code></li>
        <li class="bsk-docs-hex-reference">#574118</li>
      </ul>
    </div>
  </div>
</div>

<!-- Orange -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-orange-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Orange lighter</li>
        <li><code>$bsk-colour-std-orange-lighter</code></li>
        <li class="bsk-docs-hex-reference">#FBD1BB</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-orange-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Orange light</li>
        <li><code>$bsk-colour-std-orange-light</code></li>
        <li class="bsk-docs-hex-reference">#F8A47A</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-orange-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Orange base</li>
        <li><code>$bsk-colour-std-orange-base</code></li>
        <li class="bsk-docs-hex-reference">#F47738</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-orange-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Orange dark</li>
        <li><code>$bsk-colour-std-orange-dark</code></li>
        <li class="bsk-docs-hex-reference">#A35026</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-orange-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Orange darker</li>
        <li><code>$bsk-colour-std-orange-darker</code></li>
        <li class="bsk-docs-hex-reference">#532813</li>
      </ul>
    </div>
  </div>
</div>

<!-- Aircraft Red -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-aircraft-red-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Aircraft red lighter</li>
        <li><code>$bsk-colour-std-aircraft-red-lighter</code></li>
        <li class="bsk-docs-hex-reference">#EEA8BA</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-aircraft-red-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Aircraft red light</li>
        <li><code>$bsk-colour-std-aircraft-red-light</code></li>
        <li class="bsk-docs-hex-reference">#DD5476</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-aircraft-red-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Aircraft red base</li>
        <li><code>$bsk-colour-std-aircraft-red-base</code></li>
        <li class="bsk-docs-hex-reference">#CC0033</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-aircraft-red-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Aircraft red dark</li>
        <li><code>$bsk-colour-std-aircraft-red-dark</code></li>
        <li class="bsk-docs-hex-reference">#890022</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-aircraft-red-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Aircraft red darker</li>
        <li><code>$bsk-colour-std-aircraft-red-darker</code></li>
        <li class="bsk-docs-hex-reference">#450011</li>
      </ul>
    </div>
  </div>
</div>

<!-- Red -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-red-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Red lighter</li>
        <li><code>$bsk-colour-std-red-lighter</code></li>
        <li class="bsk-docs-hex-reference">#E4ADB3</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-red-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Red light</li>
        <li><code>$bsk-colour-std-red-light</code></li>
        <li class="bsk-docs-hex-reference">#CB5E68</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-red-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Red base</li>
        <li><code>$bsk-colour-std-red-base</code></li>
        <li class="bsk-docs-hex-reference">#B10E1E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-red-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Red dark</li>
        <li><code>$bsk-colour-std-red-dark</code></li>
        <li class="bsk-docs-hex-reference">#770914</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-red-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Red darker</li>
        <li><code>$bsk-colour-std-red-darker</code></li>
        <li class="bsk-docs-hex-reference">#3C050A</li>
      </ul>
    </div>
   </div>
</div>

<!-- Baby pink -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-baby-pink-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Baby pink lighter</li>
        <li><code>$bsk-colour-std-baby-pink-lighter</code></li>
        <li class="bsk-docs-hex-reference">#FBDCE9</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-baby-pink-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Baby pink light</li>
        <li><code>$bsk-colour-std-baby-pink-light</code></li>
        <li class="bsk-docs-hex-reference">#F8BBD3</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-baby-pink-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Baby pink base</li>
        <li><code>$bsk-colour-std-baby-pink-base</code></li>
        <li class="bsk-docs-hex-reference">#F499BE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-baby-pink-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Baby pink dark</li>
        <li><code>$bsk-colour-std-baby-pink-dark</code></li>
        <li class="bsk-docs-hex-reference">#A3677F</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-baby-pink-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Baby pink darker</li>
        <li><code>$bsk-colour-std-baby-pink-darker</code></li>
        <li class="bsk-docs-hex-reference">#533441</li>
      </ul>
    </div>
  </div>
</div>

<!-- Pink -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-pink-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Pink lighter</li>
        <li><code>$bsk-colour-std-pink-lighter</code></li>
        <li class="bsk-docs-hex-reference">#F1BBD4</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-pink-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Pink light</li>
        <li><code>$bsk-colour-std-pink-light</code></li>
        <li class="bsk-docs-hex-reference">#E37AAA</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-pink-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Pink base</li>
        <li><code>$bsk-colour-std-pink-base</code></li>
        <li class="bsk-docs-hex-reference">#D53880</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-pink-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Pink dark</li>
        <li><code>$bsk-colour-std-pink-dark</code></li>
        <li class="bsk-docs-hex-reference">#8F2656</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-pink-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Pink darker</li>
        <li><code>$bsk-colour-std-pink-darker</code></li>
        <li class="bsk-docs-hex-reference">#48132C</li>
      </ul>
    </div>
  </div>
</div>

<!-- Fuschia -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-fuschia-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Fuschia lighter</li>
        <li><code>$bsk-colour-std-fuschia-lighter</code></li>
        <li class="bsk-docs-hex-reference">#DAB7D7</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-fuschia-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Fuschia light</li>
        <li><code>$bsk-colour-std-fuschia-light</code></li>
        <li class="bsk-docs-hex-reference">#B571AF</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-fuschia-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Fuschia base</li>
        <li><code>$bsk-colour-std-fuschia-base</code></li>
        <li class="bsk-docs-hex-reference">#912B88</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-fuschia-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Fuschia dark</li>
        <li><code>$bsk-colour-std-fuschia-dark</code></li>
        <li class="bsk-docs-hex-reference">#611D5B</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-fuschia-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Fuschia darker</li>
        <li><code>$bsk-colour-std-fuschia-darker</code></li>
        <li class="bsk-docs-hex-reference">#310F2E</li>
      </ul>
    </div>
  </div>
</div>

<!-- Mauve -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-mauve-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Mauve lighter</li>
        <li><code>$bsk-colour-std-mauve-lighter</code></li>
        <li class="bsk-docs-hex-reference">#CECFE4</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-mauve-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Mauve light</li>
        <li><code>$bsk-colour-std-mauve-light</code></li>
        <li class="bsk-docs-hex-reference">#9FA1C9</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-mauve-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Mauve base</li>
        <li><code>$bsk-colour-std-mauve-base</code></li>
        <li class="bsk-docs-hex-reference">#6F72AF</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-mauve-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Mauve dark</li>
        <li><code>$bsk-colour-std-mauve-dark</code></li>
        <li class="bsk-docs-hex-reference">#4A4C75</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-mauve-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Mauve darker</li>
        <li><code>$bsk-colour-std-mauve-darker</code></li>
        <li class="bsk-docs-hex-reference">#26273C</li>
      </ul>
    </div>
  </div>
</div>

<!-- Sky blue -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-sky-blue-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue lighter</li>
        <li><code>$bsk-colour-std-sky-blue-lighter</code></li>
        <li class="bsk-docs-hex-reference">#B7D8EB</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-sky-blue-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue light</li>
        <li><code>$bsk-colour-std-sky-blue-light</code></li>
        <li class="bsk-docs-hex-reference">#71B2D7</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-sky-blue-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue base</li>
        <li><code>$bsk-colour-std-sky-blue-base</code></li>
        <li class="bsk-docs-hex-reference">#2B8CC4</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-sky-blue-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue dark</li>
        <li><code>$bsk-colour-std-sky-blue-dark</code></li>
        <li class="bsk-docs-hex-reference">#1D5E83</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-sky-blue-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue darker</li>
        <li><code>$bsk-colour-std-sky-blue-darker</code></li>
        <li class="bsk-docs-hex-reference">#0F3043</li>
      </ul>
    </div>
  </div>
</div>

<!-- Blue -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-blue-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Blue lighter</li>
        <li><code>$bsk-colour-std-blue-lighter</code></li>
        <li class="bsk-docs-hex-reference">#A8BCC8</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-blue-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>blue light</li>
        <li><code>$bsk-colour-std-blue-light</code></li>
        <li class="bsk-docs-hex-reference">#547B92</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-blue-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Blue base</li>
        <li><code>$bsk-colour-std-blue-base</code></li>
        <li class="bsk-docs-hex-reference">#003A5D</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-blue-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Blue dark</li>
        <li><code>$bsk-colour-std-blue-dark</code></li>
        <li class="bsk-docs-hex-reference">#00273E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-blue-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Blue darker</li>
        <li><code>$bsk-colour-std-blue-darker</code></li>
        <li class="bsk-docs-hex-reference">#001420</li>
      </ul>
    </div>
  </div>
</div>

<!-- Turquoise -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-turquoise-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Turquoise lighter</li>
        <li><code>$bsk-colour-std-turquoise-lighter</code></li>
        <li class="bsk-docs-hex-reference">#B6DFDC</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-turquoise-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Turquoise light</li>
        <li><code>$bsk-colour-std-turquoise-light</code></li>
        <li class="bsk-docs-hex-reference">#6FC0B9</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-turquoise-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Turquoise base</li>
        <li><code>$bsk-colour-std-turquoise-base</code></li>
        <li class="bsk-docs-hex-reference">#28A197</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-turquoise-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Turquoise dark</li>
        <li><code>$bsk-colour-std-turquoise-dark</code></li>
        <li class="bsk-docs-hex-reference">#1B6C65</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-turquoise-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Turquoise darker</li>
        <li><code>$bsk-colour-std-turquoise-darker</code></li>
        <li class="bsk-docs-hex-reference">#0E3733</li>
      </ul>
    </div>
  </div>
</div>

<!-- Green -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-green-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Green lighter</li>
        <li><code>$bsk-colour-std-green-lighter</code></li>
        <li class="bsk-docs-hex-reference">#BBDAC0</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-green-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Green light</li>
        <li><code>$bsk-colour-std-green-light</code></li>
        <li class="bsk-docs-hex-reference">#79B682</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-green-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Green base</li>
        <li><code>$bsk-colour-std-green-base</code></li>
        <li class="bsk-docs-hex-reference">#379245</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-green-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Green dark</li>
        <li><code>$bsk-colour-std-green-dark</code></li>
        <li class="bsk-docs-hex-reference">#25622E</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-green-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Green darker</li>
        <li><code>$bsk-colour-std-green-darker</code></li>
        <li class="bsk-docs-hex-reference">#133217</li>
      </ul>
    </div>
  </div>
</div>

<!-- NERC Green -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-nerc-green-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>NERC green lighter</li>
        <li><code>$bsk-colour-std-nerc-green-lighter</code></li>
        <li class="bsk-docs-hex-reference">#E2E6BB</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-nerc-green-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>NERC green light</li>
        <li><code>$bsk-colour-std-nerc-green-light</code></li>
        <li class="bsk-docs-hex-reference">#C6CD79</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-nerc-green-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>NERC green base</li>
        <li><code>$bsk-colour-std-nerc-green-base</code></li>
        <li class="bsk-docs-hex-reference">#AAB437</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-nerc-green-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>NERC green dark</li>
        <li><code>$bsk-colour-std-nerc-green-dark</code></li>
        <li class="bsk-docs-hex-reference">#727925</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-nerc-green-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>NERC green darker</li>
        <li><code>$bsk-colour-std-nerc-green-darker</code></li>
        <li class="bsk-docs-hex-reference">#3A3D13</li>
      </ul>
    </div>
  </div>
</div>

<!-- Brown -->
<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-brown-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Brown lighter</li>
        <li><code>$bsk-colour-std-brown-lighter</code></li>
        <li class="bsk-docs-hex-reference">#E6D7BE</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-brown-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Brown light</li>
        <li><code>$bsk-colour-std-brown-light</code></li>
        <li class="bsk-docs-hex-reference">#CDAF7F</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-brown-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Brown base</li>
        <li><code>$bsk-colour-std-brown-base</code></li>
        <li class="bsk-docs-hex-reference">#B58840</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-brown-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Brown dark</li>
        <li><code>$bsk-colour-std-brown-dark</code></li>
        <li class="bsk-docs-hex-reference">#795B2B</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-std-brown-darker"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Brown darker</li>
        <li><code>$bsk-colour-std-brown-darker</code></li>
        <li class="bsk-docs-hex-reference">#3E2E16</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="Extended colours"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

This section lists all the colours in the extended colour set.

{% capture alert_content %}
These colours should not be used for any other purpose. They do not compete with or replace
[standard colours]({{ '#standard-colours' }}).
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Contrast"
  heading_level=3
%}

These colours are required to give additional contrast to Style Kit components.

Table component
: `grey-light-lighter`

Navbar component
: `grey-darker-dark`

Inline code component
: `sky-blue-lighter-light`
{: .bsk-dl-lg }

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-ext-grey-light-lighter"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey light lighter</li>
        <li><code>$bsk-colour-ext-grey-light-lighter</code></li>
        <li class="bsk-docs-hex-reference">#F7F7F7</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-ext-grey-darker-dark"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Grey darker dark</li>
        <li><code>$bsk-colour-ext-grey-darker-dark</code></li>
        <li class="bsk-docs-hex-reference">#222222</li>
      </ul>
    </div>
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-ext-sky-blue-lighter-light"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Sky blue lighter light</li>
        <li><code>$bsk-colour-ext-sky-blue-lighter-light</code></li>
        <li class="bsk-docs-hex-reference">#E6F1F8</li>
      </ul>
    </div>
  </div>
</div>

{% include topic-section-metadata.html
  title="External services"
  heading_level=3
%}

See [external service colours]({{ '#external-service-colours' }}).

{% include topic-section-metadata.html
  title="Development phases"
  heading_level=3
%}

The *backlog* development phase is not included in the Government Digital Service scheme, and therefore isn't included
in their colour scheme (incorporated into the [standard colours]({{ '#standard-colours' }})). This colour is defined by
the (UK Government) Department of Work and Pensions (DWP).

<div class="bsk-docs-swatch-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-ext-purple-base"></div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-swatch-details">
        <li>Purple base</li>
        <li><code>$bsk-colour-ext-purple-base</code></li>
        <li class="bsk-docs-hex-reference">#2E358B</li>
      </ul>
    </div>
</div>
