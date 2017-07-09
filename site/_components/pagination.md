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

Use the `.bsk-pagination` class for navigating within large collections of items, such as
[lists]({{ '/core/type/#lists' | prepend: site.baseurl }}) or [tables]({{ '/core/tables' | prepend: site.baseurl }}).

Use the `.bsk-pager` class as a simpler alternative to pagination.

This component does not provide pagination or paging functions itself, only styled elements for use with a pagination
or paging implementation. For example [data-tables](https://datatables.net) or [list.js](http://listjs.com).

{% alert warning %}
Use the `aria-label` element so assistive technologies can tell each pagination or pager instance apart.
{% endalert %}

{% alert info %}
**Heads up!** Pagination and pager elements are not yet fully styled, but will be in the next version of the Style Kit.
{% endalert %}

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
  <ul class="bsk-pagination">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="bsk-active"><a href="#">1 <span class="bsk-sr-only">(current)</span></a></li>
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
  <ul class="bsk-pager">
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
| Large           | `bsk-pagination-lg`         |
| Small           | `.bsk-pagination-sm`        |
{: .bsk-table .bsk-table-responsive }

{% alert warning %}
These classes don't apply to the pager.
{% endalert %}

{% example html %}
<nav aria-label="pagination-example-2">
  <ul class="bsk-pagination bsk-pagination-sm">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="bsk-sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
<nav aria-label="pagination-example-3">
  <ul class="bsk-pagination">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="bsk-sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
  </ul>
</nav>
<nav aria-label="pagination-example-4">
  <ul class="bsk-pagination bsk-pagination-lg">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="bsk-sr-only">(current)</span></a></li>
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

Add the `.bsk-active` class to indicate the current pagination item.

The active state doesn't apply to the pager.
{: .alert .alert-info }

{% example html %}
<nav aria-label="pagination-example-5">
  <ul class="bsk-pagination">
    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="bsk-active"><a href="#">1 <span class="bsk-sr-only">(current)</span></a></li>
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

Add the `.bsk-disabled` class to indicate unavailable items or actions.

<div class="bsk-alert bsk-alert-solid-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-title">
    <h4><i class="fa fa-fw fa-exclamation-circle bsk-alert-icon"></i>
    It is not safe to rely on this state to prevent users activating disabled actions</h4>
  </header>
  <p>Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections
   <strong>must</strong> be used for dangerous actions.</p>
</div>

{% example html %}
<nav aria-label="pagination-example-6">
  <ul class="bsk-pagination">
    <li class="bsk-disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li><a href="#">1 <span class="bsk-sr-only">(current)</span></a></li>
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
  <ul class="bsk-pager">
    <li class="bsk-disabled"><a href="#"><span aria-hidden="true">&larr;</span> Previous</a></li>
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

Add the `.bsk-previous` and `.bsk-next` classes to position pager elements to the sides.

{% example html %}
<nav aria-label="pager-example-3">
  <ul class="bsk-pager">
    <li class="bsk-previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
    <li class="bsk-next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
{% endexample %}
