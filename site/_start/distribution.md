---
sort_index: 2
title: Distribution
sections:
  -
    title: BAS CDN
  -
    title: SRI
  -
    title: CORS
  -
    title: Direct download
  -
    title: NodeJS package
  -
    title: Source files
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="BAS CDN"
  heading_level=2
%}

Use **compiled** CSS styles in development environments, use **minified** CSS styles in production environments.

[Source maps](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/){: .alert-link } should loaded
automatically by compatible browsers when **minified** CSS styles are used.

{% if site.x_environment == 'staging' %}
<i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">Testing version</span>
These URLs refer to files in the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .alert-link}
for URLs to the latest stable version.
{: .alert .bsk-docs-alert-testing }
{% endif %}

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Distribution Type</th>
      <th>Distribution File</th>
      <th>Distribution File URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="2">Compiled CSS</td>
      <td>Customised <a href="https://getbootstrap.com">Bootstrap</a></td>
      <td class="highlight"><pre><code>{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bootstrap-bsk.css</code></pre></td>
    </tr>
    <tr>
      <td>BAS Style Kit</td>
      <td class="highlight"><pre><code>{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.css</code></pre></td>
    </tr>
    <tr>
      <td rowspan="2">Compiled &amp; minified CSS</td>
      <td>Customised <a href="https://getbootstrap.com">Bootstrap</a></td>
      <td class="highlight"><pre><code>{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bootstrap-bsk.min.css</code></pre></td>
    </tr>
    <tr>
      <td>BAS Style Kit</td>
      <td class="highlight"><pre><code>{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.min.css</code></pre></td>
    </tr>
    <tr>
      <td rowspan="2">Minified CSS source-maps</td>
      <td>Customised <a href="https://getbootstrap.com">Bootstrap</a></td>
      <td class="highlight"><pre><code>{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/maps/bootstrap-bsk.min.css.map</code></pre></td>
    </tr>
    <tr>
      <td>BAS Style Kit</td>
      <td class="highlight"><pre><code>{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/maps/bas-style-kit.min.css.map</code></pre></td>
    </tr>
  </tbody>
</table>

Remember, the order CSS files are included matters. Include the custom bootstrap styles before the Style Kit styles.
{: .alert .alert-info }

{% include snippets/topic-section-metadata.html
  title="Web fonts"
  heading_level=2
%}

Web fonts used by the BAS Style Kit are declared in their respective `@font-face` declarations.
Font files are made available from the BAS CDN in these formats:

* `.eot`
* `.ttf`
* `.woff`
* `.woff2`

{% include snippets/topic-section-metadata.html
  title="Sub-Resource Integrity (SRI) values"
  heading_level=2
%}

[Sub-Resource Integrity (SRI)](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) values are
available for all CSS files served through the BAS CDN.

{% if site.x_environment == 'staging' %}
<i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">Testing version</span>
These values refer to files in the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#sub-resource-integrity-sri-values' }}){: .alert-link}
for values of the latest stable version.
{: .alert .bsk-docs-alert-testing }
{% endif %}

| Resource                    | SRI value                                                                   |
| --------------------------- | --------------------------------------------------------------------------- |
| `css/bas-style-kit.css`     | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.css'] }}{% endif %}`     |
| `css/bootstrap-bsk.css`     | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bootstrap-bsk.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bootstrap-bsk.css'] }}{% endif %}`     |
| `css/bas-style-kit.min.css` | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}{% endif %}` |
| `css/bootstrap-bsk.min.css` | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bootstrap-bsk.min.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bootstrap-bsk.min.css'] }}{% endif %}` |
{: .table .table-hover }

These values are also available in a machine readable format from:

{% highlight html %}
https://{% if site.x_environment == 'staging' %}{{ site.bsk_docs_testing_url }}{% else %}{{ site.bsk_docs_production_url }}{% endif %}/data/bsk-sri.json
{% endhighlight %}

{% include snippets/topic-section-metadata.html
  title="CORS"
  heading_level=2
%}

[Cross Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) is
supported for all files served through the the BAS CDN using a wildcard (`*`) allowed origin value.

CORS authentication is not supported by the BAS CDN, and files should be accessed *anonymously*. This is the default
policy in most cases, however it is a best practice to state this explicitly by including the `crossorigin="anonymous"`
attribute in <code>&lt;link&gt;</code> and <code>&lt;script&gt;</code> elements.

E.g.

{% highlight html %}
<link rel="stylesheet" href="https://www.example.com/script.js" crossorigin="anonymous">
{% endhighlight %}

{% include snippets/topic-section-metadata.html
  title="Direct download"
  heading_level=2
%}

A `.zip` archive of the Style Kit is available containing:

* compiled CSS
* minified CSS with source maps
* web fonts in `.eot`, `.ttf`, `.woff` and `.woff2` formats

{% if site.x_environment == 'staging' %}
<i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">Testing version</span>
This download is for the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .alert-link}
for latest stable version.
{: .alert .bsk-docs-alert-testing }
{% endif %}

It is **strongly** recommended to use the
[BAS CDN]({{ '/start/distribution/#bas-cdn' | prepend: site.baseurl  }}){: .alert-link} rather than managing
these files yourself to make upgrading to future releases of the Style Kit easier.
{: .alert .alert-warning }

[Download latest version]({% if site.x_environment == 'staging' %}{{ site.bsk_package_base_staging }}{% else %}{{ site.bsk_package_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/bas-style-kit-{% include snippets/bsk-version.html %}.zip){: .btn .btn-bsk .btn-default }

{% include snippets/topic-section-metadata.html
  title="NodeJS package"
  heading_level=2
%}

{% if site.x_environment == 'staging' %}
<i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">Testing version</span>
There isn't a NodeJS package for the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .alert-link}
for latest stable version.
{: .alert .bsk-docs-alert-testing }
{% endif %}

{% if site.x_environment == 'production' %}
Source files for the Style Kit are available as a [NodeJS](https://www.npmjs.com/package/bas-style-kit) package.

{% highlight shell %}
$ npm install --save bas-style-kit
{% endhighlight %}

Using the Style Kit in this way requires you to compile the Style Kit's Sass files and perform other tasks yourself.
<br /> This workflow is documented in the [core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-link}.
{: .alert .alert-info }
{% endif %}

{% include snippets/topic-section-metadata.html
  title="Source files"
  heading_level=2
%}

{% include snippets/back-to-top.html %}

Source files for the Style Kit are available as a [Git repository]({{ site.bsk_source_code_url }}).
Stable releases of the Style Kit are [tagged]({{ site.bsk_source_code_url }}/releases).

{% highlight shell %}
$ git clone {{ site.bsk_source_code_url }}.git
{% endhighlight %}

{% if site.x_environment == 'staging' %}
<i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">Testing version</span>
Checkout the `develop` branch for the latest development version of the Style Kit.
{: .alert .bsk-docs-alert-testing }
{% endif %}

Using the Style Kit in this way requires you to compile the Style Kit's Sass files and perform other tasks yourself.
<br /> This workflow is documented in the [core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-link}.
{: .alert .alert-info }

It is **strongly** recommended to use the
[NPM package]({{ '/start/distribution/#nodejs-package' | prepend: site.baseurl  }}){: .alert-link} rather than managing
source files yourself to make upgrading to future releases of the Style Kit easier.
{: .alert .alert-warning }
