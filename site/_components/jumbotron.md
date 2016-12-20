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

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.jumbotron-bsk` and `.jumbotron` classes to showcase key content.

You **must** pick a [variant]({{ '/components/jumbotron/#variants' | prepend: site.baseurl }}){: .alert-link } for each
jumbotron, otherwise it will look strange. It is not enough to use `.jumbotron .jumbotron-bsk` on its own.
{: .alert .alert-warning }

Always use the `.jumbotron-bsk` and `.jumbotron` classes together so that Style Kit specific styles are applied.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Default jumbotron"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add the `.jumbotron-bsk-default` class for a standard jumbotron.

{% example html %}
<div class="jumbotron jumbotron-bsk jumbotron-bsk-default">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="btn btn-primary btn-lg btn-bsk btn-bsk-primary" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Inverse jumbotron"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.jumbotron-bsk-inverse` class to use a darker background for a jumbotron.

{% example html %}
<div class="jumbotron jumbotron-bsk jumbotron-bsk-inverse">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="btn btn-primary btn-lg btn-bsk btn-bsk-primary" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizes"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a jumbotron:

| Jumbotron Size | Jumbotron Size Class    |
| -------------- | ----------------------- |
| Extra-large    | `.jumbotron-xl`         |
| Large          | `.jumbotron-lg`         |
{: .table .table-responsive }

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

{% include snippets/topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Full-width jumbotron"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

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
