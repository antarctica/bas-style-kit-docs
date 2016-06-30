---
sort_index: 3
title: Standards and Accessibility
sections:
  -
    title: HTML5
  -
    title: CSS3
  -
    title: Responsiveness and Mobile First
  -
    title: Colour contrast
  -
    title: Providing context
  -
    title: Browser support
---

As a government research institute, BAS has a responsibility to make its content available to as many people as
possible.
{: .lead }

This is best achieved by properly structuring content and following industry best practices. This ensures our
content is readable by those with accessibility requirements, such as screen readers, and by search engines.

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## HTML5
{: #{{ 'HTML5' | slugify }} }

{% include snippets/back-to-top.html %}

The BAS Style Kit is designed to work with the [HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)
document type.

This is latest version of the HTML standard, supported by all major browsers, and includes new elements,
attributes and technologies to provide better accessibility and enable new uses such as desktop like web applications.

Whilst the use of this document type is technically optional, no support is offered for other doc types.
{: .alert .alert-warning }

## CSS3
{: #{{ 'CSS3' | slugify }} }

{% include snippets/back-to-top.html %}

As with HTML5, [CSS3](https://developer.mozilla.org/en/docs/Web/CSS/CSS3) is the latest evolution of the CSS standard
for styling websites and applications, and is used extensively in the Style Kit.

It is supported by all major browsers, and includes new layout options, such as
[flexbox](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout), as well as new properties
for [rounded corners](https://developer.mozilla.org/en/docs/Web/CSS/border-radius) and
[animations](https://developer.mozilla.org/en/docs/Web/CSS/animation) for example.

## Responsiveness and 'Mobile First'
{: #{{ 'Responsiveness and Mobile First' | slugify }} }

{% include snippets/back-to-top.html %}

The Style Kit uses the [mobile first](https://developer.mozilla.org/en-US/Apps/Progressive/Responsive/Mobile_first)
design, which assumes pages will be viewed at the smallest possible size (i.e. on mobile phones) and then scales up,
progressively, to larger sizes. This is also known as
[responsive design](https://developer.mozilla.org/en-US/docs/Web/Guide/Responsive_design).

Examples of how content can change between sizes include:

* increasing the size of fonts and images
* organising content into [grid columns]({{ '/core/grid/' | prepend: site.baseurl }}) to make better use of space
* minimising or hiding navigation menus at smaller sizes

Responsiveness is enabled in the Style Kit using the *viewport* meta tag, as shown below:

{% highlight html %}
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
{% endhighlight %}

If you use the [examples]({{ '/examples' | prepend: site.baseurl }}){: .alert-link } from this website, this meta tag
will be included.
{: .alert .alert-info }

See the [responsive breakpoints]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}) section for more
information.

## Colour contrast
{: #{{ 'Colour contrast' | slugify }} }

{% include snippets/back-to-top.html %}

The colour contrast for text and any interactive elements **should** be at least *4:5:1*, as recommended by GDS and the
[W3C](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html).

## Providing context
{: #{{ 'Providing context' | slugify }} }

### Conveying context without colours or icons
{: #{{ 'Conveying context without colours or icons' | slugify }} }

{% include snippets/back-to-top.html %}

Relying on colour or icons alone to indicate the meaning or context of an action or notice is bad practice. This
information cannot is inaccessible to colour-blind users for example, or those using assistive technologies – such as
screen readers.

Instead, efforts should be made to ensure that the context is either obvious from the content itself, or is included in
an alternative form, such as with the `.sr-only` class.

Ideally [contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) and
[icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) should only be needed for reinforcing
meaning that is already present in text or other markup.

### Link context and roles
{: #{{ 'Link context and roles' | slugify }} }

{% include snippets/back-to-top.html %}

Where a link (<code>&lt;a&gt;</code>) element is used as a button to trigger in-page functionality, such as collapsing
content, make sure to add `role="button"` to provide suitable context to assistive technologies.

Where a button (whether an actual button or a link element styled as such) uses the `.active` state, add
`aria-pressed="true"` as well to convey this context to assistive technologies.

### Contextual help text
{: #{{ 'Contextual help text' | slugify }} }

{% include snippets/back-to-top.html %}

Where text is used to explain something on screen, for example a form field or the result of a calculation, an explicit
link should be made between this text and the element.

Visual readers will be able to infer a link using visual cues (such as placement next to the relevant element), however
for those using assistive technologies such as screen readers, an accessible equivalent should be provided.

For help text which is applicable to all users, the `aria-describedby` attribute is usually enough. For situations
where extra guidance may be needed, such as to explain the way in which items are arranged, the `.sr-only` class can be
used as well.

See the [form help text]({{ '/core/forms/#help-text' | prepend: site.baseurl }}) section for an example.

### Validation states
{: #{{ 'Validation states' | slugify }} }

{% include snippets/back-to-top.html %}

When displaying validation information, usually in the context of a user filling out a form, care should be taken not
to rely on
[colours or icons only]({{ '/core/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }})
to provide context.

Stating clearly the reason for a validation failure or warning, in addition to contextual colours and icons where these
can be seen, is the recommended way to display validation information.

Where possible, validation feedback should include how the user can correct their mistake, for example by enumerating
valid options, where there are a limited number.

For forms, where a form field is invalid, the `aria-invalid` attribute should be equal to `true`.

See the [form validation]({{ '/core/forms/#validation' | prepend: site.baseurl }}) section for an example.

## Browser support
{: #{{ 'Browser support' | slugify }} }

{% include snippets/back-to-top.html %}

In general, the BAS Style Kit aims to support all browsers supported by Bootstrap.

This means the latest, stable, releases of all major browsers (subject to the caveats below) are supported.

**Internet Explorer:**

**Heads up!** Support for Internet Explorer 8 will be removed in the next major Style Kit release.
{: .alert .alert-danger }

See the Bootstrap documentation on [browser support](http://getbootstrap.com/getting-started/#support)
for more detailed information.
