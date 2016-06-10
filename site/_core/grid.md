---
title: Grid system
sections:
  -
    title: Overview
  -
    title: Available grids
  -
    title: Grid components
  -
    title: Quick start
  -
    title: Grid sizes
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Overview
{: #{{ 'Overview' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The BAS Style Kit inherits, and expands, the grid system provided by Bootstrap. **Compatibility with Bootstrap's
grid system classes is guaranteed.**

The Style Kit's additions focus on extending the grid system, to include additional sizes (break-points), and an 
alternate, interchangeable, grid with more columns.

### Available grids
{: #{{ 'Available grids' | slugify }} }

{% include snippets/back-to-top.html %}

There are two grids available, which can be mixed and nested if needed. They function in exactly the same way, other 
than the total number of columns.

| Grid Name     | Total Columns | Class Prefix | Core Bootstrap                                                                                  |
| ------------- | ------------- | ------------ | ----------------------------------------------------------------------------------------------- |
| Default       | 12            | None         | <i class="fa fa-check" aria-hidden="true"></i> Yes                                              |
| BAS Style Kit | 24            | `bsk-`       | <span class="text-danger"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> No</span> |
{: .table }

The additional columns in the BAS Style Kit grid are primarily intended for use in applications, where more complex or
detailed layouts and interfaces are required.

Use the *default* grid if you are unsure which to use.
{: .alert .alert-info }

### Grid components
{: #{{ 'Grids components' | slugify }} }

{% include snippets/back-to-top.html %}

There are three main components within the grid system:

1. **columns** - which contain content
2. **rows** - which contain and aligns columns
3. **containers** - which contain rows, this is a 
[general purpose layout feature]({{ '/core/layout/#containers' | prepend: site.baseurl }})

There are some rules for using these components:

1. all rows must be wrapped in a container, but this doesn't need to be an direct parent
2. only columns can be the direct children of rows
3. each row can't span more more than the total number of columns for each grid (i.e. either 12 or 24)

## Grid sizes
{: #{{ 'Grid sizes' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

There are five grid sizes for the 
[five responsive breakpoints]({{ '/core/layout/#responsive-breakpoints' | prepend: site.baseurl }}) available in the 
Style Kit. Theses sizes are based on minimum widths, meaning they apply to that size, and all larger (wider) sizes.

This means for example, that a map and accompanying text can be shown side by side on *medium* sized devices, and above,
or, will be shown full width, stacked one after the other, on smaller devices.
