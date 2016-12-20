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
    title: Active item
  -
    title: Disabled item
  -
    title: Pager alignment
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.pagination` class for navigating within large collections of items, such as
[lists]({{ '/core/type/#lists' | prepend: site.baseurl }}) or [tables]({{ '/core/tables' | prepend: site.baseurl }}).

Use the `.pager` class as a simpler alternative to pagination.

This component does not provide pagination or paging functions itself, only styled elements for use with a pagination
or paging implementation. For example [data-tables](https://datatables.net) or [list.js](http://listjs.com).

Use the `aria-label` element so assistive technologies can tell each pagination or pager instance apart.
{: .alert .alert-warning }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default pagination"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

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

{% include snippets/topic-section-metadata.html
  title="Simple pager"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<nav aria-label="pager-example-1">
  <ul class="pager">
    <li><a href="#"><span aria-hidden="true">&larr;</span> Previous</a></li>
    <li><a href="#">Next <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a pagination instance:

| Pagination Size | Pagination Group Size Class |
| --------------- | --------------------------- |
| Large           | `.pagination-lg`            |
| Small           | `.pagination-sm`            |
{: .table .table-responsive }

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

{% include snippets/topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Active item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

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

{% include snippets/topic-section-metadata.html
  title="Disabled item"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

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

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Pager alignment"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.previous` and `.next` classes to position pager elements to the sides.

{% example html %}
<nav aria-label="pager-example-3">
  <ul class="pager">
    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
{% endexample %}
