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

The [BAS CDN](https://cdn.bas.ac.uk) is used to host production versions of the BAS Style Kit.

{% alert success %}
The BAS CDN is the recommended way to use the BAS Style Kit because it will use browser caching.
{% endalert %}

{% alert info %}
You only need to include the JavaScript files referenced below if you want to use any of the
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}){: .bsk-alert-link } provided by the Style Kit.
{% endalert %}

{% alert warning %}
If the BAS Style Kit JavaScript files are included, you will also need to include additional
[JavaScript Libraries](#javascript-libraries)
{% endalert %}

{% alert info style=highlight %}
Use **compiled** CSS and JavaScript in development environments, use **minified** CSS and JavaScript in production
environments.
{% endalert %}

{% alert info style=highlight %}
[Source maps](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/){: .bsk-alert-link } should be loaded
automatically by compatible browsers when **minified** CSS is used.
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
      <td>Compiled CSS</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.css</code></pre></td>
    </tr>
    <tr>
      <td>JavaScript</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/js/bas-style-kit.js</code></pre></td>
    </tr>
    <tr>
      <td>Compiled &amp; minified CSS</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.min.css</code></pre></td>
    </tr>
    <tr>
      <td>Minified JavaScript</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/js/bas-style-kit.min.js</code></pre></td>
    </tr>
    <tr>
      <td>Minified CSS source-maps</td>
      <td class="highlight"><pre><code>{% unless jekyll.environment == 'production' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endunless %}/{% include snippets/bsk-version.html %}/css/maps/bas-style-kit.min.css.map</code></pre></td>
    </tr>
  </tbody>
</table>

{% include snippets/topic-section-metadata.html
  title="Web fonts"
  heading_level=2
%}

[Web fonts]({{ '/core/type/#font-families' | prepend: site.baseurl }}), including
[icon fonts]({{ '/core/icons' | prepend: site.baseurl }}), used by the BAS Style Kit are declared in their respective
`@font-face` declarations. Font files are made available from the BAS CDN in these formats:

* `.eot`
* `.ttf`
* `.woff`
* `.woff2`

{% include snippets/topic-section-metadata.html
  title="Logos"
  heading_level=2
%}

[Logos]({{ '/core/logos' | prepend: site.baseurl }}) used by the BAS Style Kit are made available from the BAS CDN in
these formats:

* `.png`

{% include snippets/topic-section-metadata.html
  title="JavaScript libraries"
  heading_level=2
%}

{% alert info %}
This section only applies if you are including the BAS Style Kit JavaScript files, which are required to use any of the
[Interactive components]({{ '/interactivity' | prepend: site.baseurl }}){: .bsk-alert-link } provided by the Style Kit.
{% endalert %}

The BAS Style Kit JavaScript relies on the [jQuery](https://jquery.com) library.

{% alert warning %}
jQuery must be loaded before the Style Kit JavaScript to function correctly.
{% endalert %}

{% alert success style=highlight %}
These libraries are also provided by the BAS CDN
{% endalert %}

<table class="bsk-table bsk-table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Minified jQuery</td>
      <td class="highlight"><pre><code>https://cdn.web.bas.ac.uk/js-libs/jquery-3.1.1.min.js</code></pre></td>
    </tr>
  </tbody>
</table>

{% alert danger style=highlight %}
These libraries are not included in other distribution types
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
{: .bsk-table .bsk-table-hover }

These values are also available in a machine readable format from:

{% highlight html %}
https://{% unless jekyll.environment == 'production' %}{{ site.bsk_docs_testing_url }}{% else %}{{ site.bsk_docs_production_url }} {% endunless %}/data/bsk-sri.json
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
[BAS CDN]({{ '/start/distribution/#bas-cdn' | prepend: site.baseurl  }}){: .bsk-alert-link} rather than managing
these files yourself to make upgrading to future releases of the Style Kit easier.
{% endalert %}

{% unless jekyll.environment == 'production' %}
{% alert experimental %}
This download is for the latest development version of the Style Kit. Visit
[style-kit.web.bas.ac.uk]({{ 'https://' | append: site.bsk_docs_production_url | append: '/start/distribution/#bas-cdn' }}){: .bsk-alert-link}
for latest stable version.
{% endalert %}
{% endunless %}

[Download latest version]({% unless jekyll.environment == 'production' %}{{ site.bsk_package_base_production }}{% else %}{{ site.bsk_package_base_staging }}{% endunless %}/{% include snippets/bsk-version.html %}/bas-style-kit-{% include snippets/bsk-version.html %}.zip){: .bsk-btn .bsk-btn-default }

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

Source files for the Style Kit are available as a [Git repository]({{ site.bsk_source_code_url }}).
Stable releases of the Style Kit are [tagged]({{ site.bsk_source_code_url }}/releases).

{% highlight shell %}
$ git clone {{ site.bsk_source_code_url }}.git
{% endhighlight %}

{% alert warning style=solid %}
It is **strongly** recommended to use the
[NPM package]({{ '/start/distribution/#nodejs-package' | prepend: site.baseurl  }}){: .bsk-alert-link} rather than
managing source files yourself to make upgrading to future releases of the Style Kit easier.
{% endalert %}

{% alert info %}
Using the Style Kit in this way requires you to compile the Style Kit's Sass and JavaScript yourself, as well as other
tasks for fonts and logos. <br /> This workflow is documented in the
[core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-bsk-link}.
{% endalert %}
