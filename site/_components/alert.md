---
title: Alert
sections:
  -
    title: Overview
  -
    title: Primary alert
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
    title: block alerts
  -
    title: Layouts
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-alert` class to highlight feedback about a user action, or some other event.

{% alert warning style=solid %}
You **must** pick a [variant]({{ '/components/alert/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
alert, otherwise it will look strange. It is not enough to use `.bsk-alert` on its own.
{% endalert %}

{% alert warning style=solid %}
You **must** pick a [style]({{ '/components/alert/#styles' | prepend: site.baseurl }}){: .bsk-alert-link } for each
alert, otherwise it will look strange. It is not enough to use `.bsk-alert` on its own.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% alert info %}
There is no *default* alert variant, as a grey alert for example wouldn't make a lot of sense.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Primary alert"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid-primary" role="alert">
  Primary alert
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Contextual colours"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for context by adding these classes:

| Standard Context | Alert Contextual Class       | Example Alert Contextual Class |
| ---------------- | ---------------------------- | ------------------------------ |
| Success          | `.bsk-alert-[style]-success` | `.bsk-alert-solid-success`     |
| Warning          | `.bsk-alert-[style]-warning` | `.bsk-alert-solid-warning`     |
| Danger           | `.bsk-alert-[style]-danger`  | `.bsk-alert-solid-danger`      |
| Info             | `.bsk-alert-[style]-info`    | `.bsk-alert-solid-info`        |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-alert bsk-alert-solid-success" role="alert">Success alert</div>
<div class="bsk-alert bsk-alert-solid-warning" role="alert">Warning alert</div>
<div class="bsk-alert bsk-alert-solid-danger" role="alert">Danger alert</div>
<div class="bsk-alert bsk-alert-solid-info" role="alert">Info alert</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Contextual icons"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can be
used for adding extra context to alerts.

{% example html %}
<div class="bsk-alert bsk-alert-icon bsk-alert-solid-success" role="alert">
  <i class="fa fa-fw fa-check bsk-alert-icon" aria-hidden="true"></i> Success alert
</div>
<div class="bsk-alert bsk-alert-icon bsk-alert-solid-warning" role="alert">
  <i class="fa fa-fw fa-exclamation-triangle bsk-alert-icon" aria-hidden="true"></i> Warning alert
</div>
<div class="bsk-alert bsk-alert-icon bsk-alert-solid-danger" role="alert">
  <i class="fa fa-fw fa-exclamation-circle bsk-alert-icon" aria-hidden="true"></i> Danger alert
</div>
<div class="bsk-alert bsk-alert-icon bsk-alert-solid-info" role="alert">
  <i class="fa fa-fw fa-info bsk-alert-icon" aria-hidden="true"></i> Info alert
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Styles"
  heading_level=2
%}

{% alert info %}
Currently Styles are an inherent part of the relevant *variant* class. There is no *default* alert style.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Solid"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-solid-success" role="alert">
  Solid (success) alert
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Outline"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-outline-success" role="alert">
  Outline (success) alert
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Highlight"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

{% example html %}
<div class="bsk-alert bsk-alert-highlight-success" role="alert">
  Highlight (success) alert
</div>
{% endexample %}

{: #{{ 'Components' | slugify }}}

{% include snippets/topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Alert links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.bsk-alert-link` class for any <code>&lt;a&gt;</code> elements within an alert.

{% example html %}
<div class="bsk-alert bsk-alert-solid-success" role="alert">Alert with a <a href="#" class="bsk-alert-link">link</a></div>
<!-- This example doesn't include the '.bsk-alert-link' class for demonstration purposes -->
<div class="bsk-alert bsk-alert-solid-success" role="alert">Alert with a <a href="#">link</a></div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Dismissible alerts"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add a `button` element using the [close icon]({{ '/core/icons/#close-icon' | prepend: site.baseurl }}), to create an]
alert that can be closed or dismissed.

{% alert info style=solid %}
Dismissible alerts require the [alert]({{ '/interactivity/alert' | prepend: site.baseurl }}){: .bsk-alert-link }
JavaScript plugin, which is enabled on this site.
{% endalert %}

{% alert danger style=highlight %}
The close button element should use a `button` element, not a <code>&lt;a&gt;</code> element, for browser compatibility.
{% endalert %}

{% example html %}
<div class="bsk-alert bsk-alert-solid-success bsk-alert-dismissible" role="alert">
  <button type="button" class="bsk-close" data-dismiss="alert" aria-label="Close"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
  A dismissible alert
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Block alerts"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

Where an alert will contain lots of text use `.bsk-alert-block`, which will reduce the text size.

{% example html %}
<div class="bsk-alert bsk-alert-block bsk-alert-solid-success" role="alert">
  Longer success text - De carne animata corpora quaeritis. De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.
  <br />
  The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis.
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Block alert headings"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

A heading can be added to a block alert using a `.bsk-alert-heading` header and `h4` heading.

{% example html %}
<div class="bsk-alert bsk-alert-block bsk-alert-solid-success" role="alert">
  <header class="bsk-alert-heading">
    <h4>Success alert header</h4>
  </header>
  De carne animata corpora quaeritis. De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.
  <br />
  The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis.
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Static top"
  heading_level=3
  current_phase="live"
  current_version="0.3.0"
  included="yes"
%}

Add the `.bsk-alert-static-top` class and include a [container]({{ 'core/layout/#containers' | prepend: site.baseurl }})
to create a full-width alert that scrolls with the page.

{% example html %}
<div class="bsk-alert bsk-alert-static-top bsk-alert-solid-success" role="alert">
  Alert static top
</div>
{% endexample %}
