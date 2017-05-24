---
title: Buttons
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

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.btn` and `.btn-bsk` classes to create clickable actions or links.

You **must** pick a [variant]({{ '/core/buttons/#variants' | prepend: site.baseurl }}){: .alert-link } for each button,
otherwise it will look strange. It is not enough to use `.btn .btn-bsk` on its own.
{: .alert .alert-warning }

Always use the `.btn-bsk` and `.btn` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

These styles are fully supported when used with these elements:

* <code>&lt;button&gt;</code>

These styles are also supported, but to a lesser extent, when used with these elements:

* <code>&lt;a&gt;</code>
* <code>&lt;input&gt;</code>

Other elements may be used as well, but are not supported and may not look right.

Use `role="button"` for link elements which trigger in-page functionality (such as collapsing
content) to give
[proper context to assistive technologies]({{ '/start/standards-accessibility/#link-context-and-roles' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-info }

{% example html %}
<button class="btn btn-bsk btn-default" type="submit">Button</button>
<input class="btn btn-bsk btn-default" type="button" value="Input">
<input class="btn btn-bsk btn-default" type="submit" value="Submit">
<a class="btn btn-bsk btn-default" href="#" role="button">Link</a>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default button"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.btn-default` for standard or secondary buttons. For added context you can use
[contextual colours]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<button class="btn btn-bsk btn-default" type="submit">Action</button>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Primary button"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

**Heads up!** This class will be renamed `.btn-primary` in the next version of the Style Kit. See
[BSK-130](https://jira.ceh.ac.uk/browse/bsk-130) for more information.
{: .alert .alert-info }

{% example html %}
<button class="btn btn-bsk btn-bsk-primary" type="submit">Primary Action</button>
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

| Standard Context | Button Contextual Class |
| ---------------- | ----------------------- |
| Success          | `.btn-success`          |
| Warning          | `.btn-warning`          |
| Danger           | `.btn-danger`           |
| Info             | `.btn-info`             |
{: .table .table-responsive }

{% example html %}
<button class="btn btn-bsk btn-success">Success Action</button>
<button class="btn btn-bsk btn-warning">Warning Action</button>
<button class="btn btn-bsk btn-danger">Dangerous Action</button>
<button class="btn btn-bsk btn-info">Info Action</button>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Contextual icons"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can be
used for adding context to buttons, usually with the
[contextual colours]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<button class="btn btn-bsk btn-success"><i class="fa fa-fw fa-check" aria-hidden="true"></i> Success Action</button>
<button class="btn btn-bsk btn-warning"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Warning Action</button>
<button class="btn btn-bsk btn-danger"><i class="fa fa-fw fa-exclamation-circle" aria-hidden="true"></i> Dangerous Action</button>
<button class="btn btn-bsk btn-info"><i class="fa fa-fw fa-info" aria-hidden="true"></i> Info Action</button>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Link"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use this variant to draw attention away from a button, but whilst still functioning like one. Useful for less common
actions, or those you wish to guide users away from.

{% example html %}
<button class="btn btn-bsk btn-link" type="submit">Uncommon Action</button>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a button:

| Button Size | Button Size Class |
| ----------- | ----------------- |
| Large       | `.btn-lg`         |
| Small       | `.btn-sm`         |
| Extra-small | `.btn-xl`         |
{: .table .table-responsive }

{% example html %}
<p><button class="btn btn-bsk btn-default btn-lg">Large Button</button></p>
<p><button class="btn btn-bsk btn-default">Regular Button</button></p>
<p><button class="btn btn-bsk btn-default btn-sm">Small Button</button></p>
<p><button class="btn btn-bsk btn-default btn-xs">Extra-Small Button</button></p>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Block level buttons"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add `.btn-block` for buttons to span the width of their parent.

{% example html %}
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <button class="btn btn-bsk btn-default btn-block" type="submit">Block Button</button>
  </div>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Active state"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Active buttons appear *pressed* using a darker background, border and inset shadow. This state will be applied
automatically when pressed, or forced by adding the `.active` class if needed.

Use `aria-pressed="true"` to give
[proper context to assistive technologies]({{ '/start/standards-accessibility/#link-context-and-roles' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-info }

{% example html %}
<button class="btn btn-bsk btn-default active">Active Action</button>
<a class="btn btn-bsk btn-default active" href="#" role="button">Active Action</a>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Disabled state"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

{% include snippets/topic-section-metadata.html
  title="Disabled button elements"
  heading_level=4
%}

Add the `disabled` attribute to indicate unavailable actions.

{% example html %}
<button class="btn btn-bsk btn-default" disabled>Disabled Action</button>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Disabled link elements"
  heading_level=4
%}

Add the `.disabled` class to indicate unavailable actions.

{% example html %}
<a class="btn btn-bsk btn-default disabled" href="#" role="button">Disabled Action</a>
{% endexample %}
