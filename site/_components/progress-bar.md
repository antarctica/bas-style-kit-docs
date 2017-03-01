---
title: Progress bar
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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.progress-bar` class to indicate the progress of some process or action.

Use the `width` inline CSS property to set the progress of each progress bar.

Some progress bar effects use CSS3 transitions and animations. These effects are not supported in Internet Explorer 9
and below, older versions of Firefox or Opera 12.
{: .alert .alert-danger }

Make sure to include the `aria-valuenow`, `aria-valuemin` and `aria-valuemax` attributes as well a
`<span class="sr-only">` element. <br /> This provides a non-visual indication of the progress item, suitable for
assistive technologies.
{: .alert .alert-warning }

**Heads up!** Progress bar elements are not yet fully styled, but will be in the next version of the Style Kit.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default progress bar"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    <span class="sr-only">60% Complete</span>
  </div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Progress bar with label"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the progress directly within the progress bar to display the progress as an exact value.

You don't need to use a `<span class="sr-only">` element with an explicit label.
{: .alert .alert-info }

{% example html %}
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    60%
  </div>
</div>
{% endexample %}

Where the current progress value is too low to fit visually, add a `minimum-width` inline CSS property.

{% example html %}
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;">
    0%
  </div>
</div>

<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2%;">
    2%
  </div>
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

| Standard Context | Progress Bar Contextual Class |
| ---------------- | ----------------------------- |
| Success          | `.progress-bar-success`       |
| Warning          | `.progress-bar-warning`       |
| Danger           | `.progress-bar-danger`        |
| Info             | `.progress-bar-info`          |
{: .table .table-responsive }

{% example html %}
<div class="progress">
  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
    <span class="sr-only">25% Complete</span>
  </div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
    <span class="sr-only">50% Complete</span>
  </div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
    <span class="sr-only">75% Complete</span>
  </div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
    <span class="sr-only">100% Complete</span>
  </div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Stacked progress bar"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.progress` class on an element which wraps around multiple progress bars to stack them together.

{% example html %}
<div class="progress">
  <div class="progress-bar" style="width: 25%">
    <span class="sr-only">First progress bar 25% complete</span>
  </div>
  <div class="progress-bar progress-bar-warning" style="width: 60%">
    <span class="sr-only">Second progress bar 60% complete</span>
  </div>
</div>
{% endexample %}
