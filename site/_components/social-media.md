---
item_type: Component
title: Social media
menus:
  primary_components:
    weight: 24
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

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this component to consistently display links to the social media services BAS uses.

Where possible, the BAS Style Kit uses officially provided assets for social media services, such as logos.

{% capture alert_content %}
All brand assets trademarks of their respective owners, and subject to their respective licensing restrictions. <br />
You **must** ensure that where you use these assets you comply with these restrictions.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Supported services"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

[Colours]({{ '/core/colours/#external-service-colours' | prepend: site.baseurl }}) and
[Icons]({{ '/core/icons/#external-service-icons' | prepend: site.baseurl }}) are defined for each supported service.

| Social Media Service | Social Media Service Class |
| -------------------- | -------------------------- |
| Twitter              | `.bsk-twitter`             |
| Facebook             | `.bsk-facebook`            |
| YouTube              | `.bsk-youtube`             |
| RSS                  | `.bsk-rss`                 |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
[Get in touch]({{ "/feedback.html" | prepend: site.baseurl }}){: .bsk-alert-link } if you require other services.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="States"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Static symbols"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-social-media-static` class with the relevant class for each service, containing the relevant
[icon]({{ '/core/icons/#external-service-icons' | prepend: site.baseurl }}) for each service.

{% example html %}
<!-- Twitter -->
<div class="bsk-social-media-static bsk-twitter"><i class="fab fa-fw fa-3x fa-twitter-square"></i><span class="bsk-sr-only">Follow us on Twitter</span></div>

<!-- Facebook -->
<div class="bsk-social-media-static bsk-facebook"><i class="fab fa-fw fa-3x fa-facebook-square"></i><span class="bsk-sr-only">Follow us on Facebook</span></div>

<!-- YouTube -->
<div class="bsk-social-media-static bsk-youtube"><i class="fab fa-fw fa-3x fa-youtube-square"></i><span class="bsk-sr-only">Subscribe to us on YouTube</span></div>

<!-- RSS -->
<div class="bsk-social-media-static bsk-rss"><i class="fas fa-fw fa-3x fa-rss-square"></i><span class="bsk-sr-only">Follow us with RSS</span></div>
{% endexample %}

{% include topic-section-metadata.html
  title="Linked symbols"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-social-media-link` class with the relevant class for each service, containing the relevant
[icon]({{ '/core/icons/#external-service-icons' | prepend: site.baseurl }}) for each service.

{% example html %}
<!-- Twitter -->
<div><a href="#" class="bsk-social-media-link bsk-twitter"><i class="fab fa-fw fa-3x fa-twitter-square"></i><span class="bsk-sr-only">Follow us on Twitter</span></a></div>

<!-- Facebook -->
<div><a href="#" class="bsk-social-media-link bsk-facebook"><i class="fab fa-fw fa-3x fa-facebook-square"></i><span class="bsk-sr-only">Follow us on Facebook</span></a></div>

<!-- YouTube -->
<div><a href="#" class="bsk-social-media-link bsk-youtube"><i class="fab fa-fw fa-3x fa-youtube-square"></i><span class="bsk-sr-only">Subscribe to us on YouTube</span></a></div>

<!-- RSS -->
<div><a href="#" class="bsk-social-media-link bsk-rss"><i class="fas fa-fw fa-3x fa-rss-square"></i><span class="bsk-sr-only">Follow us with RSS</span></a></div>
{% endexample %}

## Layouts
{: #{{ 'Layouts' | slugify }} }

{% include topic-section-metadata.html
  title="List of symbols"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-social-media-list` class with a [inline list]({{ '/core/type/#inline-lists' | prepend: site.baseurl }})
to display multiple [static]({{ '/components/social-media/#static-symbols' | prepend: site.baseurl }}) or
[linked]({{ '/components/social-media/#linked-symbols' | prepend: site.baseurl }}) social media symbols next to each
other.

{% example html %}
<ul class="bsk-list-inline bsk-social-media-list">
  <li><a href="#" class="bsk-social-media-link bsk-twitter"><i class="fab fa-fw fa-3x fa-twitter-square"></i><span class="bsk-sr-only">Follow us on Twitter</span></a></li>
  <li><a href="#" class="bsk-social-media-link bsk-facebook"><i class="fab fa-fw fa-3x fa-facebook-square"></i><span class="bsk-sr-only">Follow us on Facebook</span></a></li>
  <li><a href="#" class="bsk-social-media-link bsk-youtube"><i class="fab fa-fw fa-3x fa-youtube-square"></i><span class="bsk-sr-only">Subscribe to us on YouTube</span></a></li>
  <li><a href="#" class="bsk-social-media-link bsk-rss"><i class="fas fa-fw fa-3x fa-rss-square"></i><span class="bsk-sr-only">Follow us with RSS</span></a></li>
</ul>
{% endexample %}
