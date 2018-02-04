---
sort_index: 2
title: Distribution
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
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="CSS & JS"
  heading_level=2
%}

The Style Kit consists of a CSS file and optionally a JavaScript file for the Style Kit's
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}).

These files are available in two forms:

* **default/normal** - designed for testing and human readable with whitespace and full variable names
* **minified** - is intended for production use with optimisations to reduce the file size (such as no whitespace)

{% alert info style=highlight %}
Both forms work exactly the same way and include all of the Style Kit, the only difference is their readability by humans
{% endalert %}

{% unless jekyll.environment == 'production' %}
{% alert experimental %}
These URLs refer to files in the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
for URLs to the latest stable version.
{% endalert %}
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
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.css</code></pre></td>
    </tr>
    <tr>
      <td>JavaScript</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/js/bas-style-kit.js</code></pre></td>
    </tr>
    <tr>
      <td>CSS (minified)</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.min.css</code></pre></td>
    </tr>
    <tr>
      <td>JavaScript (minified)</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/js/bas-style-kit.min.js</code></pre></td>
    </tr>
  </tbody>
</table>

{% alert success style=highlight %}
These files are hosted by the [BAS CDN](https://cdn.bas.ac.uk){: .bsk-alert-link } and is the recommended way to include
the Style Kit in a website or application
{% endalert %}

{% alert warning style=highlight %}
If the BAS Style Kit JavaScript files are included, you will also need to include additional
[JavaScript Libraries](#javascript-libraries){: .bsk-alert-link }
{% endalert %}

{% include snippets/topic-section-metadata.html
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

{% alert success style=highlight %}
The Style Kit will load these fonts from the BAS CDN automatically
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Logos"
  heading_level=2
%}

[Logos]({{ '/core/logos' | prepend: site.baseurl }}) used by the BAS Style Kit are made available in these formats:

* `.png`

{% alert success style=highlight %}
These logos are available from the BAS CDN and is the recommended way to include them in a website or application
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="JavaScript libraries"
  heading_level=2
%}

{% alert info %}
This section only applies if you are including the BAS Style Kit's
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}){: .bsk-alert-link }
{% endalert %}

Each component will list the libraries it depends upon (in the dependencies section). These libraries are not included
within the Style Kit and need to loaded **before** the Style Kit to function correctly.

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
      <td>Minified jQuery</td>
      <td>3.1.1</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/js-libs/jquery-3.1.1.min.js</code></pre></td>
    </tr>
    <tr>
      <td>js-cookie</td>
      <td>2.1.3</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/js-libs/js.cookie-2.1.3.min.js</code></pre></td>
    </tr>
  </tbody>
</table>

{% alert success style=highlight %}
For convenience, these libraries are hosted by the BAS CDN and is the recommended way to include them in a website or
application
{% endalert %}

{% alert danger style=highlight %}
These libraries are not included in other distribution types and will need to be sourced separately
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Sub-Resource Integrity (SRI) values"
  heading_level=2
%}

[Sub-Resource Integrity (SRI)](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) values are
available for all CSS and JS files served through the BAS CDN.

{% unless jekyll.environment == 'production' %}
{% alert experimental %}
These URLs refer to files in the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
for URLs to the latest stable version.
{% endalert %}
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
https://{% unless jekyll.environment == 'production' %}{{ site.bsk_docs_testing_url }}{% else %}{{ site.bsk_docs_production_url }}{% endunless %}/data/bsk-sri.json
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
* compiled and minified CSS with source maps
* compiled JavaScript
* compiled and minified JavaScript
* web fonts in `.eot`, `.ttf`, `.woff` and `.woff2` formats
* logos in `.png` formats

{% alert warning style=solid %}
It is **strongly** recommended to use the
[BAS CDN]({{ '/start/distribution/#css-js' | prepend: site.baseurl  }}){: .bsk-alert-link} rather than managing these
files yourself to make upgrading to future Style Kit releases easier.
{% endalert %}

{% unless jekyll.environment == 'production' %}
{% alert experimental %}
This download is for the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
for latest stable version.
{% endalert %}
{% endunless %}

[Download latest version]({% unless jekyll.environment == 'production' %}{{ site.bsk_package_base_production }}{% else %}{{ site.bsk_package_base_staging }}{% endunless %}/{% include snippets/bsk-version.html %}.zip){: .bsk-btn .bsk-btn-default }

{% include snippets/topic-section-metadata.html
  title="NodeJS package"
  heading_level=2
%}

{% unless jekyll.environment == 'production' %}
{% alert experimental %}
There isn't a NodeJS package for the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
for latest stable version.
{% endalert %}
{% endunless %}

{% if jekyll.environment == 'production' %}
Source files for the Style Kit are available as a [NodeJS](https://www.npmjs.com/package/bas-style-kit) package.

{% highlight shell %}
$ npm install --save bas-style-kit
{% endhighlight %}

{% alert info %}
Using the Style Kit in this way requires you to compile the Style Kit's Sass and JavaScript yourself, as well as other
tasks for fonts and logos. <br /> This workflow is documented in the
[core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-bsk-link}.
{% endalert %}
{% endif %}

{% include snippets/topic-section-metadata.html
  title="Source files"
  heading_level=2
%}

Source files for the Style Kit are available from the Git repository of the
[core BAS Style Kit project]({{ site.bsk_source_code_url }}). Stable releases of the Style Kit are also tagged as
[releases]({{ site.bsk_source_code_url }}/releases).

{% highlight shell %}
$ git clone {{ site.bsk_source_code_url }}.git
{% endhighlight %}

{% alert warning style=solid %}
It is **strongly** recommended to use the
[NPM package]({{ '/start/distribution/#nodejs-package' | prepend: site.baseurl  }}){: .bsk-alert-link} rather than
managing these files yourself to make upgrading to future Style Kit releases easier.
{% endalert %}

{% alert info %}
Using the Style Kit in this way requires you to compile the Style Kit's Sass and JavaScript yourself, as well as other
tasks for fonts and logos. <br /> This workflow is documented in the
[core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-bsk-link}.
{% endalert %}
