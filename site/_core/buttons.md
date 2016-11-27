---
title: Buttons
sections:
  -
    title: Supported elements
  -
    title: Default
  -
    title: Primary
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


## Supported elements
{: #{{ 'Supported elements' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

The BAS Style Kit's various button styles are designed for <code>&lt;button&gt;</code> elements.
<code>&lt;a&gt;</code> or <code>&lt;input&gt;</code> elements can be used as well, but may not look right.

You **must** pick a [variant]({{ '/core/buttons/#variants' | prepend: site.baseurl }}){: .alert-link } for each button,
otherwise it will look strange. It is not enough to use `.btn .btn-bsk` on its own.
{: .alert .alert-warning }

Always use `.btn-bsk` and `.btn` together so that Style Kit specific styles are applied.
{: .alert .alert-info }

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

## Variants
{: #{{ 'Variants' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap-custom" included="yes" %}

### Default
{: #{{ 'Default' | slugify }} }

{% include snippets/back-to-top.html %}

Use this variant for standard or secondary buttons. For added context you can use
[contextual colours]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<button class="btn btn-bsk btn-default" type="submit">Action</button>
<button class="btn btn-bsk btn-danger" type="submit">Dangerous Action</button>
{% endexample %}

### Primary
{: #{{ 'Primary' | slugify }} }

{% include snippets/back-to-top.html %}

Use this variant for call to actions or to distinguish the typical or recommended action where there is more than one.

**Heads up!** This class will be renamed `.btn-primary` in the next version of the Style Kit. See
{% jira issue="BSK-130" %} for more information.
{: .alert .alert-info }

{% example html %}
<button class="btn btn-bsk btn-bsk-primary" type="submit">Primary Action</button>
{% endexample %}

### Contextual colours
{: #{{ 'Contextual colours' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-contextual-colours' | prepend: site.baseurl }}) can be
used for adding context to buttons using these classes:

* `.btn-success`
* `.btn-warning`
* `.btn-danger`
* `.btn-info`

The `.btn-default` class isn't needed when using these classes.
{: .alert .alert-info }

{% example html %}
<button class="btn btn-bsk btn-success">Success Action</button>
<button class="btn btn-bsk btn-warning">Warning Action</button>
<button class="btn btn-bsk btn-danger">Dangerous Action</button>
<button class="btn btn-bsk btn-info">Info Action</button>
{% endexample %}

### Contextual icons
{: #{{ 'Contextual icons' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}) can be
used for adding context to buttons, usually with the
[contextual colours]({{ '/core/buttons/#contextual-colours' | prepend: site.baseurl }}).

{% example html %}
<button class="btn btn-bsk btn-success"><i class="fa fa-check" aria-hidden="true"></i> Success Action</button>
<button class="btn btn-bsk btn-warning"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Warning Action</button>
<button class="btn btn-bsk btn-danger"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Dangerous Action</button>
<button class="btn btn-bsk btn-info"><i class="fa fa-info" aria-hidden="true"></i> Info Action</button>
{% endexample %}

### Link
{: #{{ 'Link' | slugify }} }

{% include snippets/back-to-top.html %}

Use this variant to draw attention away from a button, but whilst still functioning like one. Useful for less common
actions, or those you wish to guide users away from.

{% example html %}
<button class="btn btn-bsk btn-link" type="submit">Uncommon Action</button>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<p><button class="btn btn-bsk btn-default btn-lg">Large Button</button></p>
<p><button class="btn btn-bsk btn-default">Regular Button</button></p>
<p><button class="btn btn-bsk btn-default btn-sm">Small Button</button></p>
<p><button class="btn btn-bsk btn-default btn-xs">Extra-Small Button</button></p>
{% endexample %}

### Block level buttons
{: #{{ 'Block level buttons' | slugify }} }

{% include snippets/back-to-top.html %}

Add `.btn-block` for buttons to span the width of their parent.

{% example html %}
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <button class="btn btn-bsk btn-default btn-block" type="submit">Block Button</button>
  </div>
</div>
{% endexample %}

## States
{: #{{ 'States' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

### Active state
{: #{{ 'Active state' | slugify }} }

{% include snippets/back-to-top.html %}

Active buttons appear *pressed* using a darker background, border and inset shadow. This state will be applied
automatically when pressed, or forced by adding the `.active` class if needed.

Use `aria-pressed="true"` to give
[proper context to assistive technologies]({{ '/start/standards-accessibility/#link-context-and-roles' | prepend: site.baseurl }}){: .alert-link }.
{: .alert .alert-info }

{% example html %}
<button class="btn btn-bsk btn-default active">Active Action</button>
<a class="btn btn-bsk btn-default active" href="#" role="button">Active Action</a>
{% endexample %}

### Disabled state
{: #{{ 'Disabled state' | slugify }} }

{% include snippets/back-to-top.html %}

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

#### <code>&lt;button&gt;</code> elements

Unavailable actions can be indicated by adding the `disabled` attribute.

{% example html %}
<button class="btn btn-bsk btn-default" disabled>Disabled Action</button>
{% endexample %}

#### <code>&lt;a&gt;</code> elements

Unavailable actions can be indicated by adding the `.disabled` class.

{% example html %}
<a class="btn btn-bsk btn-default disabled" href="#" role="button">Disabled Action</a>
{% endexample %}
