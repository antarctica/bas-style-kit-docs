---
title: Typography
menus:
  primary_core:
    weight: 14
sections:
  -
    title: Typographic base
  -
    title: Font families
  -
    title: Headings
  -
    title: Paragraphs
  -
    title: Lead paragraphs
  -
    title: Links
  -
    title: Inline elements
  -
    title: Abbreviations
  -
    title: Blockquotes
  -
    title: Addresses
  -
    title: Horizontal rule
  -
    title: Primary text
  -
    title: Experimental text
  -
    title: Contextual colours
  -
    title: Alignment
  -
    title: Transformations
---

{% capture alert_content %}
The table of contents for this page will appear broken as it includes headings used in examples.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Typographic base"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

These styles are applied globally, and are usually inherited by other styles, to give a consistent typographic base.

* a default font size, `$font-size-base`, is set to `16px`
* a default line height, `$line-height-base`, is set to `1.429`
* a default font family, which applies to most elements, is set to `"Open Sans", "Helvetica Neue", Helvetica, Arial,
sans-serif`

{% include topic-section-metadata.html
  title="Font families"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Three font families are used in the BAS Style Kit, for distinct purposes:

* a default, sans-serif, font family is used as a catch-all including paragraph text, buttons, etc.
* a *brand*, sans-serif, font family is used for high impact areas, such as headings, to match BAS logo font face
* a monotype, sans-serif, font family is used for distinguishing code from normal text

For each family, a series of fall-back fonts are defined where the primary fonts cannot be loaded.

| Font Family | Primary Font | Fall-back Fonts                                  |
| ----------- | ------------ | ------------------------------------------------ |
| Default     | Open Sans    | "Helvetica Neue", Helvetica, Arial, *sans-serif* |
| Brand       | Gill Sans    | "Helvetica Neue", Helvetica, Arial, *sans-serif* |
| Monotype    | Menlo        | Monaco, Consolas, "Courier New", *monospace*     |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
Fall-back fonts shown in *italics* will depend on the browser and operating system used.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

For each family, a series of variants are defined for styles such as italics and bold.

| Font Family         | Variant | Font Weight | Sample                                                                             |
| ------------------- | ------- | ----------- | ---------------------------------------------------------------------------------- |
| Default (Open Sans) | Regular | Light (300) | <span>Open Sans regular light</span>{: .bsk-docs-font-sample-open-sans-light }     |
| Default (Open Sans) | Italics | Light (300) | *Open Sans italics light*{: .bsk-docs-font-sample-open-sans-light }                |
| Default (Open Sans) | Regular | Regular     | <span>Open Sans regular regular</span>{: .bsk-docs-font-sample-open-sans-regular } |
| Default (Open Sans) | Italics | Regular     | *Open Sans italics regular*{: .bsk-docs-font-sample-open-sans-regular }            |
| Default (Open Sans) | Regular | Bold        | **Open Sans regular bold**{: .bsk-docs-font-sample-open-sans-bold }                |
| Default (Open Sans) | Italics | Bold        | ***Open Sans italics bold***{: .bsk-docs-font-sample-open-sans-bold }              |
| Brand (Gill Sans)   | Regular | Light (100) | <span>Gill Sans regular light</span>{: .bsk-docs-font-sample-gill-sans-light }     |
| Brand (Gill Sans)   | Italics | Light (100) | *Gill Sans italics light*{: .bsk-docs-font-sample-gill-sans-light }                |
| Brand (Gill Sans)   | Regular | Book (200)  | <span>Gill Sans regular book</span>{: .bsk-docs-font-sample-gill-sans-book }       |
| Brand (Gill Sans)   | Italics | Book (200)  | *Gill Sans italics book*{: .bsk-docs-font-sample-gill-sans-book }                  |
| Brand (Gill Sans)   | Regular | Roman (300) | <span>Gill Sans regular roman</span>{: .bsk-docs-font-sample-gill-sans-roman }     |
| Brand (Gill Sans)   | Italics | Roman (300) | *Gill Sans italics roman*{: .bsk-docs-font-sample-gill-sans-roman }                |
| Monotype (Menlo)    | Regular | Regular     | <span>Menlo regular regular</span>{: .bsk-docs-font-sample-menlo-regular }         |
{: .bsk-table .bsk-table-responsive }

{% include topic-section-metadata.html
  title="BAS brand font"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The BAS *brand* font, Gill Sans, is the BAS official font. It is included in the BAS Style Kit to integrate the font
into official BAS websites and applications, in high impact areas such as headings and top-level navigation.

<div class="bsk-alert bsk-alert-solid bsk-alert-warning bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="fa fa-fw fa-exclamation-triangle bsk-alert-icon"></i>
      Gill Sans is a licensed work and may not be used without a license
    </div>
  </header>
  <p>BAS has a license to use this font its official websites and applications. This license
  <strong>does not cover</strong> non-BAS projects, including personal projects of BAS Staff.</p>
</div>

{% capture alert_content %}
Contact the [Web & Applications Team](mailto:servicedesk@bas.ac.uk){: .bsk-alert-link } if you are unsure whether a
website or application can use the BAS license.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

The brand font is applied to these elements:

| Element/Component                                                | Selector                                                                       | Font Variant    | Modifications     |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------ | --------------- | ----------------- |
| [Footer]({{ '/components/footer/' | prepend: site.baseurl }})    | `.bsk-footer-bsk`                                                              | Gill Sans Light | Base font + `1px` |
| [Navbar]({{ '/components/navar/' | prepend: site.baseurl }})     | `.bsk-navbar-bsk`                                                              | Gill Sans Book  | Base font + `1px` |
| [Header]({{ '/components/header/' | prepend: site.baseurl }})    | `.bsk-header-bsk`                                                              | Gill Sans Book  | Base font + `1px` |
| [Headings]({{ '/core/type/#headings' | prepend: site.baseurl }}) | `h1, h2, h3, h4, h5, h6, .bsk-h1, .bsk-h2, .bsk-h3, .bsk-h4, .bsk-h5, .bsk-h6` | Gill Sans Book  | *N/A*             |
{: .bsk-table .bsk-table-responsive }

{% include topic-section-metadata.html
  title="Headings"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% capture alert_content %}
In addition to heading elements, you can also use `.bsk-h1` - `.bsk-h6` classes for styling other elements as headings.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<h1>Heading 1</h1>
De carne animata corpora quaeritis.
<h2>Heading 2</h2>
De carne animata corpora quaeritis.
<h3>Heading 3</h3>
De carne animata corpora quaeritis.
<h4>Heading 4</h4>
De carne animata corpora quaeritis.
<h5>Heading 5</h5>
De carne animata corpora quaeritis.
<h6>Heading 6</h6>
De carne animata corpora quaeritis.
{% endexample %}

{% include topic-section-metadata.html
  title="Secondary header text"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `&lt;small&gt;` element or the `.bsk-small` class for adding secondary text to any header.

{% example html %}
<div class="bsk-h1">Heading 1 <small>secondary text</small></div>
De carne animata corpora quaeritis.
<div class="bsk-h2">Heading 2 <small>secondary text</small></div>
De carne animata corpora quaeritis.
<div class="bsk-h3">Heading 3 <small>secondary text</small></div>
De carne animata corpora quaeritis.
<div class="bsk-h4">Heading 4 <small>secondary text</small></div>
De carne animata corpora quaeritis.
<div class="bsk-h5">Heading 5 <small>secondary text</small></div>
De carne animata corpora quaeritis.
<div class="bsk-h6">Heading 6 <small>secondary text</small></div>
De carne animata corpora quaeritis.
{% endexample %}

{% capture alert_content %}
This example uses header classes instead of elements to avoid issues with the automatic table of contents.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Paragraphs"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Paragraphs receive a bottom margin of half their computed line-height (10px by default).

{% example html %}
<p>The British Antarctic Survey (BAS) is an international leader in Antarctic science that is relevant to global problems.
We deliver science that is excellent, exciting, and innovative. We also provide world-leading research infrastructure
that enables scientists from the UK, and colleagues from many nations, to work safely and effectively in the polar
regions.</p>
{% endexample %}

{% include topic-section-metadata.html
  title="Lead paragraphs"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<p class="bsk-lead">The British Antarctic Survey (BAS) is an international leader in Antarctic science that is relevant to
global problems.</p>
<p>We deliver science that is excellent, exciting, and innovative. We also provide world-leading research infrastructure
that enables scientists from the UK, and colleagues from many nations, to work safely and effectively in the polar
regions.</p>
{% endexample %}

{% include topic-section-metadata.html
  title="Links"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

These styles are applied globally, and are usually inherited by other styles, to give a consistent link style.

* a [default link colour]({{ '/core/colours/#typography' | prepend: site.baseurl }}), `$link-color`, is set
* an underline is applied on hover

{% include topic-section-metadata.html
  title="Inline text elements"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<p>Use the <code>&lt;mark&gt;</code> tag for <mark>highlighting text</mark>.</p>
<p>Use the <code>&lt;del&gt;</code> tag for <del>deleted text</del>.</p>
<p>Use the <code>&lt;s&gt;</code> tag for <s>text which is no longer accurate</s>.</p>
<p>Use the <code>&lt;ins&gt;</code> tag for <ins>additional, or inserted, text</ins>.</p>
<p>Use the <code>&lt;b&gt;</code> tag for <b>highlighting text without denoting additional importance</b>.</p>
<p>Use the <code>&lt;i&gt;</code> tag for <i>technical terms</i>.</p>
<p>Use the <code>&lt;small&gt;</code> tag for <small>text with less importance</small>.</p>
<p>Use the <code>&lt;u&gt;</code> tag for <u>underlined text</u>.</p>
<p>Use the <code>&lt;strong&gt;</code> tag for <strong>emboldened text</strong>.</p>
<p>Use the <code>&lt;em&gt;</code> tag for <em>italicised text</em>.</p>
{% endexample %}

{% capture alert_content %}
The <code>&lt;i&gt;</code> tag is also recommended for icons.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Abbreviations"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use to explain/expand abbreviations and acronyms. Additional styles will be applied where a `title` attribute is used.

{% example html %}
<abbr title="British Antarctic Survey">BAS</abbr> is an international leader in Antarctic science that is relevant to
global problems.
{% endexample %}

{% include topic-section-metadata.html
  title="Blockquotes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use for quotes, or highlighting portions of an article (pull-quotes).

{% example html %}
<blockquote>
  <p>I am truly honoured by this naming decision and hope that everyone who suggested a name will feel just as inspired
  to follow the ship’s progress as it explores our polar regions. I have been privileged to explore the world’s deepest
  oceans alongside amazing teams of researchers, and with this new polar research ship they will be able to go further
  and discover more than ever before.</p>
</blockquote>
{% endexample %}

{% include topic-section-metadata.html
  title="Blockquotes with a source"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use a <code>&lt;cite&gt;</code> wrapped in a <code>&lt;footer&gt;</code> to add source to a blockquote.

{% example html %}
<blockquote>
  <p>I am truly honoured by this naming decision and hope that everyone who suggested a name will feel just as inspired
  to follow the ship’s progress as it explores our polar regions. I have been privileged to explore the world’s deepest
  oceans alongside amazing teams of researchers, and with this new polar research ship they will be able to go further
  and discover more than ever before.</p>
  <footer>Sir David Attenborough on the naming of the new BAS research ship, from  <cite title="BAS press release">
  <a href="https://www.bas.ac.uk/media-post/uks-200m-polar-research-ship-named-in-honour-of-sir-david-attenborough/">
  BAS press release</a></cite>.</footer>
</blockquote>
{% endexample %}

{% include topic-section-metadata.html
  title="Reversed blockquotes"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Blockquotes can be aligned right using `.bsk-blockquote-reverse`.

{% example html %}
<blockquote class="bsk-blockquote-reverse">
  <p>I am truly honoured by this naming decision and hope that everyone who suggested a name will feel just as inspired
  to follow the ship’s progress as it explores our polar regions. I have been privileged to explore the world’s deepest
  oceans alongside amazing teams of researchers, and with this new polar research ship they will be able to go further
  and discover more than ever before.</p>
  <footer>Sir David Attenborough on the naming of the new BAS research ship, from  <cite title="BAS press release">
  <a href="https://www.bas.ac.uk/media-post/uks-200m-polar-research-ship-named-in-honour-of-sir-david-attenborough/">
  BAS press release</a></cite>.</footer>
</blockquote>
{% endexample %}

{% include topic-section-metadata.html
  title="Addresses"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Provides formatting for addresses or contact information. Use <code>&lt;br&gt;</code> elements to preserve structure.

{% example html %}
<address>
  <strong>British Antarctic Survey</strong><br>
  High Cross, Madingley Road<br>
  Cambridge<br>
  CB3 0ET<br>
  United Kingdom<br>
  <i class="fa fa-fw fa-phone" aria-hidden="true"></i> <abbr title="Telephone">Tel:</abbr> +44 (0)1223 221400<br>
  <i class="fa fa-fw fa-fax" aria-hidden="true"></i> <abbr title="Facsimile">Fax:</abbr> +44 (0)1223 362616<br>
  <i class="fa fa-fw fa-globe" aria-hidden="true"></i> <abbr title="Website">Web:</abbr> <a href="https://www.bas.ac.uk">www.bas.ac.uk</a>
</address>

<address>
  <strong>Connie Watson</strong><br>
  Atmospheric Chemist<br>
  <i class="fa fa-fw fa-envelope" aria-hidden="true"></i> <abbr title="Email address">Email:</abbr> <a href="mailto:#">conwat@bas.com</a>
</address>
{% endexample %}

{% include topic-section-metadata.html
  title="Horizontal rule"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.4.0"
  included="yes"
%}

Use to separate content. Add the `.bsk-hr-dashed` class for an alternative style.

{% example html %}
<hr/>
{% endexample %}

{% example html %}
<hr class="bsk-hr-dashed" />
{% endexample %}

{% include topic-section-metadata.html
  title="Primary text"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<p class="bsk-text-primary">De carne animata corpora quaeritis.</p>
{% endexample %}

{% include topic-section-metadata.html
  title="Experimental text"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<p class="bsk-text-experimental">De carne animata corpora quaeritis.</p>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual colours"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used to apply context to text using these classes:

| Standard Context | Text Contextual Class     |
| ---------------- | ------------------------- |
| Success          | `.bsk-text-success`       |
| Warning          | `.bsk-text-warning`       |
| Danger           | `.bsk-text-danger`        |
| Info             | `.bsk-text-info`          |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
In some edge cases these styles will be overridden by other styles, wrapping text in a <code>&lt;span&gt;</code>
should fix this.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<p class="bsk-text-success">De carne animata corpora quaeritis.</p>
<p class="bsk-text-warning">De carne animata corpora quaeritis.</p>
<p class="bsk-text-danger">De carne animata corpora quaeritis.</p>
<p class="bsk-text-info">De carne animata corpora quaeritis.</p>
{% endexample %}

{% include topic-section-metadata.html
  title="Alignment"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<p class="bsk-text-left">De carne animata corpora quaeritis.</p>
<p class="bsk-text-center">De carne animata corpora quaeritis.</p>
<p class="bsk-text-right">De carne animata corpora quaeritis.</p>
<p class="bsk-text-justify">De carne animata corpora quaeritis.</p>
<p class="bsk-text-nowrap">De carne animata corpora quaeritis.</p>
{% endexample %}

{% include topic-section-metadata.html
  title="Transformations"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<p class="bsk-text-lowercase">De carne animata corpora quaeritis.</p>
<p class="bsk-text-uppercase">De carne animata corpora quaeritis.</p>
<p class="bsk-text-capitalize">De carne animata corpora quaeritis.</p>
{% endexample %}
