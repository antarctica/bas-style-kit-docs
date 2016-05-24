---
title: Code
sections:
  -
    title: Inline
  -
    title: Code block
  -
    title: Variables
  -
    title: User input
  -
    title: Sample output
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Inline
{: #{{ 'inline' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the <code>&lt;code&gt;</code> tag to denote snippets of code.
Any angle brackets will need escaping with `&lt;` and `&gt;`.

{% example html %}
<code>var foo = 'bar';</code>
{% endexample %}

## Code block
{: #{{ 'Code block' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the <code>&lt;pre&gt;</code> tag to denote multiple lines of code, or where formatting need to be preserved.
Any angle brackets will need escaping with `&lt;` and `&gt;`.

Use `.pre-scrollable` to fix the height of code block and add horizontal scrolling.
{: .alert .alert-info }

{% example html %}
<pre>
var foo = 'bar';
var baz = foo;
</pre>
{% endexample %}

## Variables
{: #{{ 'Variables' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the <code>&lt;var&gt;</code> tag for indicating variables.

{% example html %}
<var>e</var> = <var>m</var><var>c</var><sup>2</sup>
{% endexample %}

## User input
{: #{{ 'User input' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the <code>&lt;kbd&gt;</code> tag to indicate keys a user should press.

{% example html %}
Type <kbd>ls</kbd> to list he contents of the current directory.
{% endexample %}

## Sample output
{: #{{ 'Sample output' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Use the <code>&lt;samp&gt;</code> tag for indicating the output of a program.

{% example html %}
<samp>Hello World!</samp>
{% endexample %}
