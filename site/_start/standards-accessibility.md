---
sort_index: 3
title: Standards and Accessibility
menus:
  primary_start:
    weight: 4
sections:
  -
    title: Browser support
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
    title: Skip navigation
  -
    title: Useful resources
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

As a government research institute, BAS has a responsibility to make its content available to as many people as
possible.

This is best achieved by properly structuring content and following industry best practices. This ensures our
content is readable by those with accessibility requirements, such as screen readers, and by search engines.

{% include topic-section-metadata.html
  title="Browser support"
  heading_level=2
%}

In general, the BAS Style Kit aims to support all browsers supported by Bootstrap. This means the latest, stable,
releases of all major browsers (subject to any caveats below) are supported.

{% capture alert_content %}
The Style Kit supports Internet Explorer 11, future support will be limited to Microsoft Edge.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

To reduce compatibility errors with Internet Explorer, the
[X-UA-Compatible](https://docs.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/compatibility/jj676915(v=vs.85))
header should be used to select the latest standards mode.

{% highlight html %}
<meta http-equiv="x-ua-compatible" content="IE=edge">
{% endhighlight %}

{% capture alert_content %}
*Edge* in this context does not relate to the Microsoft *Edge* web browser.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
If you use the [examples]({{ '/examples' | prepend: site.baseurl }}){: .bsk-alert-link } from this documentation, this
meta tag will be included.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="HTML5"
  heading_level=2
%}

The BAS Style Kit is designed to work with the [HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)
document type. This is latest version of the HTML standard, supported by all major browsers, and includes new elements,
attributes and technologies to provide better accessibility and enable new uses such as desktop like web applications.

{% capture alert_content %}
Whilst the use of this document type is technically optional, no support is offered for other doc types.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="CSS3"
  heading_level=2
%}

As with HTML5, [CSS3](https://developer.mozilla.org/en/docs/Web/CSS/CSS3) is the latest evolution of the CSS standard
for styling websites and applications, and is used extensively in the Style Kit.

It is supported by all major browsers, and includes new layout options, such as
[flexbox](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout), as well as new properties
for [rounded corners](https://developer.mozilla.org/en/docs/Web/CSS/border-radius) and
[animations](https://developer.mozilla.org/en/docs/Web/CSS/animation) for example.

{% include topic-section-metadata.html
  title="Responsiveness and Mobile First"
  heading_level=2
%}

The Style Kit uses [mobile first](https://developer.mozilla.org/en-US/Apps/Progressive/Responsive/Mobile_first)
design, which assumes pages will be viewed at the smallest possible size (i.e. on mobile phones) and then scales up,
progressively, to larger sizes. This is also known as
[responsive design](https://developer.mozilla.org/en-US/docs/Web/Guide/Responsive_design).

Examples of how content can change between sizes include:

* increasing the size of fonts and images
* organising content into [grid columns]({{ '/core/grid/' | prepend: site.baseurl }}) to make better use of space
* minimising or hiding navigation menus at smaller sizes

Responsiveness is enabled in the Style Kit using the `viewport` meta tag, as shown below:

{% highlight html %}
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
{% endhighlight %}

{% capture alert_content %}
If you use the [examples]({{ '/examples' | prepend: site.baseurl }}){: .bsk-alert-link } from this documentation, this
meta tag will be included.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

See the [responsive breakpoints]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}) section for more
information.

{% include topic-section-metadata.html
  title="Colour contrast"
  heading_level=2
%}

The colour contrast for text and any interactive elements **should** be at least *4:5:1*, as recommended by GDS and the
[W3C](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html).

{% include topic-section-metadata.html
  title="Providing context"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Conveying context without colours or icons"
  heading_level=3
%}

Relying on colour or icons alone to indicate the meaning or context of an action or notice is bad practice. This
information is inaccessible to colour-blind users for example, or those using assistive technologies – such as
screen readers.

Instead, efforts should be made to ensure that the context is either obvious from the content itself, or is included in
an alternative form, such as with the `.bsk-sr-only` class.

Ideally [contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) and
[icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) should only be needed for reinforcing
meaning that is already present in text or other markup.

{% include topic-section-metadata.html
  title="Link context and roles"
  heading_level=3
%}

Where a link (<code>&lt;a&gt;</code>) element is used as a button to trigger in-page functionality, such as collapsing
content, make sure to add `role="button"` to provide suitable context to assistive technologies.

Where a button (whether an actual button or a link element styled as such) uses the `.bsk-active` state, add
`aria-pressed="true"` as well to convey this context to assistive technologies.

{% include topic-section-metadata.html
  title="Contextual help text"
  heading_level=3
%}

Where text is used to explain something on screen, for example a form field or the result of a calculation, an explicit
link should be made between this text and the element.

Visual readers will be able to infer a link using visual cues (such as placement next to the relevant element), however
for those using assistive technologies such as screen readers, an accessible equivalent should be provided.

For help text which is applicable to all users, the `aria-describedby` attribute is usually enough. For situations
where extra guidance may be needed, such as to explain the way in which items are arranged, the `.sr-only` class can be
used as well.

See the [form help text]({{ '/core/forms/#help-text' | prepend: site.baseurl }}) section for an example.

{% include topic-section-metadata.html
  title="Validation stages"
  heading_level=3
%}

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

{% include topic-section-metadata.html
  title="Skip navigation context and roles"
  heading_level=2
%}

Where a page begins with many navigation links, such as a navbar, a link to skip to page content *should* be included.

This link can be hidden to non-screen readers using the `.sr-only` class, and requires a page structure such as the one
shown below.

{% capture alert_content %}
Due to browser bugs, the target of the skip navigation link **must** set the `tabindex` attribute to `-1` to work
correctly.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
As a side effect of using the `tabindex` workaround recommended above, it is necessary to disable the outline that shows
on interactive elements due to the browser inferring anything with a tab index is also interactive, which is not the case
for elements such as <code>&lt;body&gt;</code>. The Style Kit disables this outline automatically on the
<code>&lt;body&gt;</code> element, this just explains why we do so.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% highlight html %}
<body>
  <a href="#site-content" class="sr-only sr-only-focusable">Skip to main content</a>
  ...
  <div class="container" id="site-content" tabindex="-1">
    <!-- main content -->
  </div>
</body>
{% endhighlight %}

For more information, see [this article](http://a11yproject.com/posts/skip-nav-links/) from the A11Y Project.

{% include topic-section-metadata.html
  title="Useful resources"
  heading_level=2
%}

These resources provide additional general, or specific, guidance:

* [A11Y Style Guide](http://a11y-style-guide.com/style-guide/)
* [Accessibility - Mozilla Developer Network (MDN)](https://developer.mozilla.org/en-US/docs/Web/Accessibility)
* [Accessibility blog - Government Digital Service (GDS)](https://accessibility.blog.gov.uk/)
