---
title: Visibility examples
menus:
  primary_examples:
    weight: 4
sections:
  -
    title: Current breakpoint
  -
    title: Visible classes
---

## Current breakpoint
{: #{{ 'Current breakpoint' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

Using the
[responsive visibility classes]({{ '/core/layout/#responsive-visibility-classes' | prepend: site.baseurl }}), the active
breakpoint is shown in <span class="bsk-text-success">green</span> below. Resize your device to see this change.

<div class="bsk-row bsk-docs-responsive-utilities-test">
  <div class="bsk-col-12-xs-6 bsk-col-12-sm-3 bsk-col-12-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-hidden-xs bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Extra Small</span>
    <span class="bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-xs-inline bsk-text-success">
      <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
      Extra Small
    </span>
  </div></div>
  <div class="bsk-col-12-xs-6 bsk-col-12-sm-3 bsk-col-12-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-hidden-sm bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Small</span>
    <span class="bsk-hidden-xs bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-sm-inline bsk-text-success">
      <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
      Small
    </span>
  </div></div>
  <div class="bsk-col-12-xs-6 bsk-col-12-sm-3 bsk-col-12-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-hidden-md bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Medium</span>
    <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-md-inline bsk-text-success">
      <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
      Medium
    </span>
  </div></div>
  <div class="bsk-col-12-xs-6 bsk-col-12-sm-3 bsk-col-12-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-hidden-lg bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Large</span>
    <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-xl bsk-hidden-fhd bsk-visible-lg-inline bsk-text-success">
      <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span> Large
    </span>
  </div></div>
  <div class="bsk-col-12-xs-6 bsk-col-12-sm-3 bsk-col-12-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-hidden-xl bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
    Extra Large</span>
    <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-fhd bsk-visible-xl-inline bsk-text-success">
      <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
      Extra Large
    </span>
  </div></div>
  <div class="bsk-col-12-xs-6 bsk-col-12-sm-3 bsk-col-12-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-hidden-fhd bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
    Full HD</span>
    <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-visible-fhd-inline bsk-text-success">
      <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
      Full HD
    </span>
  </div></div>
</div>

## Visible classes
{: #{{ 'Visible classes' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

The table below shows which `.bsk-visible-` classes are visible at each responsive breakpoint. Visible combinations are
shown in <span class="bsk-text-success">green</span>. The active breakpoint is also indicated in the table header.

<table class="bsk-table bsk-table-responsive">
  <thead>
    <tr>
      <th></th>
      <th>
        <span class="bsk-hidden-xs bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
        bsk-Extra Small</span>
        <span class="bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-xs-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Extra Small
        </span>
      </th>
      <th>
        <span class="bsk-hidden-sm bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Small</span>
        <span class="bsk-hidden-xs bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-sm-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Small
        </span>
      </th>
      <th>
        <span class="bsk-hidden-md bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Medium</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-md-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Medium
        </span>
      </th>
      <th>
        <span class="bsk-hidden-lg bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Large</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-xl bsk-hidden-fhd bsk-visible-lg-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Large
        </span>
      </th>
      <th>
        <span class="bsk-hidden-xl bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
        Extra Large</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-fhd bsk-visible-xl-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Extra Large
        </span>
      </th>
      <th>
        <span class="bsk-hidden-fhd bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
        Extra Large</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-visible-fhd-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Extra Large
        </span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><code>.visible-xs-*</code></th>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-sm-*</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-md-*</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-lg-*</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-xl-*</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-fhd-*</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
  </tbody>
</table>

## Hidden classes
{: #{{ 'Hidden classes' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

The table below shows which `.bsk-hidden-` classes are hidden at each responsive breakpoint. Hidden combinations are
shown in <span class="bsk-text-success">green</span>. The active breakpoint is also indicated in the table header.

<table class="bsk-table bsk-table-responsive">
  <thead>
    <tr>
      <th></th>
      <th>
        <span class="bsk-hidden-xs bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
        bsk-Extra Small</span>
        <span class="bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-xs-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Extra Small
        </span>
      </th>
      <th>
        <span class="bsk-hidden-sm bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Small</span>
        <span class="bsk-hidden-xs bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-sm-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Small
        </span>
      </th>
      <th>
        <span class="bsk-hidden-md bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Medium</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-lg bsk-hidden-xl bsk-hidden-fhd bsk-visible-md-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Medium
        </span>
      </th>
      <th>
        <span class="bsk-hidden-lg bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i> Large</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-xl bsk-hidden-fhd bsk-visible-lg-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Large
        </span>
      </th>
      <th>
        <span class="bsk-hidden-xl bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
        Extra Large</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-fhd bsk-visible-xl-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Extra Large
        </span>
      </th>
      <th>
        <span class="bsk-hidden-fhd bsk-text-muted"><i class="fa fa-fw fa-square-o" aria-hidden="true"></i>
        Extra Large</span>
        <span class="bsk-hidden-xs bsk-hidden-sm bsk-hidden-md bsk-hidden-lg bsk-hidden-xl bsk-visible-fhd-inline bsk-text-success">
          <i class="fa fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-sr-only">Active breakpoint</span>
          Extra Large
        </span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><code>.hidden-xs</code></th>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-sm</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-md</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-lg</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-xl</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-fhd</code></th>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fa fa-fw fa-low-vision" aria-hidden="true"></i> Hidden</span></td>
    </tr>
  </tbody>
</table>
