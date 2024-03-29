---
item_type: Component
title: Progress bar
menus:
  primary_components:
    weight: 21
sections:
  -
    title: Overview
  -
    title: Default progress bar
  -
    title: Progress bar with label
  -
    title: Contextual colours
  -
    title: Stacked progress bar
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-progress-bar` class to indicate the progress of some process or action.

Use the `width` inline CSS property to set the progress of each progress bar.

{% capture alert_content %}
Make sure to include the `aria-valuenow`, `aria-valuemin` and `aria-valuemax` attributes as well a
`<span class="bsk-visually-hidden">` element. <br /> This provides a non-visual indication of the progress item, suitable for
assistive technologies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
**Heads up!** Progress bar elements are not yet fully styled, but will be in the next version of the Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default progress bar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="bsk-progress">
  <div class="bsk-progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    <span class="bsk-visually-hidden">60% Complete</span>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Progress bar with label"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the progress directly within the progress bar to display the progress as an exact value.

{% capture alert_content %}
You don't need to use a `<span class="bsk-visually-hidden">` element with an explicit label.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<div class="bsk-progress">
  <div class="bsk-progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    60%
  </div>
</div>
{% endexample %}

Where the current progress value is too low to fit visually, add a `minimum-width` inline CSS property.

{% example html %}
<div class="bsk-progress">
  <div class="bsk-progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;">
    0%
  </div>
</div>

<div class="bsk-progress">
  <div class="bsk-progress-bar" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2%;">
    2%
  </div>
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

| Standard Context | Progress Bar Contextual Class |
| ---------------- | ----------------------------- |
| Success          | `.bsk-progress-bar-success`   |
| Warning          | `.bsk-progress-bar-warning`   |
| Danger           | `.bsk-progress-bar-danger`    |
| Info             | `.bsk-progress-bar-info`      |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-progress">
  <div class="bsk-progress-bar bsk-progress-bar-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
    <span class="bsk-visually-hidden">25% Complete</span>
  </div>
</div>
<div class="bsk-progress">
  <div class="bsk-progress-bar bsk-progress-bar-warning" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
    <span class="bsk-visually-hidden">50% Complete</span>
  </div>
</div>
<div class="bsk-progress">
  <div class="bsk-progress-bar bsk-progress-bar-danger" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
    <span class="bsk-visually-hidden">75% Complete</span>
  </div>
</div>
<div class="bsk-progress">
  <div class="bsk-progress-bar bsk-progress-bar-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
    <span class="bsk-visually-hidden">100% Complete</span>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Stacked progress bar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-progress` class on an element which wraps around multiple progress bars to stack them together.

{% example html %}
<div class="bsk-progress">
  <div class="bsk-progress-bar" style="width: 25%">
    <span class="bsk-visually-hidden">First progress bar 25% complete</span>
  </div>
  <div class="bsk-progress-bar bsk-progress-bar-warning" style="width: 60%">
    <span class="bsk-visually-hidden">Second progress bar 60% complete</span>
  </div>
</div>
{% endexample %}
