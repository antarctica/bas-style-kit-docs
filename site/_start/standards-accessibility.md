---
item_type: Start
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

As a public body, BAS has a responsibility to make its content available to as many people as possible.

{% include topic-section-metadata.html
  title="Browser support"
  heading_level=2
%}

In general, the BAS Style Kit aims to support all browsers supported by Bootstrap. This means the latest, stable,
releases of all major browsers, subject to any caveats below.

To reduce compatibility errors with Internet Explorer, the
[X-UA-Compatible](https://docs.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/compatibility/jj676915(v=vs.85))
header should be used to select the latest standards mode.

{% highlight html %}
<meta http-equiv="x-ua-compatible" content="IE=edge">
{% endhighlight %}

{% capture alert_content %}
**Heads up!** The Style Kit currently supports Internet Explorer 11. In the future it will only support Microsoft Edge.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="HTML5"
  heading_level=2
%}

The BAS Style Kit uses the [HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5) document type. This is
supported by all major browsers and includes elements, attributes and technologies to provide better accessibility and
progressive web applications.

{% include topic-section-metadata.html
  title="CSS3"
  heading_level=2
%}

The Style Kit uses [CSS3](https://developer.mozilla.org/en/docs/Web/CSS/CSS3) CSS standard with browser prefixing where
needed.

{% include topic-section-metadata.html
  title="Responsiveness and Mobile First"
  heading_level=2
%}

The Style Kit uses a [mobile first](https://developer.mozilla.org/en-US/Apps/Progressive/Responsive/Mobile_first)
design, which assumes pages will be viewed on small devices (i.e. mobile phones) and then scales up to larger sizes.
This is also known as [responsive design](https://developer.mozilla.org/en-US/docs/Web/Guide/Responsive_design).

Responsiveness is enabled in the Style Kit using the `viewport` meta tag, as shown below:

{% highlight html %}
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
{% endhighlight %}

Examples of how content can change between sizes include:

* increasing the size of fonts and images
* organising content into [grid columns]({{ '/core/grid/' | prepend: site.baseurl }}) to make better use of space
* minimising or hiding navigation menus at smaller sizes

See the [responsive breakpoints]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}) section for more
information.

{% include topic-section-metadata.html
  title="Colour contrast"
  heading_level=2
%}

The colour contrast for text and any interactive elements **should** be at least *4:5:1*, as recommended by the
Government Digital Service and [W3C](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html).

{% include topic-section-metadata.html
  title="Providing context"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Conveying context without colours or icons"
  heading_level=3
%}

Colours or icons should not be used alone to indicate the meaning or context of an action or notice. This information is
inaccessible to, amongst others, some colour-blind users or those using assistive technologies – such as screen readers.

Instead, context should be either obvious from the content itself, or included in an additional content using the
`.bsk-sr-only` class.

Ideally [contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) and
[icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) should only be needed for reinforcing
meaning that is already present in text or other markup.

{% include topic-section-metadata.html
  title="Link context and roles"
  heading_level=3
%}

Where a link (<code>&lt;a&gt;</code>) element is used as a button to trigger in-page functionality, such as to collapse
content, make sure to add `role="button"` to provide suitable context to assistive technologies.

Where a button (whether an actual button or a link element styled as such) uses the `.bsk-active` state, add
`aria-pressed="true"` as well to convey this context to assistive technologies.

{% include topic-section-metadata.html
  title="Contextual help text"
  heading_level=3
%}

Where text is used to explain something on screen, for example a form field or the result of a calculation, an explicit
link should be made between this text and the element.

Sighted readers will be able to infer such a link using visual cues (such as placement next to the relevant element),
however this will be invisible to those using assistive technologies, such as screen readers.

For context applicable to all users, adding a `aria-describedby` attribute is usually enough. For context intended
specifically for assistive technologies, such as to explain how items are arranged on screen, use the `.bsk-sr-only`.

See the [form help text]({{ '/core/forms/#help-text' | prepend: site.baseurl }}) section for an example.

{% include topic-section-metadata.html
  title="Validation stages"
  heading_level=3
%}

When displaying validation information, usually in the context of a user filling out a form, care should be taken not
to rely on
[colours or icons only]({{ '/core/standards-accessibility/#conveying-context-without-colours-or-icons' | prepend: site.baseurl }})
to provide context.

Clearly stating the reason for a validation failure or warning, with contextual colours and icons, will work best for
all users.

Where possible, validation feedback should include how the user can correct their mistake, for example by enumerating
valid options if there are a limited number. For forms, the `aria-invalid` attribute should be equal to `true` if a
field is invalid.

See the [form validation]({{ '/core/forms/#validation' | prepend: site.baseurl }}) section for an example.

{% include topic-section-metadata.html
  title="Skip navigation context and roles"
  heading_level=2
%}

Pages with large numbers of navigation links, such as a [navbar]({{ '/components/navbar' | prepend: site.baseurl }}),
should include a link to skip to the page content. This link can be hidden to non-screen readers using the `.bsk-sr-only`
class, and requires a page structure such as this:

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

{% include topic-section-metadata.html
  title="Useful resources"
  heading_level=2
%}

These resources provide additional general, or specific, guidance:

* [A11Y Style Guide](http://a11y-style-guide.com/style-guide/)
* [Accessibility - Mozilla Developer Network (MDN)](https://developer.mozilla.org/en-US/docs/Web/Accessibility)
* [Accessibility blog - Government Digital Service (GDS)](https://accessibility.blog.gov.uk/)
* [The Big Hack - Accessibility resources for businesses](https://bighack.org/)
* [Accessibility requirements for public sector websites and applications - Government Digital Service (GDS)](https://www.gov.uk/guidance/accessibility-requirements-for-public-sector-websites-and-apps)
