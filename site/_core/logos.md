---
item_type: Core
title: Logos
menus:
  primary_core:
    weight: 12
sections:
  -
    title: Overview
  -
    title: BAS logo
  -
    title: Open Government Licence Symbol
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

The BAS Style Kit includes various logos used to identify projects as being part of the British Antarctic Survey or
users of various schemes and initiatives.

{% capture alert_content %}
Logos are protected works, they **MUST** be used according to the terms of their respective owners.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="BAS logo"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

The BAS logo forms a core part of the BAS Brand, and its consistent use is important. It is made up of two components:

1. the BAS roundel
2. the BAS logo text (using the [BAS brand font]({{ '/core/type/#bas-brand-font' | prepend: site.baseurl }}))

These may be used in one of two forms:

1. the BAS roundel only
2. the BAS roundel and logo text (the full logo)

The BAS logo can be used with components such as:

* [headers]({{ '/components/header' | prepend: site.baseurl }})
* [navbars]({{ '/components/navbar/#brand-image' | prepend: site.baseurl }})

<div class="bsk-alert bsk-alert-solid bsk-alert-warning bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="far fa-fw fa-exclamation-triangle bsk-alert-icon"></i>
      The BAS logo is a trademark of the Natural Environment Research Council and may not be used without a licence
    </div>
  </header>
  <p>BAS has a licence to use its logo for its official websites and applications. This licence
  <strong>does not</strong> cover non-BAS projects, including personal projects of BAS Staff.</p>
</div>

<div class="bsk-alert bsk-alert-outline bsk-alert-warning bsk-alert-block bsk-alert-icon">
  <ul>
    <li>The logo text <strong>MUST NOT</strong> be used on its own</li>
    <li>The colour of the roundel and logo text <strong>MUST NOT</strong> be changed</li>
    <li>The font used for the logo text <strong>MUST NOT</strong> be changed (i.e. from the BAS brand font)</li>
    <li>The text of the logo text <strong>MUST NOT</strong> be changed (i.e. abbreviated or reformatted)</li>
    <li>For the full logo, the relationship between the roundel and logo text <strong>MUST NOT</strong> be changed.</li>
  </ul>
</div>

{% capture alert_content %}
Contact the BAS Communications Team if you have any questions around the use of the BAS logo.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants (BAS logo)"
  heading_level=3
%}

Each form of the BAS logo is available in three variants for use in different circumstances:

| Variant            | Purpose                                                                                                         |
| ------------------ | --------------------------------------------------------------------------------------------------------------- |
| Default            | Used by default for light backgrounds                                                                           |
| Monochrome         | Used for light backgrounds where colour is unavailable (i.e. a black and white printer)                         |
| Inverse Monochrome | Used for darker backgrounds where there would be insufficient contrast using the default or monochrome variants |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
Use the *default* variant if you are unsure which to use.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
  </div>
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
  </div>
</div>
<p class="bsk-text-center">Default roundel and full logo</p>

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
  </div>
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
  </div>
</div>
<p class="bsk-text-center">Monochrome roundel and full logo</p>

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background-dark">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
  </div>
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background-dark">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
  </div>
</div>
<p class="bsk-text-center">Inverse monochrome roundel and full logo</p>

{% include topic-section-metadata.html
  title="Sizes (BAS logo)"
  heading_level=3
%}

{% capture alert_content %}
These files are exports of vector images, do not resize them. Contact the BAS Communications Team for alternative sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

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
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>64 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>128 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td>256 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>32 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>64 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>128 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td>256 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>32 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>64 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>128 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse Monochrome</td>
      <td>256 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent-256.png</code></pre></td></tr>
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
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>286 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>571 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Default</td>
      <td>1142 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>143 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>286 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>571 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Monochrome</td>
      <td>1142 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>143 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>286 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>571 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Full logo</td>
      <td>Inverse Monochrome</td>
      <td>1142 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent-256.png</code></pre></td></tr>
  </tbody>
</table>

{% include topic-section-metadata.html
  title="Source files (BAS logo)"
  heading_level=3
%}

Source files are available for the BAS roundel and logo in EPS format.

{% capture alert_content %}
These files should not be used unless advised by the [BAS Creative Services Team](mailto:pictures@bac.ac.uk){:.bsk-alert-link}.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Form</th>
      <th>Variant</th>
      <th>Download Link</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Roundel</td>
      <td>Default</td>
      <td><a href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-default-transparent.eps">bas-roundel-default-transparent.eps</a></td>
    </tr>
    <tr>
      <td>Roundel</td>
      <td>Monochrome</td>
      <td><a href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-mono-transparent.eps">bas-roundel-mono-transparent.eps</a></td>
    </tr>
    <tr>
      <td>Roundel</td>
      <td>Inverse monochrome</td>
      <td><a href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-roundel-inverse-transparent.eps">bas-roundel-inverse-transparent.eps</a></td>
    </tr>
    <tr>
      <td>Full Logo</td>
      <td>Default</td>
      <td><a href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-default-transparent.eps">bas-logo-default-transparent.eps</a></td>
    </tr>
    <tr>
      <td>Full Logo</td>
      <td>Monochrome</td>
      <td><a href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-mono-transparent.eps">bas-logo-mono-transparent.eps</a></td>
    </tr>
    <tr>
      <td>Full Logo</td>
      <td>Inverse monochrome</td>
      <td><a href="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/bas-logo-inverse-transparent.eps">bas-logo-inverse-transparent.eps</a></td>
    </tr>
  </tbody>
</table>

{% include topic-section-metadata.html
  title="Open Government Licence Symbol"
  heading_level=2
  phase="live"
  initial_version="0.3.0"
  included="yes"
%}

The
[Open Government Lincese (OGL)](http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/open-government-licence/)
is the default licensing policy used by the Government, including arms-length bodies such as NERC and BAS.

The
[OGL Symbol](http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/open-government-licence/copyright-notices-attribution-statements/how-to-use-the-ogl-symbol/)
is used to indicate where content is available under this licence, and should be used in this way wherever appropriate.

The OGL Symbol can be used with components such as:

* [footers]({{ '/components/footer/#open-government-licence' | prepend: site.baseurl }})

{% capture alert_content %}
Contact the Web &amp; Applications Team, or the BAS Archives Service, for advice over when to use this licence, or
whether an alternative would be more suitable.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
The OGL Symbol is controlled by the National Archives and may only be used to indicate where content uses the OGL.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
The OGL Symbol MUST be used in accordance to its [guidelines](http://www.nationalarchives.gov.uk/documents/information-management/ogl-symbol-guidelines-v1.pdf){: .bsk-alert-link}
[PDF, ~6MB].
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Contact the Web &amp; Applications Team if you have any questions around the use of the OGL Symbol.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants (OGL Symbol)"
  heading_level=3
%}

The OGL Symbol is available in two variants for use in different circumstances:

| Variant            | Purpose                                                                                         |
| ------------------ | ----------------------------------------------------------------------------------------------- |
| Default            | Used by default for light backgrounds                                                           |
| Inverse            | Used for darker backgrounds where there would be insufficent contrast using the default variant |
{: .bsk-table .bsk-table-responsive }

{% capture alert_content %}
Use the *default* variant if you are unsure which to use.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
    <p class="bsk-text-center">Default symbol</p>
  </div>
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background-dark">
      <img src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-64.png" class="bsk-docs-logomark bsk-position-absolute bsk-start-50">
    </div>
    <p class="bsk-text-center">Inverse symbol</p>
  </div>
</div>

{% include topic-section-metadata.html
  title="Sizes (OGL Symbol)"
  heading_level=3
%}

{% capture alert_content %}
These files are exports of vector images, do not resize them. Contact the BAS Web &amp; Applications Team for
alternative sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

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
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-27.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>79 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>158 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>316 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Default</td>
      <td>632 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-default-transparent-256.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>67 x 27</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-27.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>79 x 32</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-32.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>158 x 64</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-64.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>316 x 128</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-128.png</code></pre></td></tr>
    <tr>
      <td>Inverse</td>
      <td>632 x 256</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ogl-symbol-inverse-transparent-256.png</code></pre></td></tr>
  </tbody>
</table>

{% include topic-section-metadata.html
  title="Microsoft user account pictogram"
  heading_level=2
  phase="live"
  initial_version="0.6.0"
  included="yes"
%}

The
[Microsoft User Account Pictogram](https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-add-branding-in-azure-ad-apps#user-account-pictogram)
is used to help users understand that they can reuse the account they use with Office 365 or other Microsoft business
services to sign into other websites or applications. At BAS, it indicates to users they can use their NERC Active
Directory account.

The Microsoft User Account Pictogram can be used with components such as:

* [Microsoft sign in buttons]({{ '/core/buttons/#microsoft-sign-in-button' | prepend: site.baseurl }})

{% capture alert_content %}
The Microsoft User Account Pictogram is controlled by Microsoft and may only be used to indicate where a Microsoft
based account can be used to sign into a website or application.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
The Microsoft User Account Pictogram MUST be used in accordance to its
[guidelines](https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-add-branding-in-azure-ad-apps){: .bsk-alert-link}.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Contact the Web &amp; Applications Team if you have any questions around the use of the Microsoft User Account
Pictogram.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Variants (Microsoft User Account Pictogram)"
  heading_level=3
%}

The Microsoft User Account Pictogram only has a single variant for use in all circumstances.

<div class="bsk-row bsk-docs-logomark-wrapper">
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background">
      <img class="bsk-ms-pictogram bsk-docs-logomark bsk-position-absolute bsk-start-50" type="image/svg+xml" width="128px" height="128px"  src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ms-pictogram.svg"/>
    </div>
  </div>
  <div class="bsk-col-md-6">
    <div class="bsk-docs-logomark-transparent-background-dark">
      <img class="bsk-ms-pictogram bsk-docs-logomark bsk-position-absolute bsk-start-50" type="image/svg+xml" width="128px" height="128px"  src="{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ms-pictogram.svg"/>
    </div>
  </div>
</div>
<p class="bsk-text-center">Default pictogram</p>

{% include topic-section-metadata.html
  title="Sizes (Microsoft User Account Pictogram)"
  heading_level=3
%}

{% capture alert_content %}
The Microsoft User Account Pictogram is a vector file that can automatically scale to any size required.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

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
      <td>N/A</td>
    </tr>
    <tr><td class="highlight" colspan="3"><pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/img/logos-symbols/ms-pictogram.svg</code></pre></td></tr>
  </tbody>
</table>
