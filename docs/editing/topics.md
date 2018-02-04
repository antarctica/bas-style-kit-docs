# BAS Style Kit Documentation

## Editing - Topics

### Topic table of contents

Include the following snippet immediately after the front matter of a topic page:

```markdown
{% include snippets/table-of-contents.md %}
```

**Note:** If a topic page uses HTML, this won't work and a manually created list will be required instead.

### Topic sorting

For some collections, sorting is used to control the order in which topics are presented in topic indexes, and the drop
down navigation. By default collections sort topics in file order (i.e. `1-numbers`, `and-then-letters`).

Collections using topic sorting:

* Start

A `sort_index` property, defined as front-matter, is used to control the order of sorted topics, with `0` being first.
Any topic without this property will be listed first, therefore all topics **MUST** define this property.

Example front-matter:

```markdown
---
sort_index: 2
title: Foo
---

Page content
```
