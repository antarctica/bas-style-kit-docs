---
item_type: Start
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
    title: JavaScript dependencies
  -
    title: Optional components
  -
    title: Additional components (Non-Style Kit)
  -
    title: SRI
  -
    title: Themes and templates
---

{% include topic-section-metadata.html
  title="CSS & JS"
  heading_level=2
%}

The Style Kit's CSS and optional JavaScript are available as *minified* or *un-minified* versions:

* **un-minified** files are intended for testing, they include whitespace and full variables names but are larger
* **minified** files are intended for production, things like whitespace are removed to reduce the file size

You only need to include one or the other not both. If in doubt, use the **minified** versions.

{% capture alert_content %}
Functionally both versions work the same way, the difference is the overall file size and readability by humans.
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
      <td>CSS (minified) <br> <strong>recommended</strong></td>
      <td class="highlight">
        <pre><code>{{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/css/bas-style-kit.min.css</code></pre>
      </td>
    </tr>
    <tr>
      <td>JavaScript (minified) <br> <strong>recommended</strong></td>
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
[JavaScript dependencies](#javascript-dependencies){: .bsk-alert-link } too.
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

[Web fonts]({{ '/core/type/#font-families' | prepend: site.baseurl }}) used by the BAS Style Kit are declared in their
respective `@font-face` declarations in these formats:

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
* `.eps`

{% capture alert_content %}
EPS logos should only be used when advised by the BAS Communications Team.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="highlight"
  content=alert_content
%}

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
  title="JavaScript dependencies"
  heading_level=2
%}

{% capture alert_content %}
This section only applies if you are using the BAS Style Kit's
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}){: .bsk-alert-link }.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

These dependencies need to be loaded **before** the Style Kit for it to function correctly.

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Version</th>
      <th>URL</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td>jQuery</td>
      <td>3.6.0</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/jquery/3.6.0/js/jquery-3.6.0.min.js</code></pre></td>
    </tr>
    <tr>
      <td>js-cookie</td>
      <td>2.2.1</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/js-cookie/2.2.1/js/js.cookie-2.2.1.min.js</code></pre></td>
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
These libraries are not included in other distribution types and will need to be included separately.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Optional components"
  heading_level=2
%}

Some components in the Style Kit require one or more extra dependencies. This will be indicated by the relevant
component where this applies.

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Version</th>
      <th>URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://fontawesome.com">Font Awesome Pro</a></td>
      <td>CSS</td>
      <td>5.13.0</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/font-awesome-pro/5.13.0/css/all.min.css</code></pre></td>
    </tr>
    <tr>
      <td><a href="https://www.dropzonejs.com">Dropzone.js</a></td>
      <td>JS</td>
      <td>5.5.0</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/dropzone/5.5.0/js/dropzone.min.js</code></pre></td>
    </tr>
    <tr>
      <td><a href="https://lukasoppermann.github.io/html5sortable/index.html">HTML5 Sortable</a></td>
      <td>JS</td>
      <td>0.9.4</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/html5sortable/0.9.4/js/html5sortable.min.js</code></pre>
    </td>
    </tr>
  </tbody>
</table>

{% capture alert_content %}
For convenience, these files are hosted by the [BAS CDN](https://cdn.web.bas.ac.uk){: .bsk-alert-link } and is the
recommended way to include them in a website or application.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="success"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
These files are not included in other distribution types and will need to be included separately.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Additional components (Non-Style Kit)"
  heading_level=2
%}

For convenience, there are a number of additional components that can be used in websites and applications.

{% capture alert_content %}
These components are not part of the Style Kit but are documented here for consistency.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Version</th>
      <th>URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="http://proj4js.org">Proj4JS</a></td>
      <td>JS</td>
      <td>2.4.3</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/proj4js/2.4.3/proj4-2.4.3.min.js</code></pre></td>
    </tr>
    <tr>
      <td><a href="https://leafletjs.com">Leaflet</a></td>
      <td>JS</td>
      <td>1.6.0</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/leaflet/1.6.0/js/leaflet.min.js</code></pre></td>
    </tr>
    <tr>
      <td><a href="https://leafletjs.com">Leaflet</a></td>
      <td>CSS</td>
      <td>1.6.0</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/leaflet/1.6.0/css/leaflet.min.css</code></pre></td>
    </tr>
    <tr>
      <td><a href="https://kartena.github.io/Proj4Leaflet/">Proj4Leaflet</a></td>
      <td>JS</td>
      <td>1.0.1</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/libs/proj4leaflet/v1.0.1/js/proj4leaflet-1.0.1.min.js</code></pre></td>
    </tr>
  </tbody>
</table>

{% capture alert_content %}
For convenience, these files are hosted by the [BAS CDN](https://cdn.web.bas.ac.uk){: .bsk-alert-link } and is the
recommended way to include them in a website or application.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="success"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
These files are not included in other distribution types and will need to be included separately.
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
available for all Style Kit CSS and JS files served through the
[BAS CDN]({{ '/start/distribution/#css-js' | prepend: site.baseurl }}).

{% capture alert_content %}
You only need to include SRI values for files you directly include, you don't need to worry about any resources
referenced within them, such as fonts.
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

| Resource                    | SRI value                                                                                                                                                                                                                 |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `css/bas-style-kit.css`     | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.css'] }}{% endunless %}`         |
| `js/bas-style-kit.js`      | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/js/bas-style-kit.js'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/js/bas-style-kit.js'] }}{% endunless %}`             |
| `css/bas-style-kit.min.css` | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}{% endunless %}` |
| `js/bas-style-kit.min.js`  | `{% unless jekyll.environment == 'production' %}{{ site.data.bsk_sri_base_staging['dist/js/bas-style-kit.min.js'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/js/bas-style-kit.min.js'] }}{% endunless %}`     |
{: .bsk-table .bsk-table-hover .bsk-table-bordered }

These values are also available in a machine readable format from:

{% highlight html %}
https://{% unless jekyll.environment == 'production' %}{{ site.data.variables.docs_site_staging }}{% else %}{{ site.data.variables.docs_site_production }}{% endunless %}/data/bsk-sri.json
{% endhighlight %}

SRI values are also available for Style Kit's
[JavaScript dependencies]({{ '/start/distribution/#javascript-dependencies' | prepend: site.baseurl }}).

| Resource                                         | SRI value                                             |
| ------------------------------------------------ | ----------------------------------------------------- |
| `libs/jquery/3.1.1/jquery-3.1.1.min.js`          | `sha256-iS/MJJubD9bocndB0h1c3VR0I4MnuhFjCLXfrW3f0b0=` |
| `libs/jquery/3.3.1/jquery-3.3.1.min.js`          | `sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=` |
| `libs/jquery/3.5.1/js/jquery-3.5.1.min.js`       | `sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=` |
| `libs/jquery/3.6.0/js/jquery-3.6.0.min.js`       | `sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=` |
| `libs/js-cookie/2.1.3/js.cookie-2.1.3.min.js`    | `sha256-EareStqgZTnMUqLWtDkCa3SldvB8NPBY8u5C6ZUMWRc=` |
| `libs/js-cookie/2.2.1/js/js.cookie-2.2.1.min.js` | `sha256-MdF5lmO7tgKSFNkLp9uc3HJfoCwW1LCQrdNyHkQji2s=` |
{: .bsk-table .bsk-table-hover .bsk-table-bordered }

SRI values are also available for the Style Kit's
[Optional components]({{ '/start/distribution/#optional-components' | prepend: site.baseurl }}).

| Resource                                           | SRI value                                             |
| -------------------------------------------------- | ----------------------------------------------------- |
| `libs/font-awesome-pro/5.9.0/css/all.min.css`      | `sha256-kanXop/o8YI8mee6ao6HKghRywSQiUisB6pXb6HRsWk=` |
| `libs/font-awesome-pro/5.13.0/css/all.min.css`     | `sha256-DjbUjEiuM4tczO997cVF1zbf91BC9OzycscGGk/ZKks=` |
| `libs/dropzone/5.5.0/js/dropzone.min.js`           | `sha256-fIn7+wa+KI2s9jjRMk/rcswRt8mf82rxIXntRYKLofg=` |
| `libs/html5sortable/0.9.4/js/html5sortable.min.js` | `sha256-a5lgB8k+KyfXyaS32wQevsCnEm8Hz2o7cPEfthVOzLM=` |
{: .bsk-table .bsk-table-hover .bsk-table-bordered }

SRI values are also available for the non-Style Kit
[additional components]({{ '/start/distribution/#additional-components-non-style-kit' | prepend: site.baseurl }}).

| Resource                                                | SRI value                                             |
| ------------------------------------------------------- | ----------------------------------------------------- |
| `libs/proj4js/2.4.3/proj4-2.4.3.min.js`                 | `sha256-2ywP8gZSxQqabTEhcw+Xc3zpb/n6aAc3D0sneTtRNHw=` |
| `libs/leaflet/1.6.0/js/leaflet.min.js`                  | `sha256-JOnsZs28NnzfQkVhxtJmqdalYkF/ejmYWXD//vFzgWA=` |
| `libs/leaflet/1.6.0/css/leaflet.min.css`                | `sha256-UU2pVKdO1sE4T0KZHipoxQmYePb1fWMCCR09RzM616Y=` |
| `libs/proj4leaflet/v1.0.1/js/proj4leaflet-1.0.1.min.js` | `sha256-2/tIGOC+qdPryEVGe/iMOwpH4YHC3tcam5t8aqi74KI=` |
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

[Download latest version]({{ site.data.variables.cdn_base }}/{% include bsk-version.html %}/{% include bsk-version.html %}.zip){: .bsk-btn .bsk-btn-default }

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
$ npm i @antarctica/bas-style-kit
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

{% include topic-section-metadata.html
  title="Pug"
  heading_level=3
%}

A set of [Pug](https://pugjs.org) (AKA Jade) templates are available for the Style Kit.

{% unless jekyll.environment == 'production' %}
{% capture alert_content %}
The Pug templates don't support the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#pug' }}){: .bsk-alert-link}
for latest supported version.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="experimental"
  style="outline"
  content=alert_content
%}
{% else %}
{% highlight shell %}
$ npm i @antarctica/bas-style-kit-pug-templates
{% endhighlight %}
{% endunless %}

{% capture alert_content %}
See the [Pug templates documentation](https://github.com/antarctica/bas-style-kit-pug-templates){: .bsk-alert-link} for
more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Oracle Apex"
  heading_level=3
%}

An Apex theme is available for the Style Kit.

{% unless jekyll.environment == 'production' %}
{% capture alert_content %}
The Apex theme don't support the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.data.variables.docs_site_production | append: '/start/distribution/#oracle-apex' }}){: .bsk-alert-link}
for latest supported version.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="experimental"
  style="outline"
  content=alert_content
%}
{% else %}
See [these instructions](https://github.com/antarctica/bas-style-kit-apex-theme#installation) for how to install the
Style Kit theme into Apex.
{% endunless %}

{% capture alert_content %}
See the [Apex theme documentation](https://github.com/antarctica/bas-style-kit-apex-theme){: .bsk-alert-link} for
more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}
