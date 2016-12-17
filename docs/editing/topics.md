# BAS Style Kit Documentation

## Editing - Topics

### Topic table of contents

Include the following snippet immediately after the front matter of a topic page:

```markdown
## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}
```

**Note:** If a topic page uses HTML, this won't work and a manually created list will be required instead.

### Topic sorting

For some collections sorting is used to control the order in which topics are presented in topic indexes, and the drop
down navigation. By default collections sort topics in file order (i.e. `1-numbers`, `and-then-letters`).

Collections using topic sorting:

* Start

A property `sort_index`, defined as front-matter, is used to control the order of topics, with `0` being first.
Any topic without this property are listed first, therefore all topics **must** define this property.

Example front-matter:

```
---
sort_index: 2
title: Foo
---
```
