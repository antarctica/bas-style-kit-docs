---
title: Icons
menus:
  primary_core:
    weight: 7
sections:
  -
    title: Overview
  -
    title: Caret icon
  -
    title: Close icon
  -
    title: Experimental icon
  -
    title: Standard contextual icons
  -
    title: External service icons
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

The core BAS Style Kit uses a limited set of textual icons to represent actions such as <em>close</em>.

{% capture alert_content %}
Previous versions of the Style Kit included the Font Awesome icon font. This was removed following the release of Font
Awesome 5, due to licensing restrictions with the <em>pro</em> version.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
The Glyphicons icon font, included by default in Bootstrap, is not included in the Style Kit, its icons will not work.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Caret icon"
  heading_level=2
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Use `.bsk-caret` for things like [drop-down menus]({{ '/components/drop-down' | prepend: site.baseurl }}).

{% example html %}
<span class="bsk-caret"></span>
{% endexample %}

{% include topic-section-metadata.html
  title="Close icon"
  heading_level=2
  phase="alpha"
  initial_version="0.1.0"
  revised_version="0.5.0"
  included="yes"
%}

Use the `&times;` HTML entity wrapped in a `.bsk-close` element for indicating closing or dismissive things, such as
[alerts]({{ '/components/alert' | prepend: site.baseurl }}).

<div class="bsk-docs-icons-wrapper">
  <div class="bsk-row">
    <div class="bsk-col-12-md-3">
      <div class="bsk-docs-icon">&times;</div>
      <ul class="bsk-list-unstyled bsk-text-center bsk-docs-icons-details">
        <li>Times</li>
      </ul>
    </div>
  </div>
</div>

{% capture alert_content %}
**Hint** The close icon is aligned right.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<button type="button" class="bsk-close" aria-label="Close">&times;</button>
{% endexample %}
