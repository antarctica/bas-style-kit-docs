---
slug: index
layout: default
title: Core styles
---

<div class="page-header" markdown="1">
# Core styles

Global CSS settings, fundamental HTML elements styled and enhanced with extensible classes, and an advanced grid system.
{: .lead }
</div>

## In this section ...

<ul class="list-unstyled">
{% for topic in site.core %}
  {% unless topic.slug == "index" %}
    <li>
        <h3><a href="{{ topic.url | prepend: site.baseurl }}">{{ topic.title }}</a></h3>
        <ul class="list-unstyled">
            {% for section in topic.sections %}
                <li><h5><a href="{{ topic.url | prepend: site.baseurl }}#{{ section.slug }}">{{ section.title }}</a></h5></li>
            {% endfor %}
        </ul>
    </li>
  {% endunless %}
{% endfor %}
</ul>
