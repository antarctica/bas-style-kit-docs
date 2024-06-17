---
item_type: Pattern
title: Markdown textarea
menus:
  primary_patterns:
    weight: 9
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

Use this component pattern to identify where Markdown formatting is supported.

This pattern is designed to ensure support for Markdown is indicated in a consistent way, to increase recognition by
users.

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Use this pattern when:

* Markdown is supported for text formatting

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic"
  heading_level=3
  phase="live"
  initial_version="0.6.0"
  included="yes"
%}

Use the [Markdown icon]({{ '/core/icons#markdown-icon' | prepend: site.baseurl }}) linked to the
[CommonMark syntax help](https://commonmark.org/help/) inside a
[Help text]({{ '/core/forms#help-text' | prepend: site.baseurl }}) component.

{% example html %}
<fieldset>
    <div class="bsk-form-group">
        <label for="content">Markdown textarea</label>
        <textarea id="content" class="bsk-form-control" name="content" rows="8"></textarea>
    </div>
    <div class="bsk-help-block bsk-text-muted">
        <i class="fab fa-markdown"></i>
        You can use <a href="https://commonmark.org/help/">Markdown</a> to format your message.
    </div>
</fieldset>
{% endexample %}

[Open full example](https://style-kit-testbed.web.bas.ac.uk/master/p/0020--textarea-markdown.html){:.bsk-btn.bsk-btn-default}
