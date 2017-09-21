---
title: Header
sections:
  -
    title: Overview
  -
    title: Default header
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-header` class to create an element with the illusion of a
[navbar]({{ '/components/navbar' | prepend: site.baseurl }}), but using simpler, self-contained styles, and which
doesn't support navigation. The [BAS Logo]({{ '/core/logos/#bas-logo' | prepend: site.baseurl }}) shoud be used in
headers to reinforce the BAS brand.

{% alert warning style=solid %}
Headers should only be used where the [Navbar's]({{ '/components/navbar' | prepend: site.baseurl }}){: .bsk-alert-link }
component is unsuitable, for example within external systems.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default header"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% alert info style=solid %}
Headers need to use `.bsk-header-container-fluid`, instead of `.bsk-container-fluid`. The same styles are applied, but
in a form that is self-contained for compatibility with other styles.
{% endalert %}

{% alert info %}
Images in headers need to use the `.bsk-header-img-logo` class to prevent too much padding.
{% endalert %}

{% example html %}
<header class="bsk-header bsk-header-default">
  <div class="bsk-header-container-fluid">
    <a href="#">
      <img class="bsk-header-img-logo" alt="British Antarctic Survey Logo" src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-64.png">
    </a>
  </div>
</header>
{% endexample %}
