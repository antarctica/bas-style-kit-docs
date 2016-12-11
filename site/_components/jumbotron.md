---
title: Jumbotron
sections:
  -
    title: Overview
  -
    title: Default jumbotron
  -
    title: Inverse jumbotron
  -
    title: Sizes
  -
    title: Full-width jumbotron
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.jumbotron-bsk` and `.jumbotron` classes to showcase key content.

You **must** pick a [variant]({{ '/components/jumbotron/#variants' | prepend: site.baseurl }}){: .alert-link } for each
jumbotron, otherwise it will look strange. It is not enough to use `.jumbotron .jumbotron-bsk` on its own.
{: .alert .alert-warning }

Always use the `.jumbotron-bsk` and `.jumbotron` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

## Variants
{: #{{ 'Variants' | slugify }} }

### Default jumbotron
{: #{{ 'Default jumbotron' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Add the `.jumbotron-bsk-default` class for a standard jumbotron.

{% example html %}
<div class="jumbotron jumbotron-bsk jumbotron-bsk-default">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="btn btn-primary btn-lg btn-bsk btn-bsk-primary" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

### Inverse jumbotron
{: #{{ 'Full-width jumbotron' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Use the `.jumbotron-bsk-inverse` class to use a darker background for a jumbotron.

{% example html %}
<div class="jumbotron jumbotron-bsk jumbotron-bsk-inverse">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="btn btn-primary btn-lg btn-bsk btn-bsk-primary" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Add one of these classes to alter the size of a jumbotron:

| Jumbotron Size | Jumbotron Size Class    |
| -------------- | ----------------------- |
| Extra-large    | `.jumbotron-xl`         |
| Large          | `.jumbotron-lg`         |
{: .table }

{% example html %}
<div class="jumbotron jumbotron-bsk jumbotron-bsk-default jumbotron-bsk-lg">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="btn btn-primary btn-lg btn-bsk btn-bsk-primary" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% example html %}
<div class="jumbotron jumbotron-bsk jumbotron-bsk-default jumbotron-bsk-xl">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="btn btn-primary btn-lg btn-bsk btn-bsk-primary" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }} }

### Full-width jumbotron
{: #{{ 'Full-width jumbotron' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

If you want a jumbotron to be full width, but within a layout that uses a
[fixed-width container]({{ '/core/layout/#fixed-width-container' | prepend: site.baseurl }}), place the jumbotron
outside any containers, then place a container within the jumbotron.

{% example html %}
<!-- Content before the jumbotron, possibly in a container -->

<!-- Jumbotron, not in a container -->
<div class="jumbotron">
  <div class="container">
    <!-- Jumbotron contents only are contained in a fixed-width container -->
    Jumbotron contents
  </div>
</div>

<!-- Content after the jumbotron, probably in a container -->
{% endexample %}
