---
title: Logos
sections:
  -
    title: Overview
  -
    title: BAS Logo
  -
    title: Open Government License Symbol
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The BAS Style Kit includes various logos used to identify projects as being part of the British Antarctic Survey or
users of various schemes and initiatives.

{% alert warning style=solid %}
Logos are protected works and MUST only be used according to the terms of their respective owners.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="BAS Logo"
  heading_level=2
  current_phase="alpha"
  current_version="0.3.0"
  included="yes"
%}

The BAS logo forms a core part of the BAS Brand, and its consistent use is important. It is made up of two components:

1. the BAS roundel
2. the BAS logo text (using the [BAS brand font]({{ '/core/type/#bas-brand-font' | prepend: site.baseurl }}))

These may be used in one of two forms:

1. the BAS roundel only
2. the BAS roundel and logo text (the full logo)

The BAS Logo can be used with components such as:

* [headers]({{ '/components/header' | prepend: site.baseurl }})
* [navbars]({{ '/components/navbar/#brand-image' | prepend: site.baseurl }})

<div class="bsk-alert bsk-alert-solid-warning bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-title">
    <h4><i class="fa fa-fw fa-exclamation-triangle bsk-alert-icon"></i>
    The BAS Logo is a trademark of the Natural Environment Research Council and may not be used without a license</h4>
  </header>
  <p>BAS has a license to use its logo for its official websites and applications. This license
  <strong>does not cover</strong> non-BAS projects, including personal projects of BAS Staff.</p>
</div>

{% alert warning %}
The logo text MUST NOT be used on its own.
{% endalert %}

{% alert warning %}
Personal projects of BAS staff are not considered as official unless explicitly agreed.
{% endalert %}

{% alert warning %}
The colour of the roundel and logo text MUST NOT be changed
{% endalert %}

{% alert warning %}
The font used for the logo text MUST NOT be changed (i.e. from the BAS brand font)
{% endalert %}

{% alert warning %}
The text of the logo text MUST NOT changed (i.e. abbreivaated or reformatted)
{% endalert %}

{% alert warning %}
For the full logo, the relationship between the roundel and logo text MUST NOT be changed.
{% endalert %}

{% alert info %}
Contact the BAS Communications Team if you have any questions around the use of the BAS logo.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Variants (BAS Logo)"
  heading_level=3
%}

Each form of the BAS logo is available in three variants for use in different circumstances:

| Variant            | Purpose                                                                                                        |
| ------------------ | -------------------------------------------------------------------------------------------------------------- |
| Default            | Used by default for light backgrounds                                                                          |
| Monochrome         | Used for light backgrounds where colour is unavailable (i.e. a black and white printer)                        |
| Inverse Monochrome | Used for darker backgrounds where there would be insufficent contrast using the default or monochrome variants |
{: .bsk-table .bsk-table-responsive }

{% alert info %}
Use the *default* variant if you are unsure which to use.
{% endalert %}

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-12-md-4">
      <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Default roundel</li>
    </ul>
  </div>
  <div class="bsk-col-12-md-4">
    <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Monochrome roundel</li>
    </ul>
  </div>
  <div class="bsk-col-12-md-4 bsk-docs-logomark-inverse-background">
    <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Inverse monochrome roundel</li>
    </ul>
  </div>
</div>
<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-12-md-4">
    <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Default full logo</li>
    </ul>
  </div>
  <div class="bsk-col-12-md-4">
    <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Monochrome full logo</li>
    </ul>
  </div>
  <div class="bsk-col-12-md-4 bsk-docs-logomark-inverse-background">
    <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Inverse monochrome full logo</li>
    </ul>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Sizes (BAS Logo)"
  heading_level=3
%}

{% alert warning %}
These files are exports of vector images, do not resize them. Contact the BAS Communications Team for alternative sizes.
{% endalert %}

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Form</th>
      <th>Variant</th>
      <th>Size (Width &times; Height)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>32 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>64 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>128 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>256 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>32 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>64 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>128 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>256 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>32 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>64 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>128 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>256 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-256.png</code></pre></td></tr>
  </tbody>
</table>

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Form</th>
      <th>Variant</th>
      <th>Size (Width &times; Height)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>143 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>286 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>571 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>1142 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>143 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>286 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>571 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>1142 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>143 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>286 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>571 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>1142 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-256.png</code></pre></td></tr>
  </tbody>
</table>

{% include snippets/topic-section-metadata.html
  title="Open Government License Symbol"
  heading_level=2
  current_phase="alpha"
  current_version="0.3.0"
  included="yes"
%}

The
[Open Government Lincese (OGL)](http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/open-government-licence/)
is the default licensing policy used by the Government, including arms-length bodies such as NERC and BAS.

The
[OGL Symbol](http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/open-government-licence/copyright-notices-attribution-statements/how-to-use-the-ogl-symbol/)
is used to indicate where content is available under this license, and should be used in this way wherever appropriate.

The OGL Symbol can be used with components such as:

* [footers]({{ '/components/footer/#open-government-license' | prepend: site.baseurl }})

{% alert info %}
Contact the Web &amp; Applications Team, or the BAS Archives Service, for advice over when to use this license, or
whether an alternative would be more suitable.
{% endalert %}

{% alert warning style=solid %}
The OGL Symbol is controlled by the National Archives and may only be used to indicate where content uses the OGL.
{% endalert %}

{% alert warning %}
The OGL Symbol MUST be used in accordance to its [guidelines](http://www.nationalarchives.gov.uk/documents/information-management/ogl-symbol-guidelines-v1.pdf){: .bsk-alert-link}
[PDF, ~6MB]
{% endalert %}

{% alert info %}
Contact the Web &amp; Applications Team if you have any questions around the use of the OGL Symbol.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Variants (OGL Symbol)"
  heading_level=3
%}

The OGL Symbol is available in two variants for use in different circumstances:

| Variant            | Purpose                                                                                         |
| ------------------ | ----------------------------------------------------------------------------------------------- |
| Default            | Used by default for light backgrounds                                                           |
| Inverse            | Used for darker backgrounds where there would be insufficent contrast using the default variant |
{: .bsk-table .bsk-table-responsive }

{% alert info %}
Use the *default* variant if you are unsure which to use.
{% endalert %}

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-12-md-4">
      <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Default symbol</li>
    </ul>
  </div>
  <div class="bsk-col-12-md-4 bsk-docs-logomark-inverse-background">
    <img src="{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-64.png" class="bsk-docs-logomark bsk-center-block">
    <ul class="bsk-list-unstyled bsk-text-center bsk-docs-logomark-details">
      <li>Inverse symbol</li>
    </ul>
  </div>
</div>

{% include snippets/topic-section-metadata.html
  title="Sizes (OGL Symbol)"
  heading_level=3
%}

{% alert warning %}
These files are exports of vector images, do not resize them. Contact the BAS Web &amp; Applications Team for
alternative sizes.
{% endalert %}

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Variant</th>
      <th>Size (Width &times; Height)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Default</td>
      <td>67 x 27</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-27.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>79 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>158 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>316 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>632 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>67 x 27</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-27.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>79 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>158 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>316 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>632 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-256.png</code></pre></td></tr>
  </tbody>
</table>
