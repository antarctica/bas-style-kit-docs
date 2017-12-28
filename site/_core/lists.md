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
  phase="live"
  initial_version="0.1.0"
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
  phase="live"
  initial_version="0.1.0"
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
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-list-unstyled` class to remove the default `list-style` and margin left margin. Useful for things which
semantically are lists, but shouldn't be styled as such.

{% alert info style=highlight %}
This only applies to immediate list items. I.e. this style won't be used by any nested lists.
{% endalert %}

{% example html %}
<ul class="bsk-list-unstyled">
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

<ul class="bsk-list-unstyled">
  <li>2012 &mdash; Present: Head of Information Services (Band 4), BAS</li>
  <li>2006 &mdash; 2012: Senior Geoscience Data Manager (Band 5), BAS</li>
  <li>2002 &mdash; 2006: Geology Data Manager (Band 6), BAS</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Inline Links"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-list-inline` class to place all list items on a single line, with horizontal spacing between.

{% example html %}
<ul class="bsk-list-inline">
  <li>Information Services</li>
  <li>Polar Data Centre</li>
</ul>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Definition Lists"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
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

Add the `.bsk-dl-horizontal` class to show terms and definitions side-by-side (or stacked at smaller sizes).

{% alert info %}
Terms which are too long will be truncated.
{% endalert %}

{% example html %}
<dl class="bsk-dl-horizontal">
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
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-dl-lg` class to apply additional padding.

{% example html %}
<dl class="bsk-dl-lg">
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
  phase="live"
  initial_version="0.1.0"
  revised_version="0.2.0"
  included="yes"
%}

Add the `.bsk-dl-horizontal-lg` class to extend the width of terms in horizontal
definition lists.

{% alert warning style=highlight %}
This class depends on the `.bsk-dl-horizontal` class.
{% endalert %}

{% example html %}
<dl class="bsk-dl-horizontal bsk-dl-horizontal-lg">
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
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add `.bsk-dl-striped` to apply additional styling to terms.

{% alert info style=highlight %}
This class is designed to be used with `.bsk-dl-lg` to ensure a suitable amount of padding.
{% endalert %}

{% example html %}
<dl class="bsk-dl-lg bsk-dl-striped">
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
  phase="live"
  initial_version="0.1.0"
  revised_version="0.2.0"
  included="yes"
%}

The `.bsk-dl-striped` class can be combined with `.bsk-dl-horizontal`, or `.bsk-dl-horizontal-lg`.

{% alert warning style=highlight %}
Remember, the `.bsk-dl-horizontal-lg` class depends on the `.bsk-dl-horizontal` class.
{% endalert %}

{% alert info style=highlight %}
Remember, the `.bsk-dl-striped` class is designed to be used with `.bsk-dl-lg` to ensure a suitable amount of padding.
{% endalert %}

{% example html %}
<dl class="bsk-dl-lg bsk-dl-striped bsk-dl-horizontal">
  <dt>HF</dt>
    <dd>High Frequency</dd>
  <dt>VFH Radio</dt>
    <dd>Very High Frequency Radio</dd>
  <dt>VSAT</dt>
    <dd>Very Small Aperture Terminal</dd>
  <dt>VoIP</dt>
    <dd>Voice over IP</dd>
</dl>

<dl class="bsk-dl-lg bsk-dl-striped bsk-dl-horizontal bsk-dl-horizontal-lg">
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
