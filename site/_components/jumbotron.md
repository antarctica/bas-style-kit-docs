---
title: Jumbotron
menus:
  primary_components:
    weight: 12
sections:
  -
    title: Overview
  -
    title: Default jumbotron
  -
    title: Inverse jumbotron
  -
    title: Image jumbotron
  -
    title: Jumbotron overlay
  -
    title: Sizes
  -
    title: Full-width jumbotron
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-jumbotron` class to showcase key content.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/jumbotron/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each jumbotron, otherwise it will look strange. It is not enough to use `.bsk-jumbotron` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default jumbotron"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-jumbotron-default` class for a standard jumbotron.

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-default">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="bsk-btn bsk-btn-primary bsk-btn-lg" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Inverse jumbotron"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.jumbotron-inverse` class to use a darker background for a jumbotron.

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-inverse">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="bsk-btn bsk-btn-primary bsk-btn-lg" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Image jumbotron"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

An image can also be used as a background for a jumbotron.

Additional CSS rules, such as the example below, are needed to use an image as a background:

{% highlight scss %}
background-image: url("/img/site-masthead-tom-welsh.jpg");
{% endhighlight %}

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-image-example">
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Components"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Jumbotron overlay"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

Use the `.bsk-jumbotron-overlay` class to add additional contrast around a jumbotron's title.

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-image-example">
  <h1><span class="bsk-jumbotron-overlay">Jumbotron caption</span></h1>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a jumbotron:

| Jumbotron Size | Jumbotron Size Class    |
| -------------- | ----------------------- |
| Extra-large    | `.bsk-jumbotron-xl`     |
| Large          | `.bsk-jumbotron-lg`     |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-default bsk-jumbotron-lg">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="bsk-btn bsk-btn-primary bsk-btn-lg" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% example html %}
<div class="bsk-jumbotron bsk-jumbotron-default bsk-jumbotron-xl">
  <h1>Don't Panic!</h1>
  <p>This should be something snappy, to highlight a message and with a possible call to action.</p>
  <p><a class="bsk-btn bsk-btn-primary bsk-btn-lg" href="#" role="button">Do something</a></p>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Full-width jumbotron"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

If you want a jumbotron to be full width, but within a layout that uses a
[fixed-width container]({{ '/core/layout/#fixed-width-container' | prepend: site.baseurl }}), place the jumbotron
outside any containers, then place a container within the jumbotron.

{% example html %}
<!-- Content before the jumbotron, possibly in a container -->

<!-- Jumbotron, not in a container -->
<div class="bsk-jumbotron bsk-jumbotron-default">
  <div class="bsk-container">
    <!-- Jumbotron contents only are contained in a fixed-width container -->
    Jumbotron contents
  </div>
</div>

<!-- Content after the jumbotron, probably in a container -->
{% endexample %}
