---
title: ORCID iD
menus:
  primary_patterns:
    weight: 8
sections:
  -
    title: Overview
  -
    title: Uses
  -
    title: Basic
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use this component pattern to identify a link as an [ORCID iD](https://orcid.org), by including the ORCID symbol.

As an academic organisation, there are many situations where BAS websites and applications may use ORCID iDs. This
pattern is designed to ensure they are shown in a consistent way that follow the
[ORCID Brand Guidelines](https://orcid.org/trademark-and-id-display-guidelines), which are designed to increase
recognition of ORCID iDs by users.

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Use this pattern when:

* displaying an ORCID iD

When using this pattern, do not:

* change the positioning/ordering of the ORCID iD symbol and link
* change the colour of the ORCID iD symbol
* do anything that goes against the [ORCID Brand Guidelines](https://orcid.org/trademark-and-id-display-guidelines)

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic"
  heading_level=3
  phase="beta"
  initial_version="0.6.0"
  included="yes"
%}

Use the `.bsk-orcid-id` class with the [ORCID icon]({{ '/core/icons#orcid-id-icon' | prepend: site.baseurl }}) inside
a link to the ORCID ID as a URL.

{% example html %}
<a href="https://sandbox.orcid.org/0000-0001-8373-6934">
    <i class="fab fa-orcid bsk-orcid-id"></i>
    https://sandbox.orcid.org/0000-0001-8373-6934
</a>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0019--orcid-id.html){:.bsk-btn.bsk-btn-default}
