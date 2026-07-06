---
item_type: Interactive
title: Drop-Down
menus:
  primary_interactivity:
    weight: 6
sections:
  -
    title: Overview
  -
    title: Uses
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  revised_version="0.7.0"
%}

The Style Kit includes a customised version of the Bootstrap
[drop-down](https://getbootstrap.com/docs/5.2/components/dropdowns/#usage) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

[View Drop-Down Plugin](https://getbootstrap.com/docs/5.2/components/dropdowns/#usage){:.bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
  revised_version="0.7.0"
%}

{% capture alert_content %}
See [distribution]({{ '/start/distribution/#javascript-dependencies' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Use with the Style Kit [drop-down component]({{ '/components/drop-down' | prepend: site.baseurl }}) to create drop-down
menus in [navbars]({{ '/components/navbar/#drop-down-menu' | prepend: site.baseurl }}) and
[buttons]({{ '/components/drop-down/#button-drop-down' | prepend: site.baseurl }}).
