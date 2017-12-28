---
title: Code
sections:
  -
    title: Inline code
  -
    title: Code block
  -
    title: Variables
  -
    title: User input
  -
    title: Sample output
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Inline code"
  heading_level=2
  phase="beta"
  initial_version="0.1.0"
  revised_version="0.3.0"
  included="yes"
%}

Use the <code>&lt;code&gt;</code> tag to denote snippets of code.
Any angle brackets will need escaping with `&lt;` and `&gt;`.

{% alert info %}
**Heads up!** Inline code elements are not fully styled yet.
{% endalert %}

{% example html %}
<code>var foo = 'bar';</code>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Code block"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the <code>&lt;pre&gt;</code> tag to denote multiple lines of code, or where formatting need to be preserved. Any angle brackets will need escaping with `&lt;` and `&gt;`.

Use `.bsk-pre-scrollable` to fix the height of code block and add horizontal scrolling.

{% example html %}
<pre>
var foo = 'bar';
var baz = foo;
</pre>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Variables"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the <code>&lt;var&gt;</code> tag for indicating variables.

{% example html %}
<var>e</var> = <var>m</var><var>c</var><sup>2</sup>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="User input"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the <code>&lt;kbd&gt;</code> tag to indicate keys a user should press.

{% example html %}
Type <kbd>ls</kbd> to list he contents of the current directory.
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sample output"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the <code>&lt;samp&gt;</code> tag for indicating the output of a program.

{% example html %}
<samp>Hello World!</samp>
{% endexample %}
