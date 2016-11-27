---
title: Sidebar
sections:
  -
    title: Overview
  -
    title: Default sidebar
  -
    title: Large Sidebar
  -
    title: Inverted Sidebar
---

{% include snippets/table-of-contents.md %}

## Overview
{: #{{ 'Overview' | slugify }}}

Use the `.sidebar` class to display information that is distinct from main content, but which is shown next to it.

## Default sidebar
{: #{{ 'Default sidebar' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

You **must** pick a [variant]({{ '/components/sidebar/#variants' | prepend: site.baseurl }}){: .alert-link } for each
sidebar, otherwise it will look strange. I.e. it is not enough to use `.sidebar-bsk` on its own.
{: .alert .alert-warning }

{% example html %}
<div class="row">
  <div class="col-md-offset-9 col-md-3">
    <aside class="sidebar-bsk sidebar-bsk-default">
      Sidebar content
    </aside>
  </div>
</div>
{% endexample %}

{% example html %}
<div class="row">
  <div class="col-md-9">
    <main>
      <h2>Main content</h2>
      <p>Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum? Trillion adipisci velit
      star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore
      veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
      aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis? The sky calls to us
      colonies, shores of the cosmic ocean? Bits of moving fluff. Cosmic fugue rogue at the edge of forever. Gathered
      by gravity hearts of the stars at the edge of forever. Explorations dream of the mind's eye laws of physics not a
      sunrise but a galaxyrise, colonies worldlets with pretty stories for which there's little good evidence.</p>
    </main>
  </div>
  <div class="col-md-3">
    <aside class="sidebar-bsk sidebar-bsk-default">
      <h2>Sidebar content</h2>
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise, colonies worldlets with
      pretty stories for which there's little good evidence.</p>
    </aside>
  </div>
</div>
{% endexample %}

Sidebars without a header, next to content with a header, need to use the `.sidebar-bsk-no-heading` class. <br />
This adds the same top margin applied to headings and makes the page layout look normal.
{: .alert .alert-info }

{% example html %}
<div class="row">
  <div class="col-md-9">
    <main>
      <h2>Main content</h2>
      <p>Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum? Trillion adipisci velit
      star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore
      veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
      aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis? The sky calls to us
      colonies, shores of the cosmic ocean? Bits of moving fluff. Cosmic fugue rogue at the edge of forever. Gathered
      by gravity hearts of the stars at the edge of forever. Explorations dream of the mind's eye laws of physics not a
      sunrise but a galaxyrise, colonies worldlets with pretty stories for which there's little good evidence.</p>
    </main>
  </div>
  <div class="col-md-3">
    <aside class="sidebar-bsk sidebar-bsk-default sidebar-bsk-no-heading">
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise, colonies worldlets with
      pretty stories for which there's little good evidence.</p>
    </aside>
  </div>
</div>
{% endexample %}

{% example html %}
<div class="row">
  <div class="col-md-9">
    <main>
      <h2>Main content</h2>
      <p>Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum? Trillion adipisci velit
      star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore
      veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
      aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis? The sky calls to us
      colonies, shores of the cosmic ocean? Bits of moving fluff. Cosmic fugue rogue at the edge of forever. Gathered
      by gravity hearts of the stars at the edge of forever. Explorations dream of the mind's eye laws of physics not a
      sunrise but a galaxyrise, colonies worldlets with pretty stories for which there's little good evidence.</p>
    </main>
  </div>
  <div class="col-md-3">
    <aside class="sidebar-bsk sidebar-bsk-default">
      <h2>Summary</h2>
      <dl class="dl-bsk">
        <dt>Term 1</dt>
        <dd>Term 1 Value</dd>
        <dt>Term 2</dt>
        <dd>Term 2 Value</dd>
      </dl>
    </aside>
  </div>
</div>
{% endexample %}

## Sizes
{: #{{ 'Sizes' | slugify }} }

### Large sidebar
{: #{{ 'Large sidebar' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Add the `.sidebar-bsk-lg` class to increase the padding inside a sidebar.

Use the [grid system]({{ '/core/grid' | prepend: site.baseurl }}){: .alert-link } to control the width of a sidebar.
{: .alert .alert-info }

{% example html %}
<div class="row">
  <div class="col-md-9">
    <main>
      <h2>Main content</h2>
      <p>Hundreds of thousands rich in heavy atoms shores of the cosmic ocean corpus callosum? Trillion adipisci velit
      star stuff harvesting star light from which we spring network of wormholes eaque ipsa quae ab illo inventore
      veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
      aspernatur aut odit aut fugit great turbulent clouds dream of the mind's eye Vangelis? The sky calls to us
      colonies, shores of the cosmic ocean? Bits of moving fluff. Cosmic fugue rogue at the edge of forever. Gathered
      by gravity hearts of the stars at the edge of forever. Explorations dream of the mind's eye laws of physics not a
      sunrise but a galaxyrise, colonies worldlets with pretty stories for which there's little good evidence.</p>
    </main>
  </div>
  <div class="col-md-3">
    <aside class="sidebar-bsk sidebar-bsk-default sidebar-bsk-lg">
      <h2>Sidebar content</h2>
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise, colonies worldlets with
      pretty stories for which there's little good evidence.</p>
    </aside>
  </div>
</div>
{% endexample %}

## Variants
{: #{{ 'Variants' | slugify }} }

### Inverted sidebar
{: #{{ 'Inverted sidebar' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="custom" included="yes" %}

Use the `.sidebar-bsk-inverse` class to use a darker background for a sidebar. Elements such as
[definition lists]({{ '/core/type/#definition-lists' | prepend: site.baseurl }}) will be styled appropriately.

{% example html %}
<div class="row">
  <div class="col-md-offset-9 col-md-3">
    <aside class="sidebar-bsk sidebar-bsk-inverse">
      <h2>Sidebar content</h2>
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise</p>
      <dl class="dl-bsk">
        <dt>Term 1</dt>
        <dd>Term 1 Value</dd>
        <dt>Term 2</dt>
        <dd>Term 2 Value</dd>
      </dl>
    </aside>
  </div>
</div>
{% endexample %}
