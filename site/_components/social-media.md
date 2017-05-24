---
title: Social media
sections:
  -
    title: Overview
  -
    title: Static symbols
  -
    title: Linked symbols
  -
    title: Layouts
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this component to consistently display links to the social media services BAS uses.

Where possible, the BAS Style Kit uses officially provided assets for social media services, such as logos.

All brand assets trademarks of their respective owners, and subject to their respective licensing restrictions. <br />
You must ensure that where you use these assets you comply with these restrictions.
{: .alert .alert-warning }

{% include snippets/topic-section-metadata.html
  title="Supported services"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

| Social Media Service | Social Media Service Class |
| -------------------- | -------------------------- |
| Twitter              | `.twitter`                 |
| Facebook             | `.facebook`                |
| YouTube              | `.youtube`                 |
| RSS                  | `.rss`                     |
{: .table .table-responsive }

[Colours]({{ '/core/colours/#external-service-colours' | prepend: site.baseurl }}) and
[Icon]({{ '/core/icons/#external-service-icons' | prepend: site.baseurl }}) are defined for each supported social media
service.

[Send feedback]({{ "/feedback.html" | prepend: site.baseurl }}){: .alert-link } if you require other services.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Static symbols"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.social-media-bsk-static` class with the relevant class for each service, containing the relevant
[icon]({{ '/core/icons/#external-service-icons' | prepend: site.baseurl }}) for each service.

{% example html %}
<!-- Twitter -->
<div class="social-media-bsk-static twitter"><i class="fa fa-fw fa-3x fa-twitter-square"></i><span class="sr-only">Follow us on Twitter</span></div>

<!-- Facebook -->
<div class="social-media-bsk-static facebook"><i class="fa fa-fw fa-3x fa-facebook-square"></i><span class="sr-only">Follow us on Facebook</span></div>

<!-- YouTube -->
<div class="social-media-bsk-static youtube"><i class="fa fa-fw fa-3x fa-youtube-square"></i><span class="sr-only">Subscribe to us on YouTube</span></div>

<!-- RSS -->
<div class="social-media-bsk-static rss"><i class="fa fa-fw fa-3x fa-rss-square"></i><span class="sr-only">Follow us with RSS</span></div>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Linked symbols"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `.social-media-bsk-link` class with the relevant class for each service, containing the relevant
[icon]({{ '/core/icons/#external-service-icons' | prepend: site.baseurl }}) for each service.

{% example html %}
<!-- Twitter -->
<div><a href="#" class="social-media-bsk-link twitter"><i class="fa fa-fw fa-3x fa-twitter-square"></i><span class="sr-only">Follow us on Twitter</span></a></div>

<!-- Facebook -->
<div><a href="#" class="social-media-bsk-link facebook"><i class="fa fa-fw fa-3x fa-facebook-square"></i><span class="sr-only">Follow us on Facebook</span></a></div>

<!-- YouTube -->
<div><a href="#" class="social-media-bsk-link youtube"><i class="fa fa-fw fa-3x fa-youtube-square"></i><span class="sr-only">Subscribe to us on YouTube</span></a></div>

<!-- RSS -->
<div><a href="#" class="social-media-bsk-link rss"><i class="fa fa-fw fa-3x fa-rss-square"></i><span class="sr-only">Follow us with RSS</span></a></div>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }} }

{% include snippets/topic-section-metadata.html
  title="List of symbols"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Use the `social-media-bsk-list` class with a [inline list]({{ '/core/type/#inline-lists' | prepend: site.baseurl }})
to display multiple [static]({{ '/components/social-media/#static-symbols' | prepend: site.baseurl }}) or
[linked]({{ '/components/social-media/#linked-symbols' | prepend: site.baseurl }}) social media symbols next to each
other.

{% example html %}
<ul class="list-inline social-media-bsk-list">
  <li><a href="#" class="social-media-bsk-link twitter"><i class="fa fa-fw fa-3x fa-twitter-square"></i><span class="sr-only">Follow us on Twitter</span></a></li>
  <li><a href="#" class="social-media-bsk-link facebook"><i class="fa fa-fw fa-3x fa-facebook-square"></i><span class="sr-only">Follow us on Facebook</span></a></li>
  <li><a href="#" class="social-media-bsk-link youtube"><i class="fa fa-fw fa-3x fa-youtube-square"></i><span class="sr-only">Subscribe to us on YouTube</span></a></li>
  <li><a href="#" class="social-media-bsk-link rss"><i class="fa fa-fw fa-3x fa-rss-square"></i><span class="sr-only">Follow us with RSS</span></a></li>
</ul>
{% endexample %}
