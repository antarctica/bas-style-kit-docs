---
title: Footer
menus:
  primary_components:
    weight: 8
sections:
  -
    title: Overview
  -
    title: Default footer
  -
    title: Spacer
  -
    title: Divider
  -
    title: Is something wrong link
  -
    title: Back to top link
  -
    title: Governance
  -
    title: Legal policy links
  -
    title: Layouts
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-footer` class as a general purpose element to create *slim*, minimal elements with only simple text,
or *fat* elements, containing navigation links, information and actions.

Whereas [navbar's]({{ '/components/navbar' | prepend: site.baseurl }}) contain only crucial information, such as the
name of a project/service and navigation links, footers typically contain important or additional information, but that
isn't vital to show straight away, such as copyright and privacy links.

{% capture alert_content %}
You **must** pick a [variant]({{ '/core/buttons/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
button, otherwise it will look strange. It is not enough to use `.bsk-btn` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
The footer component is designed to be compatible with almost all other components and core styles, however it is
strongly recommended to use a [container]({{ '/core/layout/#containers' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default footer"
  heading_level=3
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    Footer content
  </div>
</footer>
{% endexample %}

This example, whilst more complex, demonstrates the sort of information shown in a typical footer.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-back-to-top">
      <a href="#site-top">Back to top</a>
    </div>
    <div class="bsk-footer-is-something-wrong">
      <a href="#">Is something wrong with this page?</a>
    </div>
    <div role="separator" class="bsk-footer-spacer"></div>
    <!-- main content -->
    <div class="bsk-row">
      <div class="bsk-col-12-md-6">
        Footer content with a <a href="#">link</a>
      </div>
    </div>
    <div role="separator" class="bsk-footer-divider"></div>
    <!-- Copyright & legal -->
    <div class="bsk-footer-governance">
      The <a href="https://www.bas.ac.uk">British Antarctic Survey</a> (BAS) is part of <a href="https://www.ukri.org">UK Research and Innovation</a> (UKRI)
      <div class="bsk-footer-ogl"><div class="bsk-ogl-symbol"><a href="http://www.nationalarchives.gov.uk/doc/open-government-licence" rel="license"><span class="bsk-ogl-symbol">Open Government Licence</span></a></div>
      All content is available under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence" rel="license">Open Government Licence v3.0</a>, except where otherwise stated</div>
    </div>
    <div class="bsk-footer-policy-links">
      <ul class="bsk-list-inline">
        <li><a href="#">Cookies</a></li>
        <li><a href="#">Copyright</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
      © (Year) British Antarctic Survey
    </div>
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Spacer"
  heading_level=3
  phase="live"
  initial_version="0.4.0"
  included="yes"
%}

Use the `.bsk-footer-spacer` class on an element, to give additional padding.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    Footer content above
    <div role="separator" class="bsk-footer-spacer"></div>
    Footer content below
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Divider"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-footer-divider` class on an element, give additional padding and a horizontal line.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    Footer content above
    <div role="separator" class="bsk-footer-divider"></div>
    Footer content below
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Is something wrong link"
  heading_level=3
  phase="live"
  initial_version="0.4.0"
  included="yes"
%}

Use the `.bsk-footer-is-something-wrong` class to position and style a link to give site feedback.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-is-something-wrong">
      <a href="#">Is something wrong with this page?</a>
    </div>
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Back to top link"
  heading_level=3
  phase="alpha"
  initial_version="0.4.0"
  revised_version="0.5.0"
  included="yes"
%}

Use the `.bsk-footer-back-to-top` class to position and style a link to the top of the current page.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-back-to-top">
      <a href="#site-top">Back to top</a>
    </div>
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Governance"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.4.0"
  included="yes"
%}

Use the `.bsk-footer-governance` and `.bsk-footer-ogl`, `.bsk-footer-ogl-symbol` classes to position and format a
statement explaining BAS is part of UKRI, and that content is licensed under the Open Government License using the
[OGL Symbol]({{ '/core/logos/#open-government-license-symbol' | prepend: site.baseurl }}).

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-governance">
      The <a href="https://www.bas.ac.uk">British Antarctic Survey</a> (BAS) is part of <a href="https://www.ukri.org">UK Research and Innovation</a> (UKRI)
      <div class="bsk-footer-ogl"><div class="bsk-ogl-symbol"><a href="http://www.nationalarchives.gov.uk/doc/open-government-licence" rel="license"><span class="bsk-ogl-symbol">Open Government Licence</span></a></div>
      All content is available under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence" rel="license">Open Government Licence v3.0</a>, except where otherwise stated</div>
    </div>
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Legal policy links"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-footer-policy-links` class to position and style links to policies such as copyright and privacy
statements.

{% example html %}
<footer class="bsk-footer bsk-footer-default">
  <div class="bsk-container-fluid">
    <div class="bsk-footer-policy-links">
      <ul class="bsk-list-inline">
        <li><a href="#">Cookies</a></li>
        <li><a href="#">Copyright</a></li>
        <li><a href="#">Privacy</a></li>
      </ul>
      © (Year) British Antarctic Survey
    </div>
  </div>
</footer>
{% endexample %}

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Fixed to bottom"
  heading_level=3
  current_phase="live"
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-footer-fixed-bottom` class to fix a footer to the bottom of the page.

{% capture alert_content %}
Fixed styles require additional padding on the `body` element. Otherwise the footer will cover up other page content.
The Style Kit doesn't provide styles for this, as it depends on the height of the footer in question.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
The example below would normally use absolute positioning. It is disabled here to avoid breaking the site layout.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

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

{% include topic-section-metadata.html
  title="Static bottom"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-footer-static-bottom` class to create a full-width footer that scrolls away with the page.

{% capture alert_content %}
Unlike with fixed footers, you do not need to change any padding on the `body` element with a static footer.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

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
