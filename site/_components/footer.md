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

## Overview
{: #{{ 'Overview' | slugify }}}

Footers are a general purpose element (in that they can contain anything), but with a specific context.

Whereas [navbar's]({{ '/components/navbar' | prepend: site.baseurl }}) contain only crucial information, such as the
name of a project/service and navigation links, footers typically contain important or additional information, but that
isn't vital to show straight away, such as copyright and privacy links.

Footers can range from very *slim*, minimal elements with only simple text, to *fat* elements, containing navigation
links, information and actions.

The footer component is designed to be compatible with almost all other components and core styles, however it is
strongly recommended to use a [container]({{ '/core/layout/#containers' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-info }

## Default footer
{: #{{ 'Default footer' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

{% example html %}
<footer class="footer-bsk footer-bsk-default">
  <div class="container-fluid">
    Footer content
  </div>
</footer>
{% endexample %}

This example, whilst quite complex, demonstrates the sort of information shown in a typical footer.

{% example html %}
<footer class="footer-bsk footer-bsk-default">
  <div class="container-fluid">
    <!-- main content -->
    <h2>Footer content</h2>
    Footer content with a <a href="#">link</a>
    <div role="separator" class="footer-bsk-divider"></div>
    <!-- Copyright & legal -->
    <div class="footer-bsk-ogl">
      <a class="ogl-symbol" rel="license" href="http://www.nationalarchives.gov.uk/doc/open-government-licence/"><img alt="Open Government Licence logo" src="{{ '/img/ogl-symbol-white.png' | prepend: site.baseurl }}"></a>
      <div class="ogl-text">All content is licensed under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence/">Open Government Licence v3.0</a>, except where otherwise stated</div>
    </div>
    <div class="footer-bsk-policy-links">
      © (Year) NERC BAS
      <ul class="list-inline">
        <li><a href="#">Copyright</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
    </div>
  </div>
</footer>
{% endexample %}

## Components
{: #{{ 'Components' | slugify }}}

### Divider
{: #{{ 'Divider' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

The `.footer-bsk-divider` class acts as horizontal rule, with additional padding.

{% example html %}
<footer class="footer-bsk footer-bsk-default">
  <div class="container-fluid">
    Footer content above
    <div role="separator" class="footer-bsk-divider"></div>
    Footer content below
  </div>
</footer>
{% endexample %}

### Open Government License
{: #{{ 'Open Government License' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

The `.footer-bsk-ogl` class positions and styles the OGL logo and an accompanying licensing statement.

{% example html %}
<footer class="footer-bsk footer-bsk-default">
  <div class="container-fluid">
    <div class="footer-bsk-ogl">
      <a class="ogl-symbol" rel="license" href="http://www.nationalarchives.gov.uk/doc/open-government-licence/"><img alt="Open Government Licence logo" src="{{ '/img/ogl-symbol-white.png' | prepend: site.baseurl }}"></a>
      <div class="ogl-text">All content is licensed under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence/">Open Government Licence v3.0</a>, except where otherwise stated</div>
    </div>
  </div>
</footer>
{% endexample %}

### Legal policy links
{: #{{ 'Open Government License' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

The `.footer-bsk-policy-links` class positions and styles links to policies such as copyright and privacy statements.

{% example html %}
<footer class="footer-bsk footer-bsk-default">
  <div class="container-fluid">
    <div class="footer-bsk-policy-links">
      © (Year) NERC BAS
      <ul class="list-inline">
        <li><a href="#">Copyright</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
    </div>
  </div>
</footer>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }}}

### Fixed to bottom
{: #{{ 'Fixed to bottom' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Add the `.footer-bsk-fixed-bottom` class to fix a footer to the bottom of the page.

Fixed styles require additional padding on the `body` element. Otherwise the footer will cover up other page content.
The Style Kit doesn't provide styles for this, as it depends on the height of the footer in question.
{: .alert .alert-danger }

{% example html %}
<footer class="footer-bsk footer-bsk-default footer-bsk-fixed-bottom">
  <!-- A '.fluid-container' is used for demonstration purposes, a '.container' would 'break out' of the example box -->
  <div class="container-fluid">
    Footer content with a <a href="#">link</a>
    <div role="separator" class="footer-bsk-divider"></div>
    <!-- Copyright & legal -->
    <div class="pull-right">
      Copyright &amp; Legal
    </div>
  </div>
</footer>
{% endexample %}

### Static bottom
{: #{{ 'Static bottom' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Add the `.footer-bsk-static-bottom` class to create a full-width footer that scrolls away with the page.

Unlike with fixed footers, you do not need to change any padding on the `body` element with a static footer.
{: .alert .alert-info }

{% example html %}
<footer class="footer-bsk footer-bsk-default footer-bsk-static-bottom">
  <!-- A '.fluid-container' is used for demonstration purposes, a '.container' would 'break out' of the example box -->
  <div class="container-fluid">
    Footer content with a <a href="#">link</a>
    <div role="separator" class="footer-bsk-divider"></div>
    <!-- Copyright & legal -->
    <div class="pull-right">
      Copyright &amp; Legal
    </div>
  </div>
</footer>
{% endexample %}
