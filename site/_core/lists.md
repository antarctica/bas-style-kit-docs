---
title: Lists
sections:
  -
    title: Lists
  -
    title: Definition lists
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Lists"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Unordered Links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<ul>
  <li>High Frequency (HF) &mdash; Field radios</li>
  <li>VHF Radio (marine band - FM) &mdash; Base station and handheld mobile units</li>
  <li>VHF Radio (aeronautical band - AM) &mdash; Base station and handheld mobile units</li>
  <li>Iridium satellite system &mdash; Base station and handheld mobile units</li>
  <li>Very Small Aperture Terminal (VSAT) Satellite system (main communication system)</li>
  <li>Voice over IP (VoIP) Telephone system</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Ordered Links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

{% example html %}
<ol>
  <li>check eligibility and requirements</li>
  <li>submit a Preliminary request for Antarctic logistic support</li>
  <li>submit a funding proposal - Deadline <strong>19th July 2016 16:00 BST</strong></li>
</ol>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Unstyled Links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Removes the default `list-style` and margin left margin. Useful for things which semantically are lists, but shouldn't
be styled as such.

**This only applies to immediate list items.** I.e. this style won't be used by any nested lists.

{% example html %}
<ul class="list-unstyled">
  <li>unstyled list item</li>
  <li>unstyled list item</li>
  <li>
    <ol>
      <li>not an unstyled ordered list item</li>
      <li>not an unstyled ordered list item</li>
    </ol>
  </li>
  <li>
    <ul>
      <li>not an unstyled unordered list item</li>
      <li>not an unstyled unordered list item</li>
    </ul>
  </li>
</ul>

<ul class="list-unstyled">
  <li>2012 &mdash; Present: Head of Information Services (Band 4), BAS</li>
  <li>2006 &mdash; 2012: Senior Geoscience Data Manager (Band 5), BAS</li>
  <li>2002 &mdash; 2006: Geology Data Manager (Band 6), BAS</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Inline Links"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Place all list items on a single line, with a margin between.

{% example html %}
<ul class="list-inline">
  <li>Information Services</li>
  <li>Polar Data Centre</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Definition Lists"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

A list of terms with associated definitions.

{% example html %}
<dl>
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Horizontal Definition Lists"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add `.dl-horizontal` to show terms and definitions side-by-side (or stacked at smaller sizes).

Terms which are too long will be truncated.
{: .alert .alert-info }

{% example html %}
<dl class="dl-horizontal">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Large definition Lists"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add `.dl-bsk` to apply additional padding.

**Heads up!** This class will be renamed `.dl-bsk-lg` in the next version of the Style Kit. See
[BSK-128](https://jira.ceh.ac.uk/browse/bsk-128) for more information.
{: .alert .alert-info }

{% example html %}
<dl class="dl-bsk">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Large horizontal definition Lists"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add `.dl-bsk-horizontal-lg` to extend the width of terms in horizontal definition lists.

This class depends on using `.dl-horizontal` as well.
{: .alert .alert-warning }

{% example html %}
<dl class="dl-horizontal dl-bsk-horizontal-lg">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Striped definition Lists"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Add `.dl-bsk-striped` to apply additional styling to terms.

This class is designed to be used with `.dl-bsk` to ensure a suitable amount of padding.
{: .alert .alert-info}

{% example html %}
<dl class="dl-bsk dl-bsk-striped">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Striped horizontal definition Lists"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

The `.dl-bsk-striped` class can be combined with `.dl-horizontal`, or `.dl-bsk-horizontal-lg`.

Remember, the `.dl-bsk-striped` class is designed to be used with `.dl-bsk` to ensure a suitable amount of padding.
{: .alert .alert-info}

Remember, the `.dl-bsk-horizontal-lg` class depends on using `.dl-horizontal` as well.
{: .alert .alert-warning }

{% example html %}
<dl class="dl-bsk dl-bsk-striped dl-horizontal">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>

<dl class="dl-bsk dl-bsk-striped dl-horizontal dl-bsk-horizontal-lg">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>
{% endexample %}
