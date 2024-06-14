---
item_type: Component
title: Header
menus:
  primary_components:
    weight: 10
sections:
  -
    title: Overview
  -
    title: Default header
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-header` class to create an element with the illusion of a
[navbar]({{ '/components/navbar' | prepend: site.baseurl }}), but using simpler, self-contained styles, and which
doesn't support navigation. The [BAS Logo]({{ '/core/logos/#bas-logo' | prepend: site.baseurl }}) should be used in
headers to reinforce the BAS brand.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/header/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
header, otherwise it will look strange. It is not enough to use `.bsk-header` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
Headers should only be used where the [Navbar's]({{ '/components/navbar' | prepend: site.baseurl }}){: .bsk-alert-link }
component is unsuitable, for example within external systems.
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
  title="Default header"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Headers need to use `.bsk-header-container-fluid`, instead of `.bsk-container-fluid`. The same styles are applied, but
in a form that is self-contained for compatibility with other styles.

To look right, scale the logo or image in the header so that its height is one of these sizes and use the corresponding `.bsk-header-image-{size}` class on the same element.

| Absolute Image Height (Px) | Header Image Class   |
| -------------------------- | -------------------- |
| 64                         | .bsk-header-image-64 |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
If you need to use a specific size not in this list you will need to use your own classes to add suitable padding
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<header class="bsk-header bsk-header-default">
  <div class="bsk-header-container-fluid">
    <a href="#">
      <img class="bsk-header-image-64" alt="British Antarctic Survey Logo" src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-64.png">
    </a>
  </div>
</header>
{% endexample %}
