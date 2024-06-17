---
item_type: Component
title: Sidebar
menus:
  primary_components:
    weight: 23
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

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-sidebar` class to display information that is distinct from main content, but which is shown
**next to** it.

{% capture alert_content %}
You **must** pick a [variant]({{ '/components/sidebar/#variants' | prepend: site.baseurl }}){: .bsk-alert-link } for each
sidebar, otherwise it will look strange. I.e. it is not enough to use `.bsk-sidebar` on its own.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
See the [Panel]({{ '/components/panel' | prepend: site.baseurl }}){: .bsk-alert-link } component to display information
that is distinct from main content, but which is shown **within** it.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Default sidebar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-sidebar-default` class a for standard sidebar.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-offset-9 bsk-12-col-md-3">
    <aside class="bsk-sidebar bsk-sidebar-default">
      Sidebar content
    </aside>
  </div>
</div>
{% endexample %}

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-9">
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
  <div class="bsk-col-12-md-3">
    <aside class="bsk-sidebar bsk-sidebar-default">
      <h2>Sidebar content</h2>
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise, colonies worldlets with
      pretty stories for which there's little good evidence.</p>
    </aside>
  </div>
</div>
{% endexample %}

{% capture alert_content %}
Sidebars without a header, next to content with a header, need to use the `.bsk-sidebar-no-heading` class. <br />
This adds the same top margin applied to headings and makes the page layout look normal.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-9">
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
  <div class="bsk-col-12-md-3">
    <aside class="bsk-sidebar bsk-sidebar-default bsk-sidebar-no-heading">
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise, colonies worldlets with
      pretty stories for which there's little good evidence.</p>
    </aside>
  </div>
</div>
{% endexample %}

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-9">
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
  <div class="bsk-col-12-md-3">
    <aside class="bsk-sidebar bsk-sidebar-default">
      <h2>Summary</h2>
      <dl class="bsk-dl-lg">
        <dt>Term 1</dt>
        <dd>Term 1 Value</dd>
        <dt>Term 2</dt>
        <dd>Term 2 Value</dd>
      </dl>
    </aside>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Inverted sidebar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-sidebar-inverse` class to use a darker background for a sidebar. Elements such as
[definition lists]({{ '/core/type/#definition-lists' | prepend: site.baseurl }}) will be styled appropriately.

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-offset-9 bsk-col-12-md-3">
    <aside class="bsk-sidebar bsk-sidebar-inverse">
      <h2>Sidebar content</h2>
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise</p>
      <dl class="bsk-dl-lg">
        <dt>Term 1</dt>
        <dd>Term 1 Value</dd>
        <dt>Term 2</dt>
        <dd>Term 2 Value</dd>
      </dl>
    </aside>
  </div>
</div>
{% endexample %}

{% include topic-section-metadata.html
  title="Sizes"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Large sidebar"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add the `.bsk-sidebar-lg` class to increase the padding inside a sidebar.

Use the [grid system]({{ '/core/grid' | prepend: site.baseurl }}){: .bsk-alert-link } to control the width of a sidebar.
{: .alert .alert-info }

{% example html %}
<div class="bsk-row">
  <div class="bsk-col-12-md-9">
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
  <div class="bsk-col-12-md-3">
    <aside class="bsk-sidebar bsk-sidebar-default bsk-sidebar-lg">
      <h2>Sidebar content</h2>
      <p>Explorations dream of the mind's eye laws of physics not a sunrise but a galaxyrise, colonies worldlets with
      pretty stories for which there's little good evidence.</p>
    </aside>
  </div>
</div>
{% endexample %}
