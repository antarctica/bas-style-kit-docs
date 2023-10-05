---
item_type: Pattern
title: Standard header
menus:
  primary_patterns:
    weight: 7
sections:
  -
    title: Overview
  -
    title: Uses
  -
    title: How it works
  -
    title: Site development notice
  -
    title: Standard
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The standard header pattern gives users important information about the service they are using.

If you are using one of the Style Kit's
[themes or templates]({{ 'start/introduction/#themes-and-templates' | prepend: site.baseurl }}){:.bsk-alert-link}, this
pattern is included in the *Style Kit standard* layout.

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

All websites should use this pattern.

When using this pattern, do:

* include a link to a cookie notice or management page in the cookie notice alert
* link the website name to the home page of the current website
* add other, relevant, websites to the 'part of British Antarctic Survey' links
* indicate where a website is under development or used for testing
* include a link to give feedback where a website is under development or used for testing

When using this pattern, do not:

* omit the cookie notice alert if cookies are used by a website for non-essential tasks
  * cookies for session management are essential to the operation of the service and so don't need a cookie notice
  * cookies for analytics are not essential (though may be very useful) and so require a cookie notice
* link the website name to the main BAS website - this is included in the 'Part of British Antarctic Survey' links
* remove links to the main BAS website and BAS data catalogue from the 'Part of British Antarctic Survey' links

{% capture alert_content %}
Under the
[Privacy and Electronic Communications Regulations (PECR)](https://ico.org.uk/for-organisations/guide-to-pecr/cookies-and-similar-technologies/){:.bsk-alert-link}
, a cookie notice <strong>MUST</strong> be included if non-essential cookies are used.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="How it works"
  heading_level=2
%}

A standard header consists of:

1. a cookie notice, if non-required cookies are used
2. primary navigation, including the name of the website and links to other important BAS websites
3. a notice about whether the website is in alpha, beta or testing, if applicable

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

The standard header pattern consists of:

1. a [cookie alert]({{ '/components/alert/#cookie-notice-alert' | prepend: site.baseurl }})
2. a [navbar]({{ '/components/navbar' | prepend: site.baseurl }})
3. a [site development notice](#site-development-notice) to optionally indicate the state of development

{% capture alert_content %}
Services in the 'live' development phase don't need a site development notice but you can if you want to.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Site development notice"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

A site development notice consists of:

* a container element using the `site-development-notice` class
* within this, a [layout container]({{ '/core/layout' | prepend: site.baseurl }})
* within this, a [development phase label]({{ '/component/label/#development-phase' | prepend: site.baseurl }}) with a
  summary description for users and link to give feedback

{% capture alert_content %}
This example uses a fluid container so it does not appear broken.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="site-development-notice">
  <div class="bsk-container-fluid">
    <span class="bsk-label bsk-label-phase-alpha">Alpha</span> This is a new website – your <a href='#' target="_blank">feedback</a>
    will help us to improve it.
    <hr />
  </div>
</div>
{% endexample %}

{% capture alert_content %}
It's strongly recommended to open feedback links in a new tab so users don't loose their place in a process or information they were looking at.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Standard"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
  included="yes"
%}

When using a [fixed-width]({{ '/core/layout/#fixed-width-container' | prepend: site.baseurl }}) layout:

* wrap the cookie notice in a
[fixed-width container]({{ '/core/layout/#fixed-width-container' | prepend: site.baseurl }})
* wrap the container in a <code>&lt;div&gt;</code> with the `.bsk-fix-alert-static-top-fixed-container-wrapper` class

When using a [fluid-width]({{ '/core/layout/#fluid-width-container' | prepend: site.baseurl }}) layout:

* wrap the cookie notice in a
[fluid-width container]({{ '/core/layout/#fluid-width-container' | prepend: site.baseurl }})
* wrap the container in a <code>&lt;div&gt;</code> with the `.bsk-fix-alert-static-top-fluid-container-wrapper` class

{% capture alert_content %}
This example uses a fluid container so it does not appear broken.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-fix-alert-static-top-fixed-container-wrapper">
  <div class="bsk-container-fluid">
    <div id="alert-message" class="bsk-alert bsk-alert-static-top bsk-alert-dismissible bsk-alert-solid bsk-alert-cookie-notice" role="alert" data-bsk-role="cookie-notice-example">
      <button type="button" class="bsk-close" data-bs-dismiss="alert" data-bs-target="#alert-message" aria-label="Close">&times;</button>
      This website uses cookies to help us make it better - <a href="#" class="bsk-alert-link">find out more</a>.
    </div>
  </div>
</div>

<nav class="bsk-navbar bsk-navbar-expand-lg bsk-navbar-dark bsk-bg-dark">
  <div class="bsk-container-fluid">
    <!-- Site name and toggle get grouped for better mobile display -->
    <a class="bsk-navbar-brand" href="#">Site Name</a>
    <button type="button" class="bsk-navbar-toggler bsk-ms-auto" data-bs-toggle="collapse" data-bs-target="#bsk-example-navbar-collapse-1" aria-label="Toggle navigation">
      <span class="bsk-navbar-toggler-icon"></span>
    </button>
    <!-- Collect navigation links, forms, and other items for hiding at smaller screen sizes -->
    <div id="bsk-example-navbar-collapse-1" class="bsk-collapse bsk-navbar-collapse">
      <ul class="bsk-nav bsk-navbar-nav">
        <li class="bsk-active"><a href="#" class="bsk-dropdown-item">Home <span class="bsk-visually-hidden">(current)</span></a></li>
        <li><a href="#" class="bsk-dropdown-item">About</a></li>
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Dropdown <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu bsk-shadow">
            <li><a href="#" class="bsk-dropdown-item">Action</a></li>
            <li><a href="#" class="bsk-dropdown-item">Another action</a></li>
            <li><a href="#" class="bsk-dropdown-item">Something else here</a></li>
            <li role="separator" class="bsk-divider"></li>
            <li><a href="#" class="bsk-dropdown-item">Separated link</a></li>
            <li role="separator" class="bsk-divider"></li>
            <li><a href="#" class="bsk-dropdown-item">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="bsk-nav bsk-navbar-nav bsk-ms-auto">
        <li class="bsk-dropdown">
          <a href="#" class="bsk-dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Part of British Antarctic Survey <span class="bsk-caret"></span></a>
          <ul class="bsk-dropdown-menu bsk-shadow bsk-dropdown-menu-lg-end">
            <li><a href="https://www.bas.ac.uk" class="bsk-dropdown-item">BAS Home</a></li>
            <li><a href="https://data.bas.ac.uk" class="bsk-dropdown-item">Discover BAS data</a></li>
            <li><a href="#" class="bsk-dropdown-item">Another service (optional)</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="site-development-notice">
  <div class="bsk-container-fluid">
    <span class="bsk-label bsk-label-phase-alpha">Alpha</span> This is a new website – your <a href='#'>feedback</a>
    will help us to improve it.
    <hr />
  </div>
</div>
{% endexample %}

{% capture alert_content %}
This example uses `data-bsk-role="cookie-notice-example"` instead of `data-bsk-role="cookie-notice"` so that it's visible.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0017--standard-header-external.html){:.bsk-btn.bsk-btn-default}
