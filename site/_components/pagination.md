---
title: Pagination
sections:
  -
    title: Overview
  -
    title: Default pagination
  -
    title: Simple pager
  -
    title: Sizes
  -
    title: Active state
  -
    title: Disabled state
  -
    title: Pager alignment
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.pagination` class for navigating within large collections of items, such as
[lists]({{ '/core/type/#lists' | prepend: site.baseurl }}) or [tables]({{ '/core/tables' | prepend: site.baseurl }}).

Use the `.pager` class as a simpler alternative to pagination.

This component does not provide pagination or paging functions itself, only styled elements for use with a pagination
or paging implementation. For example [data-tables](https://datatables.net) or [list.js](http://listjs.com).

Use the `aria-label` element so assistive technologies can tell each pagination or pager instance apart.
{: .alert .alert-warning }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default pagination
{: #{{ 'Default pagination' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<nav aria-label="pagination-example-1">
  <ul class="pagination">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
{% endexample %}

### Simple pager
{: #{{ 'Simple pager' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

{% example html %}
<nav aria-label="pager-example-1">
  <ul class="pager">
    <li><a href="#"><span aria-hidden="true">&larr;</span> Previous</a></li>
    <li><a href="#">Next <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.pagination-sm` or `.pagination-lg` class to create smaller or larger pagination elements.

These classes don't apply to the pager.
{: .alert .alert-info }

{% example html %}
<nav aria-label="pagination-example-2">
  <ul class="pagination pagination-sm">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
<nav aria-label="pagination-example-3">
  <ul class="pagination">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
<nav aria-label="pagination-example-4">
  <ul class="pagination pagination-lg">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
{% endexample %}

## States
{: #{{ 'States' | slugify }} }

### Active state
{: #{{ 'Active state' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.active` class to indicate the current pagination item.

The active state doesn't apply to the pager.
{: .alert .alert-info }

{% example html %}
<nav aria-label="pagination-example-5">
  <ul class="pagination">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
{% endexample %}

### Disabled state
{: #{{ 'Disabled state' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.disabled` class to indicate unavailable items or actions.

{% example html %}
<nav aria-label="pagination-example-6">
  <ul class="pagination">
    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
{% endexample %}

{% example html %}
<nav aria-label="pager-example-2">
  <ul class="pager">
    <li class="disabled"><a href="#"><span aria-hidden="true">&larr;</span> Previous</a></li>
    <li><a href="#">Next <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }} }

### Pager alignment
{: #{{ 'Pager alignment' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add the `.previous` and `.next` classes to position pager elements to the sides.

{% example html %}
<nav aria-label="pager-example-3">
  <ul class="pager">
    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
{% endexample %}
