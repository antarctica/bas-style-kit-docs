---
title: Buttons
menus:
  primary_core:
    weight: 2
sections:
  -
    title: Overview
  -
    title: Supported elements
  -
    title: Default button
  -
    title: Primary button
  -
    title: Experimental button
  -
    title: Contextual colours
  -
    title: Contextual icons
  -
    title: Link
  -
    title: Sizes
  -
    title: States
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-btn` class to create clickable actions or links.

{% capture alert_content %}
You **must** pick a [variant]({{ '/core/buttons/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
button, otherwise it will look strange. It is not enough to use `.bsk-btn` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.2.0"
  included="yes"
%}

These elements are fully supported:

* <code>&lt;button&gt;</code>

These elements are also supported, but to a lesser extent:

* <code>&lt;a&gt;</code>
* <code>&lt;input&gt;</code>

Other elements may be used as well, but are not supported and may not look right.

{% capture alert_content %}
Use `role="button"` for link elements which trigger in-page functionality (such as collapsing
content) to give
[proper context to assistive technologies]({{ '/start/standards-accessibility/#link-context-and-roles' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<button class="bsk-btn bsk-btn-default" type="submit">Button</button>
<input class="bsk-btn bsk-btn-default" type="button" value="Input">
<input class="bsk-btn bsk-btn-default" type="submit" value="Submit">
<a class="bsk-btn bsk-btn-default" href="#" role="button">Link</a>
{% endexample %}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default button"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-btn-default` class for standard or secondary buttons. For added context you can use
[contextual colours]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<button class="bsk-btn bsk-btn-default" type="submit">Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Primary button"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-btn-primary` class for the main call to action.

{% example html %}
<button class="bsk-btn bsk-btn-primary" type="submit">Primary Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Experimental button"
  heading_level=3
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

Add the `.bsk-btn-experimental` class for actions that are experimental or not yet fully supported.

{% example html %}
<button class="bsk-btn bsk-btn-experimental" type="submit">Experimental Action</button>
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

| Standard Context | Button Contextual Class |
| ---------------- | ----------------------- |
| Success          | `.bsk-btn-success`      |
| Warning          | `.bsk-btn-warning`      |
| Danger           | `.bsk-btn-danger`       |
| Info             | `.bsk-btn-info`         |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<button class="bsk-btn bsk-btn-success">Success Action</button>
<button class="bsk-btn bsk-btn-warning">Warning Action</button>
<button class="bsk-btn bsk-btn-danger">Dangerous Action</button>
<button class="bsk-btn bsk-btn-info">Info Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Contextual icons"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can also be
used for adding context to buttons, usually with the
[contextual colours]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<button class="bsk-btn bsk-btn-default"><i class="fa fa-fw fa-check" aria-hidden="true"></i> Success Action</button>
<button class="bsk-btn bsk-btn-default"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Warning Action</button>
<button class="bsk-btn bsk-btn-default"><i class="fa fa-fw fa-exclamation-circle" aria-hidden="true"></i> Dangerous Action</button>
<button class="bsk-btn bsk-btn-default"><i class="fa fa-fw fa-info" aria-hidden="true"></i> Info Action</button>
{% endexample %}

{% example html %}
<button class="bsk-btn bsk-btn-success"><i class="fa fa-fw fa-check" aria-hidden="true"></i> Success Action</button>
<button class="bsk-btn bsk-btn-warning"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Warning Action</button>
<button class="bsk-btn bsk-btn-danger"><i class="fa fa-fw fa-exclamation-circle" aria-hidden="true"></i> Dangerous Action</button>
<button class="bsk-btn bsk-btn-info"><i class="fa fa-fw fa-info" aria-hidden="true"></i> Info Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Link"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use this variant to draw attention away from a button, but whilst still functioning like one. Useful for less common
actions, or those you don't want users to use without thinking (such as delete).

{% example html %}
<button class="bsk-btn bsk-btn-link" type="submit">Uncommon Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a button:

| Button Size | Button Size Class     |
| ----------- | --------------------- |
| Large       | `.bsk-btn-lg`         |
| Small       | `.bsk-btn-sm`         |
| Extra-small | `.bsk-btn-xl`         |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<p><button class="bsk-btn bsk-btn-default bsk-btn-lg">Large Button</button></p>
<p><button class="bsk-btn bsk-btn-default">Regular Button</button></p>
<p><button class="bsk-btn bsk-btn-default bsk-btn-sm">Small Button</button></p>
<p><button class="bsk-btn bsk-btn-default bsk-btn-xs">Extra-Small Button</button></p>
{% endexample %}

{% include topic-section-metadata.html
  title="Block level buttons"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add `.bsk-btn-block` for buttons to span the width of their parent.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-6 bsk-col-12-md-offset-3">
    <button class="bsk-btn bsk-btn-default bsk-btn-block" type="submit">Block Button</button>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Active state"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Active buttons appear *pressed* using a darker background, border and inset shadow. This state will be applied
automatically when pressed, or forced by adding the `.bsk-active` class if needed.

{% capture alert_content %}
Use `aria-pressed="true"` to give
[proper context to assistive technologies]({{ '/start/standards-accessibility/#link-context-and-roles' | prepend: site.baseurl }}){: .alert-bsk-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<button class="bsk-btn bsk-btn-default bsk-active">Active Action</button>
<a class="bsk-btn bsk-btn-default bsk-active" href="#" role="button">Active Action</a>
{% endexample %}

{% include topic-section-metadata.html
  title="Disabled state"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

<div class="bsk-alert bsk-alert-solid bsk-alert-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="fa fa-fw fa-exclamation-circle bsk-alert-icon"></i>
      It is not safe to rely on this state to prevent users activating disabled actions
    </div>
  </header>
  <p>Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections
   <strong>must</strong> be used for dangerous actions.</p>
</div>

{% include topic-section-metadata.html
  title="Disabled button elements"
  heading_level=4
%}

Add the `disabled` attribute to indicate unavailable actions.

{% example html %}
<button class="bsk-btn bsk-btn-default" disabled>Disabled Action</button>
{% endexample %}

{% include topic-section-metadata.html
  title="Disabled link elements"
  heading_level=4
%}

Add the `.bsk-disabled` class to indicate unavailable actions.

{% example html %}
<a class="bsk-btn bsk-btn-default bsk-disabled" href="#" role="button">Disabled Action</a>
{% endexample %}
