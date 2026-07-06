---
item_type: Example
title: Visibility examples
menus:
  primary_more:
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
  <div class="bsk-col-6 bsk-col-sm-3 bsk-col-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-d-none bsk-d-sm-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Extra Small</span>
    <span class="bsk-d-table-cell bsk-d-sm-none bsk-text-success">
      <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
      Extra Small
    </span>
  </div></div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-col-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-d-sm-none bsk-d-md-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Small</span>
    <span class="bsk-d-none bsk-d-sm-block bsk-d-md-none bsk-text-success">
      <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
      Small
    </span>
  </div></div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-col-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-d-md-none bsk-d-lg-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Medium</span>
    <span class="bsk-d-none bsk-d-md-block bsk-d-lg-none bsk-text-success">
      <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
      Medium
    </span>
  </div></div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-col-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-d-lg-none bsk-d-xl-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Large</span>
    <span class="bsk-d-none bsk-d-lg-block bsk-d-xl-none bsk-text-success">
      <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span> Large
    </span>
  </div></div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-col-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-d-xl-none bsk-d-fhd-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
    Extra Large</span>
    <span class="bsk-d-none bsk-d-xl-block bsk-d-fhd-none bsk-text-success">
      <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
      Extra Large
    </span>
  </div></div>
  <div class="bsk-col-6 bsk-col-sm-3 bsk-col-lg-2"><div class="bsk-docs-content-block">
    <span class="bsk-d-fhd-none bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
    Full HD</span>
    <span class="bsk-d-none bsk-d-fhd-block bsk-text-success">
      <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
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
        <span class="bsk-d-none bsk-d-sm-block bsk-text-muted bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
        Extra Small</span>
        <span class="bsk-d-table-cell bsk-d-sm-none bsk-text-success">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Extra Small
        </span>
      </th>
      <th>
        <span class="bsk-d-sm-none bsk-d-md-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Small</span>
        <span class="bsk-d-none bsk-d-sm-block bsk-d-md-none bsk-text-success">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Small
        </span>
      </th>
      <th>
        <span class="bsk-d-md-none bsk-d-lg-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Medium</span>
        <span class="bsk-d-none bsk-d-md-block bsk-d-lg-none">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Medium
        </span>
      </th>
      <th>
        <span class="bsk-d-lg-none bsk-d-xl-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Large</span>
        <span class="bsk-d-none bsk-d-lg-block bsk-d-xl-none bsk-text-successs">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Large
        </span>
      </th>
      <th>
        <span class="bsk-d-xl-none bsk-d-fhd-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
        Extra Large</span>
        <span class="bsk-d-none bsk-d-xl-block bsk-d-fhd-none bsk-text-succes">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Extra Large
        </span>
      </th>
      <th>
        <span class="bsk-d-fhd-none bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
        Full HD</span>
        <span class="bsk-d-none bsk-d-fhd-block bsk-text-success">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Full HD
        </span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><code>.visible-xs-*</code></th>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-sm-*</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-md-*</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-lg-*</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-xl-*</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
    </tr>
    <tr>
      <th><code>.visible-fhd-*</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
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
        <span class="bsk-d-none bsk-d-sm-block bsk-text-muted bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
        Extra Small</span>
        <span class="bsk-d-table-cell bsk-d-sm-none bsk-text-success">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Extra Small
        </span>
      </th>
      <th>
        <span class="bsk-d-sm-none bsk-d-md-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Small</span>
        <span class="bsk-d-none bsk-d-sm-block bsk-d-md-none bsk-text-success">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Small
        </span>
      </th>
      <th>
        <span class="bsk-d-md-none bsk-d-lg-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Medium</span>
        <span class="bsk-d-none bsk-d-md-block bsk-d-lg-none">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Medium
        </span>
      </th>
      <th>
        <span class="bsk-d-lg-none bsk-d-xl-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i> Large</span>
        <span class="bsk-d-none bsk-d-lg-block bsk-d-xl-none bsk-text-successs">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Large
        </span>
      </th>
      <th>
        <span class="bsk-d-xl-none bsk-d-fhd-block bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
        Extra Large</span>
        <span class="bsk-d-none bsk-d-xl-block bsk-d-fhd-none bsk-text-succes">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Extra Large
        </span>
      </th>
      <th>
        <span class="bsk-d-fhd-none bsk-text-muted"><i class="far fa-fw fa-square" aria-hidden="true"></i>
        Full HD</span>
        <span class="bsk-d-none bsk-d-fhd-block bsk-text-success">
          <i class="fas fa-fw fa-check-square" aria-hidden="true"></i> <span class="bsk-visually-hidden">Active breakpoint</span>
          Full HD
        </span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><code>.hidden-xs</code></th>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-sm</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-md</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-lg</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-xl</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
    </tr>
    <tr>
      <th><code>.hidden-fhd</code></th>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-muted"><i class="fas fa-fw fa-eye" aria-hidden="true"></i> Visible</span></td>
      <td><span class="bsk-text-success"><i class="fas fa-fw fa-eye-slash" aria-hidden="true"></i> Hidden</span></td>
    </tr>
  </tbody>
</table>
