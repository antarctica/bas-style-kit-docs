---
layout: topic
title: Visibility examples
sections:
  -
    title: Current breakpoint
  -
    title: Visible classes
---

{% include snippets/table-of-contents.md %}

## Current breakpoint
{: #{{ 'Current breakpoint' | slugify }} }

{% include snippets/back-to-top.html %}

Using the
[responsive visibility classes]({{ '/core/layout/#responsive-visibility-classes' | prepend: site.baseurl }}), the active
breakpoint is shown in <span class="text-success">green</span> below. Resize your device to see this change.

<div class="row responsive-utilities-test">
  <div class="col-xs-6 col-sm-3 col-lg-2"><div class="bsk-docs-content-block">
    <span class="hidden-xs text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Extra Small</span>
    <span class="hidden-sm hidden-md hidden-lg hidden-xl visible-xs-inline text-success">
      <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Extra Small
    </span>
  </div></div>
  <div class="col-xs-6 col-sm-3 col-lg-2"><div class="bsk-docs-content-block">
    <span class="hidden-sm text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Small</span>
    <span class="hidden-xs hidden-md hidden-lg hidden-xl visible-sm-inline text-success">
      <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Small
    </span>
  </div></div>
  <div class="col-xs-6 col-sm-3 col-lg-2"><div class="bsk-docs-content-block">
    <span class="hidden-md text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Medium</span>
    <span class="hidden-xs hidden-sm hidden-lg hidden-xl visible-md-inline text-success">
      <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Medium
    </span>
  </div></div>
  <div class="col-xs-6 col-sm-3 col-lg-2"><div class="bsk-docs-content-block">
    <span class="hidden-lg text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Large</span>
    <span class="hidden-xs hidden-sm hidden-md hidden-xl visible-lg-inline text-success">
      <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Large
    </span>
  </div></div>
  <div class="col-xs-6 col-sm-3 col-lg-2"><div class="bsk-docs-content-block">
    <span class="hidden-xl text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Extra Large</span>
    <span class="hidden-xs hidden-sm hidden-md hidden-lg visible-xl-inline text-success">
      <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Extra Large
    </span>
  </div></div>
</div>

## Visible classes
{: #{{ 'Visible classes' | slugify }} }

{% include snippets/back-to-top.html %}

The table below shows which `.visible-` classes are visible at each responsive breakpoint. Visible combinations are
shown in <span class="text-success">green</span>.

Your active breakpoint is also indicated in the table header.

<table class="table">
  <thead>
    <tr>
      <th></th>
      <th>
        <span class="hidden-xs text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Extra Small</span>
        <span class="hidden-sm hidden-md hidden-lg hidden-xl visible-xs-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Extra Small
        </span>
      </th>
      <th>
        <span class="hidden-sm text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Small</span>
        <span class="hidden-xs hidden-md hidden-lg hidden-xl visible-sm-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Small
        </span>
      </th>
      <th>
        <span class="hidden-md text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Medium</span>
        <span class="hidden-xs hidden-sm hidden-lg hidden-xl visible-md-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Medium
        </span>
      </th>
      <th>
        <span class="hidden-lg text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Large</span>
        <span class="hidden-xs hidden-sm hidden-md hidden-xl visible-lg-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Large
        </span>
      </th>
      <th>
        <span class="hidden-xl text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Extra Large</span>
        <span class="hidden-xs hidden-sm hidden-md hidden-lg visible-xl-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Extra Large
        </span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><code>.visible-xs-*</code></th>
      <td><span class="text-success"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-sm-*</code></th>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-success"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-md-*</code></th>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-success"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-lg-*</code></th>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-success"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-xl-*</code></th>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-success"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
  </tbody>
</table>

## Hidden classes
{: #{{ 'Hidden classes' | slugify }} }

{% include snippets/back-to-top.html %}

The table below shows which `.hidden-` classes are hidden at each responsive breakpoint. Hidden combinations are shown
in <span class="text-success">green</span>.

Your active breakpoint is also indicated in the table header.

<table class="table">
  <thead>
    <tr>
      <th></th>
      <th>
        <span class="hidden-xs text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Extra Small</span>
        <span class="hidden-sm hidden-md hidden-lg hidden-xl visible-xs-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Extra Small
        </span>
      </th>
      <th>
        <span class="hidden-sm text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Small</span>
        <span class="hidden-xs hidden-md hidden-lg hidden-xl visible-sm-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Small
        </span>
      </th>
      <th>
        <span class="hidden-md text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Medium</span>
        <span class="hidden-xs hidden-sm hidden-lg hidden-xl visible-md-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Medium
        </span>
      </th>
      <th>
        <span class="hidden-lg text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Large</span>
        <span class="hidden-xs hidden-sm hidden-md hidden-xl visible-lg-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Large
        </span>
      </th>
      <th>
        <span class="hidden-xl text-muted"><i class="fa fa-square-o" aria-hidden="true"></i> Extra Large</span>
        <span class="hidden-xs hidden-sm hidden-md hidden-lg visible-xl-inline text-success">
          <i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Active breakpoint</span> Extra Large
        </span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><code>.hidden-xs</code></th>
      <td><span class="text-success"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-sm</code></th>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-success"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-md</code></th>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-success"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-lg</code></th>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-success"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-xl</code></th>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="text-success"><i class="fa fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
  </tbody>
</table>
