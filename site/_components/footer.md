---
title: Footer
sections:
  -
    title: Overview
  -
    title: Default footer
  -
    title: Divider
  -
    title: Open Government License
  -
    title: Legal policy links
  -
    title: Layouts
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-footer` class as a general purpose element to create *slim*, minimal elements with only simple text,
or *fat* elements, containing navigation links, information and actions.

Whereas [navbar's]({{ '/components/navbar' | prepend: site.baseurl }}) contain only crucial information, such as the
name of a project/service and navigation links, footers typically contain important or additional information, but that
isn't vital to show straight away, such as copyright and privacy links.

{% alert info style=solid %}
The footer component is designed to be compatible with almost all other components and core styles, however it is
strongly recommended to use a [container]({{ '/core/layout/#containers' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default footer"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    Footer content
  </div>
</footer>
{% endexample %}

This example, whilst quite complex, demonstrates the sort of information shown in a typical footer.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <!-- main content -->
    <h2>Footer content</h2>
    Footer content with a <a href="#">link</a>
    <div role="separator" class="bsk-footer-divider"></div>
    <!-- Copyright & legal -->
    <div class="bsk-footer-ogl">
      <a class="bsk-ogl-symbol" rel="license" href="http://www.nationalarchives.gov.uk/doc/open-government-licence/"><img alt="Open Government Licence logo" src="{{ '/img/ogl-symbol-white.png' | prepend: site.baseurl }}"></a>
      <div class="bsk-ogl-text">All content is licensed under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence/">Open Government Licence v3.0</a>, except where otherwise stated</div>
    </div>
    <div class="bsk-footer-policy-links">
      © (Year) NERC BAS
      <ul class="bsk-list-inline">
        <li><a href="#">Copyright</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
    </div>
  </div>
</footer>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Divider"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-footer-divider` class on an element, to act as a horizontal rule with additional padding.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    Footer content above
    <div role="separator" class="bsk-footer-divider"></div>
    Footer content below
  </div>
</footer>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Open Government License"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-footer-ogl` class, `.bsk-ogl-symbol` and `.bsk-ogl-text` classes on elements to position and style the OGL
logo and accompanying licensing statement.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-ogl">
      <a class="bsk-ogl-symbol" rel="license" href="http://www.nationalarchives.gov.uk/doc/open-government-licence/"><img alt="Open Government Licence logo" src="{{ '/img/ogl-symbol-white.png' | prepend: site.baseurl }}"></a>
      <div class="bsk-ogl-text">All content is licensed under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence/">Open Government Licence v3.0</a>, except where otherwise stated</div>
    </div>
  </div>
</footer>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Legal policy links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-footer-policy-links` class to position and style links to policies such as copyright and privacy
statements.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-policy-links">
      © (Year) NERC BAS
      <ul class="bsk-list-inline">
        <li><a href="#">Copyright</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
    </div>
  </div>
</footer>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Fixed to bottom"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-footer-fixed-bottom` class to fix a footer to the bottom of the page.

{% alert warning %}
Fixed styles require additional padding on the `body` element. Otherwise the footer will cover up other page content.
The Style Kit doesn't provide styles for this, as it depends on the height of the footer in question.
{% endalert %}

{% alert info style=highlight %}
The example below would normally use absolute positioning. It is disabled here to avoid breaking the site layout.
{% endalert %}

{% example html %}
<footer class="bsk-footer bsk-footer-default bsk-footer-fixed-bottom">
  <!-- A '.fluid-container' is used for demonstration purposes, a '.container' would 'break out' of the example box -->
  <div class="bsk-container-fluid">
    Footer content with a <a href="#">link</a>
    <div role="separator" class="bsk-footer-divider"></div>
    <!-- Copyright & legal -->
    <div class="bsk-pull-right">
      Copyright &amp; Legal
    </div>
  </div>
</footer>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Static bottom"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.bsk-footer-static-bottom` class to create a full-width footer that scrolls away with the page.

{% alert info style=highlight %}
Unlike with fixed footers, you do not need to change any padding on the `body` element with a static footer.
{% endalert %}

{% example html %}
<footer class="bsk-footer bsk-footer-default bsk-footer-static-bottom">
  <!-- A '.fluid-container' is used for demonstration purposes, a '.container' would 'break out' of the example box -->
  <div class="bsk-container-fluid">
    Footer content with a <a href="#">link</a>
    <div role="separator" class="bsk-footer-divider"></div>
    <!-- Copyright & legal -->
    <div class="bsk-pull-right">
      Copyright &amp; Legal
    </div>
  </div>
</footer>
{% endexample %}
