---
title: Colours
sections:
  -
    title: Colour contrast
  -
    title: Page background
  -
    title: Typography
  -
    title: Buttons
  -
    title: BAS brand colours
  -
    title: Standard greyscale colours
  -
    title: Standard contextual colours
  -
    title: Background contextual classes
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Colour contrast"
  heading_level=2
%}

If you change any of these colours, or use them for other purposes, ensure this complies with the
[recommended minimum colour contrast]({{ '/start/standards-accessibility/#colour-contrast' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-warning }

{% include snippets/topic-section-metadata.html
  title="Page background"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

A default background colour is applied to the `<body>` element.

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-page-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Page background</li>
        <li><code>$page-background</code></li>
        <li class="bsk-docs-hex-reference">#FFFFFF</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Typography"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

A default text colour is applied to the `<body>` element, which is inherited by headings and paragraphs for example.

A default link colour is applied to the `<body>` element.

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-page-text"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Page text</li>
        <li><code>$page-text</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-link-colour"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Link colour</li>
        <li><code>$link-color</code></li>
        <li class="bsk-docs-hex-reference">#007ac3</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Actions"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-action-default-bg"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Default action (background)</li>
        <li><code>$btn-bsk-default-bg</code></li>
        <li class="bsk-docs-hex-reference">#c3c3c3</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-action-primary-bg"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Primary action (background)</li>
        <li><code>$btn-bsk-primary-bg</code></li>
        <li class="bsk-docs-hex-reference">#0DA59F</li>
      </ul>
    </div>
  </div>
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-action-default-border"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Default action (border)</li>
        <li><code>$btn-bsk-default-border</code></li>
        <li class="bsk-docs-hex-reference">#8c8c8c</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-action-primary-border"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Primary action (border)</li>
        <li><code>$btn-bsk-primary-border</code></li>
        <li class="bsk-docs-hex-reference">#0b8d88</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="BAS brand colours"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The BAS brand colours consist of a range of blue shades, derived from the official *BAS blue* colour, and a number of
contrasting and complementary ascent colours.

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-brand"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS brand</li>
        <li><code>$bsk-bas-brand</code></li>
        <li class="bsk-docs-hex-reference">#003A5D</li>
      </ul>
    </div>
  </div>
</div>
<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-grey-lighter"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS grey lighter</li>
        <li><code>$bsk-grey-lighter</code></li>
        <li class="bsk-docs-hex-reference">#F4F6F9</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-grey-light"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS grey light</li>
        <li><code>$bsk-grey-light</code></li>
        <li class="bsk-docs-hex-reference">#E7EBF1</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-blue-light"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS blue light</li>
        <li><code>$bsk-blue-light</code></li>
        <li class="bsk-docs-hex-reference">#77CCFF</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-blue"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS blue</li>
        <li><code>$bsk-blue</code></li>
        <li class="bsk-docs-hex-reference">#006AAA</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-blue-dark"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS blue-dark</li>
        <li><code>$bsk-blue-dark</code></li>
        <li class="bsk-docs-hex-reference">#003A5D</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-red"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS red</li>
        <li><code>$bsk-red</code></li>
        <li class="bsk-docs-hex-reference">#B93E14</li>
      </ul>
    </div>
  </div>
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-bas-turquoise"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>BAS turquoise</li>
        <li><code>$bsk-bas-turquoise</code></li>
        <li class="bsk-docs-hex-reference">#0DA59F</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Standard greyscale colours"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

To provide contrast as backgrounds for layout elements, such as
[sidebars]({{ '/components/sidebar' | prepend: site.baseurl }}), and components, such as
[buttons]({{ '/core/buttons' | prepend: site.baseurl }}), the Style Kit uses a set of conventional grey shades.

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-grey-lighter"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Grey lighter</li>
        <li><code>$grey-lighter</code></li>
        <li class="bsk-docs-hex-reference">#EEEEEE</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-grey-light"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Grey light</li>
        <li><code>$grey-light</code></li>
        <li class="bsk-docs-hex-reference">#777777</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-grey"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Grey</li>
        <li><code>$grey</code></li>
        <li class="bsk-docs-hex-reference">#555555</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-grey-dark"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Grey dark</li>
        <li><code>$grey-dark</code></li>
        <li class="bsk-docs-hex-reference">#333333</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-grey-darker"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Grey darker</li>
        <li><code>$grey-darker</code></li>
        <li class="bsk-docs-hex-reference">#222222</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Standard contextual colours"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

To indicate the intent or purpose of an element (such as a notice or action), the Style Kit uses a set of conventional
contextual colours.

Success
: Indicates something positive or successful will happen, or has happened

Warning
: Indicates something needs attention, or carries a low-risk

Danger
: Indicates something negative, dangerous, or with a high-risk, will happen, or has happened

Info
: Indicates something neutral, or informative
{: .dl-bsk }

You should ensure contextual colours are not the only means
 [context is conveyed to ensure those using assistive technologies are not excluded]({{ '/start/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-warning }

There are accompanying
[standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}){: .alert-link }
which can be used alongside these classes.
{: .alert .alert-info }

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

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-success"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Success</li>
        <li><code>$context-success</code></li>
        <li class="bsk-docs-hex-reference">#5cb85c</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-warning"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Warning</li>
        <li><code>$context-warning</code></li>
        <li class="bsk-docs-hex-reference">#f0ad4e</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-danger"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Danger</li>
        <li><code>$context-danger</code></li>
        <li class="bsk-docs-hex-reference">#d9534f</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-info"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Info</li>
        <li><code>$context-info</code></li>
        <li class="bsk-docs-hex-reference">#5bc0de</li>
      </ul>
    </div>
  </div>
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-success-text"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Success (text)</li>
        <li><code>$state-success-text</code></li>
        <li class="bsk-docs-hex-reference">#3c763d</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-warning-text"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Warning (text)</li>
        <li><code>$state-warning-text</code></li>
        <li class="bsk-docs-hex-reference">#8a6d3b</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-danger-text"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Danger (text)</li>
        <li><code>$state-danger-text</code></li>
        <li class="bsk-docs-hex-reference">#a94442</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-info-text"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Info (text)</li>
        <li><code>$state-info-text</code></li>
        <li class="bsk-docs-hex-reference">#31708f</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Standard contextual background colours"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-conventional-colours' | prepend: site.baseurl }}) can be
used as the background of an element using these classes:

| Standard Context | Background Contextual Class |
| ---------------- | --------------------------- |
| Success          | `.bg-success`               |
| Warning          | `.bg-warning`               |
| Danger           | `.bg-danger`                |
| Info             | `.bg-info`                  |
{: .table .table-responsive }

**Heads up!** Contextual colours are not yet fully styled, but will be in the next version of the Style Kit.
{: .alert .alert-info }

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-success-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Success (background)</li>
        <li><code>$state-success-bg</code></li>
        <li class="bsk-docs-hex-reference">#dff0d8</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-warning-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Warning (background)</li>
        <li><code>$state-warning-bg</code></li>
        <li class="bsk-docs-hex-reference">#fcf8e3</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-danger-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Danger (background)</li>
        <li><code>$state-danger-bg</code></li>
        <li class="bsk-docs-hex-reference">#f2dede</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-context-info-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Info (background)</li>
        <li><code>$state-info-bg</code></li>
        <li class="bsk-docs-hex-reference">#d9edf7</li>
      </ul>
    </div>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="External service colours"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

By convention, and often recommendation by the relevant service, the Style Kit uses these colours for various external
services.

These colours can be used with components such as:

* [social media]({{ '/components/social-media' | prepend: site.baseurl }})

<div class="bsk-docs-swatch-wrapper">
  <div class="row">
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-twitter-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Twitter</li>
        <li><code>$brands-twitter-primary</code></li>
        <li class="bsk-docs-hex-reference">#55ACEE</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-facebook-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>Facebook</li>
        <li><code>$brands-facebook-primary</code></li>
        <li class="bsk-docs-hex-reference">#3B5998</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-youtube-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>YouTube</li>
        <li><code>$brands-youtube-primary</code></li>
        <li class="bsk-docs-hex-reference">#CD201F</li>
      </ul>
    </div>
    <div class="col-md-2">
      <div class="bsk-docs-swatch-colour bsk-docs-swatch-external-service-rss-background"></div>
      <ul class="list-unstyled text-center bsk-docs-swatch-details">
        <li>RSS</li>
        <li><code>$brands-rss-primary</code></li>
        <li class="bsk-docs-hex-reference">#F26522</li>
      </ul>
    </div>
  </div>
</div>
