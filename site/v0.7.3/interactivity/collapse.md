---
item_type: Interactive
title: Collapse
menus:
  primary_interactivity:
    weight: 4
sections:
  -
    title: Overview
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  revised_version="0.7.0"
%}

The Style Kit includes a customised version of the Bootstrap
[collapse](https://getbootstrap.com/docs/5.2/components/collapse/) plugin to be compatible with Style Kit specific
classes. It's functionality and data API remain exactly the same.

[View Collapse Plugin](https://getbootstrap.com/docs/5.2/components/collapse/){:.bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  initial_version="0.7.0"
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

Use with the Style Kit [navbar component]({{ '/components/navbar' | prepend: site.baseurl }}) to create
[hidden item menus]({{ '/components/navbar/#hidden-items' | prepend: site.baseurl }}).
