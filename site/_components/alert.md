---
title: Alert
menus:
  primary_components:
    weight: 2
sections:
  -
    title: Overview
  -
    title: Primary alert
  -
    title: Experimental alert
  -
    title: Cookie notice alert
  -
    title: Contextual colours
  -
    title: Contextual icons
  -
    title: Styles
  -
    title: Alert links
  -
    title: Dismissible alerts
  -
    title: Block alerts
  -
    title: Sizes
  -
    title: Layouts
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-alert` class to highlight feedback about a user action, or some other event.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/alert/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
alert, otherwise it will look strange. It is not enough to use `.bsk-alert` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
You **must** pick a [style]({{ '/components/alert/#styles' | prepend: site.baseurl }}){: .bsk-alert-link } for each
alert, otherwise it will look strange. It is not enough to use `.bsk-alert` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% capture alert_content %}
There is no *default* alert variant, as a grey alert for example wouldn't make a lot of sense.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Primary alert"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-primary" role="alert">
  Primary alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Experimental alert"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-experimental" role="alert">
  Experimental alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Cookie notice alert"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  revised_version="0.5.0"
  included="yes"
%}

This variant is only intended for displaying a cookie notice as part of the
[standard header]({{ '/patterns/standard-header' | prepend: site.baseurl }}) pattern.

{% capture alert_content %}
Interactive cookie notices require the [Alert]({{ '/interactivity/alert' | prepend: site.baseurl }}){: .bsk-alert-link }
and [Cookie Notice]({{ '/interactivity/cookie-notice' | prepend: site.baseurl }}){: .bsk-alert-link } JavaScript
plugins, which are enabled on this site.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-cookie-notice" role="alert">
This website uses cookies to help us make it better - <a href="#" class="bsk-alert-link">find out more</a>.
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Alert Contextual Class |
| ---------------- | ---------------------- |
| Success          | `.bsk-alert-success`   |
| Warning          | `.bsk-alert-warning`   |
| Danger           | `.bsk-alert-danger`    |
| Info             | `.bsk-alert-info`      |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-success" role="alert">Success alert</div>
<div class="bsk-alert bsk-alert-solid bsk-alert-warning" role="alert">Warning alert</div>
<div class="bsk-alert bsk-alert-solid bsk-alert-danger" role="alert">Danger alert</div>
<div class="bsk-alert bsk-alert-solid bsk-alert-info" role="alert">Info alert</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Experimental icon"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

The [experimental standard conventional icon]({{ '/core/icons/#experimental-icon' | prepend: site.baseurl }}) can be
used for adding extra context to alerts.

{% capture alert_content %}
Use the `.bsk-alert-icon` class to properly format an icon in an alert.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-experimental" role="alert">
  <i class="fas fa-fw fa-flask bsk-alert-icon" aria-hidden="true"></i> Experimental alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual icons"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can be
used for adding extra context to alerts.

{% capture alert_content %}
Use the `.bsk-alert-icon` class to properly format an icon in an alert.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-alert bsk-alert-icon bsk-alert-solid bsk-alert-success" role="alert">
  <i class="far fa-fw fa-check bsk-alert-icon" aria-hidden="true"></i> Success alert
</div>
<div class="bsk-alert bsk-alert-icon bsk-alert-solid bsk-alert-warning" role="alert">
  <i class="far fa-fw fa-exclamation-triangle bsk-alert-icon" aria-hidden="true"></i> Warning alert
</div>
<div class="bsk-alert bsk-alert-icon bsk-alert-solid bsk-alert-danger" role="alert">
  <i class="fas fa-fw fa-exclamation-circle bsk-alert-icon" aria-hidden="true"></i> Danger alert
</div>
<div class="bsk-alert bsk-alert-icon bsk-alert-solid bsk-alert-info" role="alert">
  <i class="far fa-fw fa-info-square bsk-alert-icon" aria-hidden="true"></i> Info alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Styles"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Solid"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-success" role="alert">
  Solid (success) alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Outline"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-outline bsk-alert-success" role="alert">
  Outline (success) alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Highlight"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-highlight bsk-alert-success" role="alert">
  Highlight (success) alert
</div>
{% endexample %}

{: #{{ 'Components' | slugify }}}

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Alert links"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-alert-link` class for any <code>&lt;a&gt;</code> elements within an alert.

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-success" role="alert">Alert with a <a href="#" class="bsk-alert-link">link</a></div>
{% endexample %}

{% include topic-section-metadata.html
  title="Dismissible alerts"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Add a <code>&lt;button&gt;</code> element using the [close icon]({{ '/core/icons/#close-icon' | prepend: site.baseurl }}
), to create an alert that can be closed or dismissed.

{% capture alert_content %}
Dismissible alerts require the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
The close button element should use a <code>&lt;button&gt;</code> element, not a <code>&lt;a&gt;</code> element, for
browser compatibility.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid bsk-alert-success bsk-alert-dismissible" role="alert">
  <button type="button" class="bsk-close" data-dismiss="alert" aria-label="Close">&times;</button>
  A dismissible alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Block alerts"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

Where an alert will contain more than just text, such as lists or buttons, etc. add the `.bsk-alert-block` class to
ensure compatibility and correct formatting.

{% capture alert_content %}
Using an alert with more than just text without this class is not supported and may not look right.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-alert bsk-alert-block bsk-alert-solid bsk-alert-success" role="alert">
  <p>Longer success text - De carne animata corpora quaeritis. De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.</p>
  <ul>
    <li>the voodoo sacerdos flesh eater</li>
    <li>suscitat mortuos comedere carnem virus</li>
    <li>aenean a dolor plan et terror soulless vulnerum contagium accedunt</li>
    <li>mortui iam vivam unlife</li>
  </ul>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Block alert headings"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

A heading can be added to a block alert using a `.bsk-alert-heading` header and `h4` heading.

The alert body should use the `.bsk-alert-body` class for proper formatting.

{% capture alert_content %}
Other headings may be used, but are not supported and may not look right.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-alert bsk-alert-block bsk-alert-solid bsk-alert-success" role="alert">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">Success alert header</div>
  </header>
  <div class="bsk-alert-body">
    <p>Longer success text - De carne animata corpora quaeritis. De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.</p>
    <ul>
      <li>the voodoo sacerdos flesh eater</li>
      <li>suscitat mortuos comedere carnem virus</li>
      <li>aenean a dolor plan et terror soulless vulnerum contagium accedunt</li>
      <li>mortui iam vivam unlife</li>
    </ul>
  </div>
</div>
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
  title="Sizes"
  heading_level=2
%}

Add one of these classes to alter the size of an alert:

| Alert Size | Alert Size Class |
| ---------- | ---------------- |
| Large      | `.bsk-alert-lg`  |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-alert bsk-alert-lg bsk-alert-solid bsk-alert-success" role="alert">
  Large (success) alert
</div>
<div class="bsk-alert bsk-alert-solid bsk-alert-success" role="alert">
  Regular (success) alert
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Static top"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-alert-static-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to create a full-width alert that scrolls with the page.

{% example html %}
<div class="bsk-alert bsk-alert-static-top bsk-alert-solid bsk-alert-success" role="alert">
  Alert static top
</div>
{% endexample %}
