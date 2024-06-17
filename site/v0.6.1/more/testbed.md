---
item_type: Resource
title: Testbed
menus:
  primary_more:
    weight: 4
sections:
  -
    title: Style Kit Testbed
---

## BAS Style Kit Testbed
{: #{{ 'Style Kit Testbed' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

A separate resource is used for developing the BAS Style Kit, known as the Testbed. This contains a number of different
*samples* designed to test specific parts of the Style Kit in isolation.

This allows new features to be tested more easily, and prevents this documentation being misused as an enumeration of
all of the possible ways the Style Kit could be used - which would not be useful.

{% capture alert_content %}
The Testbed is **not** designed for end-users and does not supplement or replace this documentation. It includes
examples intentionally designed not to work or for testing.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

[View the testbed](https://style-kit-testbed.web.bas.ac.uk/master/){: .bsk-btn .bsk-btn-lg .bsk-btn-default }
