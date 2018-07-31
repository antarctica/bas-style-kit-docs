---
sort_index: 2
title: Distribution
menus:
  primary_start:
    weight: 3
sections:
  -
    title: CSS & JS
  -
    title: Web fonts
  -
    title: Logos
  -
    title: JavaScript Libraries
  -
    title: SRI
  -
    title: Themes and templates
---

{% include topic-section-metadata.html
  title="CSS & JS"
  heading_level=2
%}

The Style Kit consists of a CSS file and optionally a JavaScript file for the Style Kit's
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}).

These files are available in two forms:

* **default/normal** - designed for testing and human readable with whitespace and full variable names
* **minified** - is intended for production use with optimisations to reduce the file size (such as no whitespace)

{% capture alert_content %}
Both forms work exactly the same way and include all of the Style Kit, the only difference is their readability by humans
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% unless jekyll.environment == 'production' %}
  {% capture alert_content %}
  These URLs refer to files in the latest development version of the Style Kit. Visit
  [style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
  for URLs to the latest stable version.
  {% endcapture %}
  {% include bas-style-kit/bsk-snippet--alert.html
    variant="experimental"
    style="outline"
    content=alert_content
  %}
{% endunless %}

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>CSS</td>
      <td class="highlight">
        <pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/css/bas-style-kit.css</code></pre>
      </td>
    </tr>
    <tr>
      <td>JavaScript</td>
      <td class="highlight">
        <pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/js/bas-style-kit.js</code></pre>
      </td>
    </tr>
    <tr>
      <td>CSS (minified)</td>
      <td class="highlight">
        <pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/css/bas-style-kit.min.css</code></pre>
      </td>
    </tr>
    <tr>
      <td>JavaScript (minified)</td>
      <td class="highlight">
        <pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/js/bas-style-kit.min.js</code></pre>
      </td>
    </tr>
  </tbody>
</table>

{% capture alert_content %}
These files are hosted by the [BAS CDN](https://cdn.web.bas.ac.uk){: .bsk-alert-link } and is the recommended way to
include the Style Kit in a website or application.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="success"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
If the BAS Style Kit JavaScript files are included, you will also need to include additional
[JavaScript Libraries](#javascript-libraries){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Web fonts"
  heading_level=2
%}

[Web fonts]({{ '/core/type/#font-families' | prepend: site.baseurl }}), including
[icon fonts]({{ '/core/icons' | prepend: site.baseurl }}), used by the BAS Style Kit are declared in their respective
`@font-face` declarations in these formats:

* `.eot`
* `.ttf`
* `.woff`
* `.woff2`

{% capture alert_content %}
The Style Kit will load these fonts from the [BAS CDN](https://cdn.web.bas.ac.uk){: .bsk-alert-link } automatically.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="success"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Logos"
  heading_level=2
%}

[Logos]({{ '/core/logos' | prepend: site.baseurl }}) used by the BAS Style Kit are made available in these formats:

* `.png`

{% capture alert_content %}
These logos are available from the [BAS CDN](https://cdn.web.bas.ac.uk){: .bsk-alert-link } and is the recommended way
to include them in a website or application.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="success"
  style="highlight"
  content=alert_content
%}


{% include topic-section-metadata.html
  title="JavaScript libraries"
  heading_level=2
%}

{% capture alert_content %}
This section only applies if you are including the BAS Style Kit's
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

Each component will list the libraries it depends upon (in the dependencies section). These libraries are not included
within the Style Kit and need to loaded **before** the Style Kit to function correctly.

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Version</th>
      <th>URL</th>
      <th>Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>jQuery</td>
      <td>3.1.1</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/js-libs/jquery-3.1.1.min.js</code></pre></td>
      <td><div class="bsk-label bsk-label-phase-retired">Retired</div></td>
    </tr>
    <tr>
      <td>jQuery</td>
      <td>3.3.1</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/js-libs/jquery-3.3.1.min.js</code></pre></td>
      <td><div class="bsk-label bsk-label-phase-live">Live</div></td>
    </tr>
    <tr>
      <td>js-cookie</td>
      <td>2.1.3</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/js-libs/js.cookie-2.1.3.min.js</code></pre></td>
      <td><div class="bsk-label bsk-label-phase-live">Live</div></td>
    </tr>
  </tbody>
</table>

{% capture alert_content %}
For convenience, these libraries are hosted by the [BAS CDN](https://cdn.web.bas.ac.uk){: .bsk-alert-link } and is the
recommended way to include them in a website or application.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="success"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
These libraries are not included in other distribution types and will need to be sourced separately.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Sub-Resource Integrity (SRI) values"
  heading_level=2
%}

[Sub-Resource Integrity (SRI)](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) values are
available for all CSS and JS files served through the
[BAS CDN]({{ '/start/distribution/#css-js' | prepend: site.baseurl }}).

{% unless jekyll.environment == 'production' %}
  {% capture alert_content %}
  These URLs refer to files in the latest development version of the Style Kit. Visit
  [style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
  for URLs to the latest stable version.
  {% endcapture %}
  {% include bas-style-kit/bsk-snippet--alert.html
    variant="experimental"
    style="outline"
    content=alert_content
  %}
{% endunless %}

| Resource                    | SRI value                                                                                                                                                                                                                 |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `css/bas-style-kit.css`     | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.css'] }}{% endunless %}`         |
| `css/bas-style-kit.js`      | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/js/bas-style-kit.js'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/js/bas-style-kit.js'] }}{% endunless %}`             |
| `css/bas-style-kit.min.css` | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}{% endunless %}` |
| `css/bas-style-kit.min.js`  | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/js/bas-style-kit.min.js'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/js/bas-style-kit.min.js'] }}{% endunless %}`     |
{: .bsk-table .bsk-table-hover .bsk-table-bordered }

These values are also available in a machine readable format from:

{% highlight html %}
https://{% unless jekyll.environment == 'production' %}{{ site.data.variables.docs_site_staging }}{% else %}{{ site.data.variables.docs_site_production }}{% endunless %}/data/bsk-sri.json
{% endhighlight %}

SRI values are also available for [JavaScript libraries]({{ '/start/distribution/#css-js' | prepend: site.baseurl }})
the Style Kit depends upon.

| Resource                 | SRI value                                             |
| ------------------------ | ----------------------------------------------------- |
| `jquery-3.1.1.min.js`    | `sha256-iS/MJJubD9bocndB0h1c3VR0I4MnuhFjCLXfrW3f0b0=` |
| `jquery-3.3.1.min.js`    | `sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=` |
| `js.cookie-2.1.3.min.js` | `sha256-EareStqgZTnMUqLWtDkCa3SldvB8NPBY8u5C6ZUMWRc=` |
{: .bsk-table .bsk-table-hover .bsk-table-bordered }

{% include topic-section-metadata.html
  title="CORS"
  heading_level=2
%}

[Cross Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) is
supported for all files served through the the [BAS CDN]({{ '/start/distribution/#css-js' | prepend: site.baseurl }})
using a wildcard (`*`) allowed origin value.

CORS authentication is not supported by the [BAS CDN](https://cdn.web.bas.ac.uk), and files should be accessed
*anonymously*. This is the default policy in most cases, however it is a best practice to state this explicitly by
including the `crossorigin="anonymous"` attribute in <code>&lt;link&gt;</code> and <code>&lt;script&gt;</code> elements.

E.g.

{% highlight html %}
<link rel="stylesheet" href="https://www.example.com/script.js" crossorigin="anonymous">
{% endhighlight %}

{% include topic-section-metadata.html
  title="Direct download"
  heading_level=2
%}

A `.zip` archive of the Style Kit is available containing:

* compiled CSS
* compiled JavaScript
* compiled and minified JavaScript
* web fonts in `.eot`, `.ttf`, `.woff` and `.woff2` formats
* logos in `.png` formats

{% capture alert_content %}
It is **strongly** recommended to use the
[BAS CDN]({{ '/start/distribution/#css-js' | prepend: site.baseurl }}){: .bsk-alert-link} rather than managing these
files yourself to make upgrading to future Style Kit releases easier.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% unless jekyll.environment == 'production' %}
  {% capture alert_content %}
  This download is for the latest development version of the Style Kit. Visit
  [style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#direct-download' }}){: .bsk-alert-link}
  for latest stable version.
  {% endcapture %}
  {% include bas-style-kit/bsk-snippet--alert.html
    variant="experimental"
    style="outline"
    content=alert_content
  %}
{% endunless %}

[Download latest version]({{ site.data.variables.package_base }}/{% include bsk-version.html %}.zip){: .bsk-btn .bsk-btn-default }

{% include topic-section-metadata.html
  title="NodeJS package"
  heading_level=2
%}

Source files for the Style Kit are available as a
[NodeJS](https://www.npmjs.com/package/{{ site.data.variables.npm_package_name }}) package.

{% unless jekyll.environment == 'production' %}
  {% capture alert_content %}
  There isn't a NodeJS package for the latest development version of the Style Kit. Visit
  [style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#nodejs-package' }}){: .bsk-alert-link}
  for latest stable version.
  {% endcapture %}
  {% include bas-style-kit/bsk-snippet--alert.html
    variant="experimental"
    style="outline"
    content=alert_content
  %}
{% else %}
{% highlight shell %}
$ npm i bas-style-kit
{% endhighlight %}
{% endunless %}

{% capture alert_content %}
Using the Style Kit in this way requires you to compile the Style Kit's Sass and JavaScript yourself, as well as other
tasks for fonts and logos. This workflow is documented in the
[core BAS Style Kit project]({{ site.data.variables.source_code_url }}){: .bsk-alert-link} .
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Source files"
  heading_level=2
%}

Source files for the Style Kit are available from the Git repository of the
[core BAS Style Kit project]({{ site.data.variables.source_code_url }}). Stable releases of the Style Kit are also
tagged as [releases]({{ site.data.variables.source_code_url }}/releases).

{% highlight shell %}
$ git clone {{ site.data.variables.source_code_url }}.git
{% endhighlight %}

{% capture alert_content %}
It is **strongly** recommended to use the
[NPM package]({{ '/start/distribution/#nodejs-package' | prepend: site.baseurl }}){: .bsk-alert-link} rather than
managing these files yourself to make upgrading to future Style Kit releases easier.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="solid"
  content=alert_content
%}

{% capture alert_content %}
Using the Style Kit in this way requires you to compile the Style Kit's Sass and JavaScript yourself, as well as other
tasks for fonts and logos. This workflow is documented in the
[core BAS Style Kit project]({{ site.data.variables.source_code_url }}){: .bsk-alert-link}.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Themes and templates"
  heading_level=2
%}

The Style Kit provides integrations for a limited number of applications and template languages. See the
[introduction]({{ '/start/introduction' | prepend: site.baseurl }}){: .bsk-alert-link } section for supported options.

{% include topic-section-metadata.html
  title="Jekyll"
  heading_level=3
%}

A [Jekyll](https://jekyllrb.com) theme is available for the Style Kit.

{% unless jekyll.environment == 'production' %}
  {% capture alert_content %}
  The Jekyll theme doesn't support the latest development version of the Style Kit. Visit
  [style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#jekyll' }}){: .bsk-alert-link}
  for latest supported version.
  {% endcapture %}
  {% include bas-style-kit/bsk-snippet--alert.html
    variant="experimental"
    style="outline"
    content=alert_content
  %}
{% else %}
1. add `gem "jekyll-theme-bas-style-kit"` to your Jekyll site's `Gemfile` file
2. run the `bundle` command
3. and `theme: jekyll-theme-bas-style-kit` to your Jekyll site's `_config.yml` file
{% endunless %}

{% capture alert_content %}
See the [Jekyll theme documentation](https://github.com/antarctica/bas-style-kit-jekyll-theme){: .bsk-alert-link} for
more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
