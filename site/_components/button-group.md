---
title: Button-Group
sections:
  -
    title: Overview
  -
    title: Default button group
  -
    title: Default button toolbar
  -
    title: Sizes
  -
    title: Nested button groups
  -
    title: Vertical button groups
  -
    title: Justified button groups
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.btn-group` class to combine buttons together into groups. Use the `.btn-toolbar` class to combine groups
together into toolbars.

For assistive technologies, all button groups and toolbars should use a `aria-label` or `aria-labelledby` and
`role=group` or `role=toolbar` attribute to describe themselves.
{: .alert .alert-warning }

For buttons within button groups, remember to use the `.btn` and `.btn-bsk` classes together so that Style Kit specific
styles are applied.
{: .alert .alert-info }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default button group
{: #{{ 'Default button group' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Groups contain buttons.

{% example html %}
<div class="btn-group" role="group" aria-label="Button group example 1">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <button type="button" class="btn btn-bsk btn-default">Three</button>
</div>
{% endexample %}

### Default button toolbar
{: #{{ 'Default button toolbar' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Toolbars contain groups.

{% example html %}
<div class="btn-toolbar" role="toolbar" aria-label="Button toolbar example 1">
  <div class="btn-group" role="group" aria-label="Button group example 2">
    <button type="button" class="btn btn-bsk btn-default">One</button>
    <button type="button" class="btn btn-bsk btn-default">Two</button>
    <button type="button" class="btn btn-bsk btn-default">Three</button>
  </div>
  <div class="btn-group" role="group" aria-label="Button group example 3">
    <button type="button" class="btn btn-bsk btn-default">One</button>
    <button type="button" class="btn btn-bsk btn-default">Two</button>
    <button type="button" class="btn btn-bsk btn-default">Three</button>
  </div>
</div>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add one of these classes to alter the size of a button group:

| Button Group Size | Button Group Size Class |
| ----------------- | ----------------------- |
| Large             | `.btn-group-lg`         |
| Small             | `.btn-group-sm`         |
| Extra-small       | `.btn-group-xl`         |
{: .table }

Individual buttons will inherit the size of each button group.
{: .alert .alert-info }

{% example html %}
<!-- Large button group -->
<div class="btn-group btn-group-lg" role="group" aria-label="Large button group example 1">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <button type="button" class="btn btn-bsk btn-default">Three</button>
</div>
<br /><br />

<!-- Regular button group -->
<div class="btn-group" role="group" aria-label="Regular button group example 4">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <button type="button" class="btn btn-bsk btn-default">Three</button>
</div>
<br /><br />

<!-- Small button group -->
<div class="btn-group btn-group-sm" role="group" aria-label="Small button group example 1">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <button type="button" class="btn btn-bsk btn-default">Three</button>
</div>
<br /><br />

<!-- Extra-small button group -->
<div class="btn-group btn-group-xs" role="group" aria-label="Extra-small button group example 1">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <button type="button" class="btn btn-bsk btn-default">Three</button>
</div>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }} }

### Nested button groups
{: #{{ 'Nested button groups' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Button groups can be nested to include drop-down menus with buttons in a group.

Remember, use the `.dropdown-menu-bsk` and `.dropdown-menu` classes together so that Style Kit specific styles are
applied.
{: .alert .alert-info }

{% example html %}
<div class="btn-group" role="group" aria-label="Button group example 5">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <div class="btn-group" role="group" aria-label="Button group example 5 drop-down 1">
    <button type="button" class="btn btn-bsk btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu dropdown-menu-bsk">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}

### Vertical button groups
{: #{{ 'Vertical button groups' | slugify }} }

Use the `.btn-group-vertical` class instead of `.btn-group` to stack buttons vertically.

Split button drop-downs and button toolbars are not supported in vertical button groups.
{: .alert .alert-danger }

{% example html %}
<div class="btn-group-vertical" role="group" aria-label="Button group example 6">
  <button type="button" class="btn btn-bsk btn-default">One</button>
  <button type="button" class="btn btn-bsk btn-default">Two</button>
  <div class="btn-group" role="group" aria-label="Button group example 6 drop-down 1">
    <button type="button" class="btn btn-bsk btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu dropdown-menu-bsk">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}

### Justified button groups
{: #{{ 'Justified button groups' | slugify }} }

Add the `.btn-group-justified` class to display equally sized buttons filling the width of the button group element.

Because of the CSS needed to make justified button groups work, borders between buttons might look strange.
{: .alert .alert-info }

For button groups using <code>&lt;a&gt;</code> button elements, justified button groups will work as expected.

{% example html %}
<div class="btn-group btn-group-justified" role="group" aria-label="Button group example 7">
  <a role="button" class="btn btn-bsk btn-default">One</a>
  <a role="button" class="btn btn-bsk btn-default">Two</a>
  <div class="btn-group" role="group" aria-label="Button group example 7 drop-down 1">
    <button type="button" class="btn btn-bsk btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu dropdown-menu-bsk">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}

For button groups using <code>&lt;button&gt;</code> button elements, each button **must** nest each button in a
`.btn-group` otherwise it won't be correctly aligned or styled.
{: .alert .alert-warning }

{% example html %}
<div class="btn-group btn-group-justified" role="group" aria-label="Button group example 8">
  <div class="btn-group" role="group" aria-label="Button group example 8 wrapper 1">
    <button type="button" class="btn btn-bsk btn-default">One</button>
  </div>
  <div class="btn-group" role="group" aria-label="Button group example 8 wrapper 2">
    <button type="button" class="btn btn-bsk btn-default">Two</button>
  </div>
  <div class="btn-group" role="group" aria-label="Button group example 8 drop-down 1">
    <button type="button" class="btn btn-bsk btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu dropdown-menu-bsk">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}
