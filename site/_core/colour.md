---
title: Colour
sections:
  -
    title: Colour contrast
  -
    title: Page background
  -
    title: Typography
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Colour contrast
{: #{{ 'Colour contrast' | slugify }} }

If you change any of these colours, or use them for other purposes, ensure this complies with the
[recommended minimum colour contrast]({{ '/start/standards-accessibility/#colour-contrast' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-warning }

## Page background
{: #{{ 'Page background' | slugify }} }

A default background colour is applied to the `<body>` element.

<ul class="list-inline bsk-docs-swatch-list">
  <li class="bsk-docs-swatch">
    <div class="bsk-docs-swatch-colour bsk-docs-swatch-page-background"></div>
    <ul class="list-unstyled text-center bsk-docs-swatch-details">
      <li><code>$page-background</code></li>
      <li class="text-muted">#FFFFFF</li>
    </ul>
  </li>
</ul>

## Typography
{: #{{ 'Typography' | slugify }} }

A default text colour is applied to the `<body>` element, which is inherited by headings and paragraphs for example.

<ul class="list-inline bsk-docs-swatch-list">
  <li class="bsk-docs-swatch">
    <div class="bsk-docs-swatch-colour bsk-docs-swatch-text-colour"></div>
    <ul class="list-unstyled text-center bsk-docs-swatch-details">
      <li><code>$page-text</code></li>
      <li class="text-muted">#333333</li>
    </ul>
  </li>
</ul>
