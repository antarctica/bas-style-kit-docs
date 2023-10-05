---
item_type: Component
title: Button group
menus:
  primary_components:
    weight: 6
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
    title: Nested button group
  -
    title: Vertical button group
  -
    title: Justified button group
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-btn-group` class to combine buttons together into groups. Use the `.bsk-btn-toolbar` class to combine
groups together into toolbars.

{% capture alert_content %}
For assistive technologies, all button groups and toolbars should use a `aria-label` or `aria-labelledby` and
`role=group` or `role=toolbar` attribute to describe themselves.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default button group"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Groups contain buttons.

{% example html %}
<div class="bsk-btn-group" role="group" aria-label="Button group example 1">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <button type="button" class="bsk-btn bsk-btn-default">Three</button>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Default button toolbar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Toolbars contain groups.

{% example html %}
<div class="bsk-btn-toolbar" role="toolbar" aria-label="Button toolbar example 1">
  <div class="bsk-btn-group" role="group" aria-label="Button group example 2">
    <button type="button" class="bsk-btn bsk-btn-default">One</button>
    <button type="button" class="bsk-btn bsk-btn-default">Two</button>
    <button type="button" class="bsk-btn bsk-btn-default">Three</button>
  </div>
  <div class="bsk-btn-group" role="group" aria-label="Button group example 3">
    <button type="button" class="bsk-btn bsk-btn-default">One</button>
    <button type="button" class="bsk-btn bsk-btn-default">Two</button>
    <button type="button" class="bsk-btn bsk-btn-default">Three</button>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
%}

Add one of these classes to alter the size of a button group:

| Button Group Size | Button Group Size Class |
| ----------------- | ----------------------- |
| Large             | `.bsk-btn-group-lg`     |
| Small             | `.bsk-btn-group-sm`     |
| Extra-small       | `.bsk-btn-group-xl`     |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
Individual buttons will inherit the size of each button group.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<!-- Large button group -->
<div class="bsk-btn-group bsk-btn-group-lg" role="group" aria-label="Large button group example 1">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <button type="button" class="bsk-btn bsk-btn-default">Three</button>
</div>
<br /><br />

<!-- Regular button group -->
<div class="bsk-btn-group" role="group" aria-label="Regular button group example 4">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <button type="button" class="bsk-btn bsk-btn-default">Three</button>
</div>
<br /><br />

<!-- Small button group -->
<div class="bsk-btn-group bsk-btn-group-sm" role="group" aria-label="Small button group example 1">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <button type="button" class="bsk-btn bsk-btn-default">Three</button>
</div>
<br /><br />

<!-- Extra-small button group -->
<div class="bsk-btn-group bsk-btn-group-xs" role="group" aria-label="Extra-small button group example 1">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <button type="button" class="bsk-btn bsk-btn-default">Three</button>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Nested button group"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Button groups can be nested to include drop-down menus with buttons in a group.

{% example html %}
<div class="bsk-btn-group" role="group" aria-label="Button group example 5">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <div class="bsk-btn-group" role="group" aria-label="Button group example 5 drop-down 1">
    <button type="button" class="bsk-btn bsk-btn-default bsk-dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="bsk-caret"></span>
    </button>
    <ul class="bsk-dropdown-menu">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Vertical button group"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Use the `.bsk-btn-group-vertical` class **instead** of `.bsk-btn-group` to stack buttons vertically.

{% capture alert_content %}
Split button drop-downs and button toolbars are not supported in vertical button groups.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-btn-group-vertical" role="group" aria-label="Button group example 6">
  <button type="button" class="bsk-btn bsk-btn-default">One</button>
  <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  <div class="bsk-btn-group" role="group" aria-label="Button group example 6 drop-down 1">
    <button type="button" class="bsk-btn bsk-btn-default bsk-dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="bsk-caret"></span>
    </button>
    <ul class="bsk-dropdown-menu">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Justified button group"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Add the `.bsk-btn-group-justified` class to display equally sized buttons filling the width of the button group element.

For button groups using <code>&lt;a&gt;</code> button elements, justified button groups will work as expected.

{% example html %}
<div class="bsk-btn-group bsk-btn-group-justified" role="group" aria-label="Button group example 7">
  <a role="button" class="bsk-btn bsk-btn-default">One</a>
  <a role="button" class="bsk-btn bsk-btn-default">Two</a>
  <div class="bsk-btn-group" role="group" aria-label="Button group example 7 drop-down 1">
    <button type="button" class="bsk-btn bsk-btn-default bsk-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="bsk-caret"></span>
    </button>
    <ul class="bsk-dropdown-menu">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}

For button groups using <code>&lt;button&gt;</code> button elements, each button **must** nest each button in a
`.bsk-btn-group` otherwise it won't be correctly aligned or styled.
{: .alert .alert-warning }

{% example html %}
<div class="bsk-btn-group bsk-btn-group-justified" role="group" aria-label="Button group example 8">
  <div class="bsk-btn-group" role="group" aria-label="Button group example 8 wrapper 1">
    <button type="button" class="bsk-btn bsk-btn-default">One</button>
  </div>
  <div class="bsk-btn-group" role="group" aria-label="Button group example 8 wrapper 2">
    <button type="button" class="bsk-btn bsk-btn-default">Two</button>
  </div>
  <div class="bsk-btn-group" role="group" aria-label="Button group example 8 drop-down 1">
    <button type="button" class="bsk-btn bsk-btn-default bsk-dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown
      <span class="bsk-caret"></span>
    </button>
    <ul class="bsk-dropdown-menu">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
    </ul>
  </div>
</div>
{% endexample %}
