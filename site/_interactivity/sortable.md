---
title: Sortable
menus:
  primary_interactivity:
    weight: 11
sections:
  -
    title: Overview
  -
    title: Uses
  -
    title: Examples
body_js_files:
  -
    href: 'https://cdn.web.bas.ac.uk/libs/html5sortable/0.9.4/js/html5sortable.min.js'
    integrity: 'sha256-a5lgB8k+KyfXyaS32wQevsCnEm8Hz2o7cPEfthVOzLM='
    type: 'remote'
  -
    href: '/js/sortable.js'
    type: 'local'
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
  included="no"
%}

The Style Kit includes classes for using [HTML Sortable](https://lukasoppermann.github.io/html5sortable/index.html) for
creating sortable lists.

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
  included="no"
%}

This plugin depends upon:

* [HTML5 Sortable](https://www.dropzonejs.com)

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

Sortable lists can be useful when users should be set the order of items, such as the drawing order of map layers.

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

{% example html %}
<ul id="sortable-1" class="bsk-list-unstyled bsk-sortable bsk-sortable-list">
  <li><i class="bsk-text-muted far fa-fw fa-bars"></i> Item A</li>
  <li><i class="bsk-text-muted far fa-fw fa-bars"></i> Item B</li>
  <li><i class="bsk-text-muted far fa-fw fa-bars"></i> Item C</li>
  <li><i class="bsk-text-muted far fa-fw fa-bars"></i> Item D</li>
  <li><i class="bsk-text-muted far fa-fw fa-bars"></i> Item E</li>
</ul>
{% endexample %}

The corresponding JavaScript for this example:

{% highlight js %}
sortable('#sortable-1', {
  items: ':not(.bsk-disabled)',
  placeholderClass: 'bsk-sortable-list-placeholder'
});
{% endhighlight %}
