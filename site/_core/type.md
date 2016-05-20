---
title: Typography
sections:
  -
    title: Overview
  -
    title: Headings
  -
    title: Paragraphs
  -
    title: Lists
  -
    title: Contextual colours
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }} }

... <mark>TODO</mark> ...
{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}


* include base font-size and controlling variable (14px).
* include base font-family and line-height - note the line height is inherited in some cases for consistency

## Headings
{: #{{ 'Headings' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

... <mark>TODO</mark> ...

## Paragraphs
{: #{{ 'Paragraphs' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

... <mark>TODO</mark> ...

## Lists
{: #{{ 'Lists' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

... <mark>TODO</mark> ...

## Contextual colours
{: #{{ 'Contextual colours' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The [standard contextual colours]({{ '/core/colours/#standard-conventional-colours' | prepend: site.baseurl }}) can be 
used to apply context to text using these classes:

* `.text-success`
* `.text-warning`
* `.text-danger`
* `.text-info`

{% example html %}
<p class="text-success">De carne animata corpora quaeritis.</p>
<p class="text-warning">De carne animata corpora quaeritis.</p>
<p class="text-danger">De carne animata corpora quaeritis.</p>
<p class="text-info">De carne animata corpora quaeritis.</p>
{% endexample %}
