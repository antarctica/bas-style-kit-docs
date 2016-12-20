---
title: Typography
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
    title: Lists
  -
    title: Definition lists
  -
    title: Contextual colours
  -
    title: Alignment
  -
    title: Transformations
---

{% include snippets/table-of-contents.md %}

## Typographic base
{: #{{ 'Typographic base' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

These styles are applied globally, and are usually inherited by other styles, to give a consistent typographic base.

* a default font size, `$font-size-base`, is set to `14px`
* a default line height, `$line-height-base`, is set to `1.429`
* a default font family, which applies to most elements, is set to `"Open Sans", "Helvetica Neue", Helvetica, Arial,
sans-serif`

## Font families
{: #{{ 'Font families' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Three font families are used in the BAS Style Kit, for distinct purposes:

* a default, sans-serif, font family is used as a catch-all including paragraph text, buttons, etc.
* a *brand*, sans-serif, font family is used for high impact areas, such as headings, to match BAS logo font face
* a monotype, sans-serif, font family is used for distinguishing code from normal text

For each family, a series of fall-back fonts are defined where the primary fonts cannot be loaded.

| Font Family | Primary Font | Fall-back Fonts                                  |
| ----------- | ------------ | ------------------------------------------------ |
| Default     | Open Sans    | "Helvetica Neue", Helvetica, Arial, *sans-serif* |
| Brand       | Gill Sans    | "Helvetica Neue", Helvetica, Arial, *sans-serif* |
| Monotype    | Menlo        | Monaco, Consolas, Courier New, *monospace*       |
{: .table }

Fall-back fonts shown in *italics* will depend on the browser and operating system used.
{: .alert .alert-info }

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
{: .table }

### BAS brand font
{: #{{ 'BAS brand font' | slugify }} }

{% include snippets/back-to-top.html %}

The BAS *brand* font, Gill Sans, is the BAS official font. It is included in the BAS Style Kit to integrate the font
into official BAS websites and applications, in high impact areas such as headings and top-level navigation.

**Gill Sans is a licensed work and may not be used without a license.** <br /> BAS has a license to use this font its
official websites and applications. This license **does not cover** non-BAS projects, including personal projects of
BAS Staff.
{: .alert .alert-warning }

If you are unsure whether a website or application can use the BAS license, contact the
[Web & Applications Team](mailto:webapps@bas.ac.uk){: .alert-link }.
{: .alert .alert-info }

The brand font is applied to these elements:

| Element/Component                                                | Selector                                               | Font Variant    | Modifications     |
| ---------------------------------------------------------------- | ------------------------------------------------------ | --------------- | ----------------- |
| [Footer]({{ '/components/footer/' | prepend: site.baseurl }})    | `.footer-bsk`                                          | Gill Sans Light | Base font + `1px` |
| [Navbar]({{ '/components/navar/' | prepend: site.baseurl }})     | `.navbar-bsk`                                          | Gill Sans Book  | Base font + `1px` |
| [Header]({{ '/components/header/' | prepend: site.baseurl }})    | `.header-bsk`                                          | Gill Sans Book  | Base font + `1px` |
| [Headings]({{ '/core/type/#headings' | prepend: site.baseurl }}) | `h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6` | Gill Sans Book  | *N/A*             |
{: .table }

## Headings
{: #{{ 'Headings' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

In addition to heading elements, you can also use `.h1` - `.h6` classes for styling other elements as headings.
{: .alert .alert-info }

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

### Secondary header text
{: #{{ 'Secondary header text' | slugify }} }

{% include snippets/back-to-top.html %}

Use the &lt;small&gt; element or the `.small` class for adding secondary text to any header.

{% example html %}
<h1>Heading 1 <small>secondary text</small></h1>
De carne animata corpora quaeritis.
<h2>Heading 2 <small>secondary text</small></h2>
De carne animata corpora quaeritis.
<h3>Heading 3 <small>secondary text</small></h3>
De carne animata corpora quaeritis.
<h4>Heading 4 <small>secondary text</small></h4>
De carne animata corpora quaeritis.
<h5>Heading 5 <small>secondary text</small></h5>
De carne animata corpora quaeritis.
<h6>Heading 6 <small>secondary text</small></h6>
De carne animata corpora quaeritis.
{% endexample %}

## Paragraphs
{: #{{ 'Paragraphs' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Paragraphs receive a bottom margin of half their computed line-height (10px by default).

{% example html %}
<p>The British Antarctic Survey (BAS) is an international leader in Antarctic science that is relevant to global problems.
We deliver science that is excellent, exciting, and innovative. We also provide world-leading research infrastructure
that enables scientists from the UK, and colleagues from many nations, to work safely and effectively in the polar
regions.</p>
{% endexample %}

### Lead paragraphs
{: #{{ 'Secondary header text' | slugify }} }

{% include snippets/back-to-top.html %}

{% example html %}
<p class="lead">The British Antarctic Survey (BAS) is an international leader in Antarctic science that is relevant to
global problems.</p>
<p>We deliver science that is excellent, exciting, and innovative. We also provide world-leading research infrastructure
that enables scientists from the UK, and colleagues from many nations, to work safely and effectively in the polar
regions.</p>
{% endexample %}

## Links
{: #{{ 'Links' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

These styles are applied globally, and are usually inherited by other styles, to give a consistent link style.

* a [default link colour]({{ '/core/colours/#typography' | prepend: site.baseurl }}), `$link-color`, is set
* an underline is applied on hover

## Inline text elements
{: #{{ 'Inline elements' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

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

The <code>&lt;i&gt;</code> tag is also recommended for icons.
{: .alert .alert-info }

## Abbreviations
{: #{{ 'Abbreviations' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use to explain/expand abbreviations and acronyms. Additional styles will be applied where a `title` attribute is used.

{% example html %}
<abbr title="British Antarctic Survey">BAS</abbr> is an international leader in Antarctic science that is relevant to
global problems.
{% endexample %}

## Blockquotes
{: #{{ 'Blockquotes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use for quotes, or highlighting portions of an article (pull-quotes).

{% example html %}
<blockquote>
  <p>I am truly honoured by this naming decision and hope that everyone who suggested a name will feel just as inspired
  to follow the ship’s progress as it explores our polar regions. I have been privileged to explore the world’s deepest
  oceans alongside amazing teams of researchers, and with this new polar research ship they will be able to go further
  and discover more than ever before.</p>
</blockquote>
{% endexample %}

### Blockquotes with a source
{: #{{ 'Blockquotes with a source' | slugify }} }

{% include snippets/back-to-top.html %}

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

### Reversed blockquotes
{: #{{ 'Reversed blockquotes' | slugify }} }

{% include snippets/back-to-top.html %}

Blockquotes can be aligned right using `.blockquote-reverse`.

{% example html %}
<blockquote class="blockquote-reverse">
  <p>I am truly honoured by this naming decision and hope that everyone who suggested a name will feel just as inspired
  to follow the ship’s progress as it explores our polar regions. I have been privileged to explore the world’s deepest
  oceans alongside amazing teams of researchers, and with this new polar research ship they will be able to go further
  and discover more than ever before.</p>
  <footer>Sir David Attenborough on the naming of the new BAS research ship, from  <cite title="BAS press release">
  <a href="https://www.bas.ac.uk/media-post/uks-200m-polar-research-ship-named-in-honour-of-sir-david-attenborough/">
  BAS press release</a></cite>.</footer>
</blockquote>
{% endexample %}

## Addresses
{: #{{ 'Addresses' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

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
  <strong>Alex Tate</strong><br>
  Head of Information Services<br>
  <i class="fa fa-fw fa-envelope" aria-hidden="true"></i> <abbr title="Email address">Email:</abbr> <a href="mailto:#">ajtate@bas.com</a>
</address>
{% endexample %}

## Lists
{: #{{ 'Lists' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

### Unordered lists
{: #{{ 'Unordered lists' | slugify }} }

{% include snippets/back-to-top.html %}

{% example html %}
<ul>
  <li>High Frequency (HF) &mdash; Field radios</li>
  <li>VHF Radio (marine band - FM) &mdash; Base station and handheld mobile units</li>
  <li>VHF Radio (aeronautical band - AM) &mdash; Base station and handheld mobile units</li>
  <li>Iridium satellite system &mdash; Base station and handheld mobile units</li>
  <li>Very Small Aperture Terminal (VSAT) Satellite system (main communication system)</li>
  <li>Voice over IP (VoIP) Telephone system</li>
</ul>
{% endexample %}

### Ordered lists
{: #{{ 'Ordered lists' | slugify }} }

{% include snippets/back-to-top.html %}

{% example html %}
<ol>
  <li>check eligibility and requirements</li>
  <li>submit a Preliminary request for Antarctic logistic support</li>
  <li>submit a funding proposal - Deadline <strong>19th July 2016 16:00 BST</strong></li>
</ol>
{% endexample %}

### Unstyled lists
{: #{{ 'Unstyled lists' | slugify }} }

{% include snippets/back-to-top.html %}

Removes the default `list-style` and margin left margin. Useful for things which semantically are lists, but shouldn't
be styled as such.

**This only applies to immediate list items.** I.e. this style won't be used by any nested lists.

{% example html %}
<ul class="list-unstyled">
  <li>unstyled list item</li>
  <li>unstyled list item</li>
  <li>
    <ol>
      <li>not an unstyled ordered list item</li>
      <li>not an unstyled ordered list item</li>
    </ol>
  </li>
  <li>
    <ul>
      <li>not an unstyled unordered list item</li>
      <li>not an unstyled unordered list item</li>
    </ul>
  </li>
</ul>

<ul class="list-unstyled">
  <li>2012 &mdash; Present: Head of Information Services (Band 4), BAS</li>
  <li>2006 &mdash; 2012: Senior Geoscience Data Manager (Band 5), BAS</li>
  <li>2002 &mdash; 2006: Geology Data Manager (Band 6), BAS</li>
</ul>
{% endexample %}

### Inline lists
{: #{{ 'Inline lists' | slugify }} }

{% include snippets/back-to-top.html %}

Place all list items on a single line, with a margin between.

{% example html %}
<ul class="list-inline">
  <li>Information Services</li>
  <li>Polar Data Centre</li>
</ul>
{% endexample %}

## Definition lists
{: #{{ 'Definition lists' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

A list of terms with associated definitions.

{% example html %}
<dl>
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

### Horizontal definition list
{: #{{ 'Horizontal definition lists' | slugify }} }

{% include snippets/back-to-top.html %}

Add `.dl-horizontal` to show terms and definitions side-by-side (or stacked at smaller sizes).

Terms which are too long will be truncated.
{: .alert .alert-info }

{% example html %}
<dl class="dl-horizontal">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

### Large definition list
{: #{{ 'Large definition lists' | slugify }} }

{% include snippets/back-to-top.html %}

Add `.dl-bsk` to apply additional padding.

**Heads up!** This class will be renamed `.dl-bsk-lg` in the next version of the Style Kit. See
{% jira issue="BSK-128" %} for more information.
{: .alert .alert-info }

{% example html %}
<dl class="dl-bsk">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

### Large horizontal definition list
{: #{{ 'Large definition lists' | slugify }} }

{% include snippets/back-to-top.html %}

Add `.dl-bsk-horizontal-lg` to extend the width of terms in horizontal definition lists.

This class depends on using `.dl-horizontal` as well.
{: .alert .alert-warning }

{% example html %}
<dl class="dl-horizontal dl-bsk-horizontal-lg">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

### Striped definition list
{: #{{ 'Striped definition lists' | slugify }} }

{% include snippets/back-to-top.html %}

Add `.dl-bsk-striped` to apply additional styling to terms.

This class is designed to be used with `.dl-bsk` to ensure a suitable amount of padding.
{: .alert .alert-info}

{% example html %}
<dl class="dl-bsk dl-bsk-striped">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

### Striped horizontal definition list
{: #{{ 'Striped horizontal definition lists' | slugify }} }

{% include snippets/back-to-top.html %}

The `.dl-bsk-striped` class can be combined with `.dl-horizontal`, or `.dl-bsk-horizontal-lg`.

Remember, the `.dl-bsk-striped` class is designed to be used with `.dl-bsk` to ensure a suitable amount of padding.
{: .alert .alert-info}

Remember, the `.dl-bsk-horizontal-lg` class depends on using `.dl-horizontal` as well.
{: .alert .alert-warning }

{% example html %}
<dl class="dl-bsk dl-bsk-striped dl-horizontal">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>

<dl class="dl-bsk dl-bsk-striped dl-horizontal dl-bsk-horizontal-lg">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

## Contextual colours
{: #{{ 'Contextual colours' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used to apply context to text using these classes:

| Standard Context | Text Contextual Class |
| ---------------- | --------------------- |
| Success          | `.text-success`       |
| Warning          | `.text-warning`       |
| Danger           | `.text-danger`        |
| Info             | `.text-info`          |
{: .table }

In some edge cases these styles will be over-ridden by other styles, wrapping text in a <code>&lt;span&gt;</code>
should fix this.
{: .alert .alert-warning }

{% example html %}
<p class="text-success">De carne animata corpora quaeritis.</p>
<p class="text-warning">De carne animata corpora quaeritis.</p>
<p class="text-danger">De carne animata corpora quaeritis.</p>
<p class="text-info">De carne animata corpora quaeritis.</p>
{% endexample %}

## Alignment
{: #{{ 'Alignment' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

**Heads up!** These classes may be removed in the next version of the Style Kit. See
[BSK-129](https://jira.ceh.ac.uk/browse/bsk-129) for more information.
{: .alert .alert-info }

{% example html %}
<p class="text-left">De carne animata corpora quaeritis.</p>
<p class="text-center">De carne animata corpora quaeritis.</p>
<p class="text-right">De carne animata corpora quaeritis.</p>
<p class="text-justify">De carne animata corpora quaeritis.</p>
<p class="text-nowrap">De carne animata corpora quaeritis.</p>
{% endexample %}

## Transformations
{: #{{ 'Transformations' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

**Heads up!** These classes may be removed in the next version of the Style Kit. See
[BSK-129](https://jira.ceh.ac.uk/browse/bsk-129) for more information.
{: .alert .alert-info }

{% example html %}
<p class="text-lowercase">De carne animata corpora quaeritis.</p>
<p class="text-uppercase">De carne animata corpora quaeritis.</p>
<p class="text-capitalize">De carne animata corpora quaeritis.</p>
{% endexample %}
