---
title: Distribution
sections:
  -
    title: BAS CDN
  -
    title: Compiled assets
  -
    title: NodeJS package
  -
    title: Source files
  -
    title: SRI
  -
    title: CORS
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc }

## BAS CDN
{: #{{ 'BAS CDN' | slugify }} }

The BAS CDN (Content Delivery Network) hosts, for each version:

* compiled CSS
* minified CSS with source maps
* web fonts in `.eot`, `.ttf`, `.woff` and `.woff2` formats
* Sub-Resource Integrity (SRI) values for CSS files

### CDN endpoint
{: #{{ 'CDN endpoint' | slugify }} }

General form:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{VERSION}/{FILE}
{% endhighlight %}

For the current version ({% include snippets/bsk-version.html %}):

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/{FILE}
{% endhighlight %}

### Compiled CSS
{: #{{ 'Compiled CSS' | slugify }} }

Customised version of [Bootstrap](https://getbootstrap.com) for the BAS Style Kit:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bootstrap-bsk.css
{% endhighlight %}

BAS Style Kit styles:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.css
{% endhighlight %}

### Minified CSS
{: #{{ 'Minified CSS' | slugify }} }

Customised version of [Bootstrap](https://getbootstrap.com) for the BAS Style Kit:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bootstrap-bsk.min.css
{% endhighlight %}

BAS Style Kit styles:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/bas-style-kit.min.css
{% endhighlight %}

CSS source maps:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/maps/bootstrap-bsk.min.css.map
{% endhighlight %}

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/css/maps/bas-style-kit.min.css.map
{% endhighlight %}

These [source maps](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/){: .alert-link } should be loaded
automatically by compatible browsers.
{: .alert .alert-info }

### Web fonts
{: #{{ 'Web fonts' | slugify }} }

As there are a large number of web font files, for the various fonts, and their variants, access URLs are not listed
here. <br /> URLs can be calculated using the general form given and references defined in `@font-face` declarations.
{: .alert .alert-info }

### Sub-Resource Integrity (SRI) values
{: #{{ 'Sub-Resource Integrity (SRI) values' | slugify }} }

See the [SRI section]({{ '/start/distribution/#sri' | prepend: site.baseurl }}) for more information on these values.
{: .alert .alert-info}

## Compiled assets
{: #{{ 'Compiled assets' | slugify }} }

A ZIP archive is available, for each version, containing:

* compiled CSS
* minified CSS with source maps
* web fonts in `.eot`, `.ttf`, `.woff` and `.woff2` formats

Compiled assets are not currently available, this will be resolved before the next general release.
{: .alert .alert-warning }

### Download endpoint
{: #{{ 'Download endpoint' | slugify }} }

General form:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_package_base_staging }}{% else %}{{ site.bsk_package_base_production }}{% endif %}/{VERSION}/bas-style-kit-{VERSION}.zip
{% endhighlight %}

For the current version ({% include snippets/bsk-version.html %}):

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_package_base_staging }}{% else %}{{ site.bsk_package_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/bas-style-kit-{% include snippets/bsk-version.html %}.zip
{% endhighlight %}

[Download latest version]({% if site.x_environment == 'staging' %}{{ site.bsk_package_base_staging }}{% else %}{{ site.bsk_package_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/bas-style-kit-{% include snippets/bsk-version.html %}.zip){: .btn .btn-primary .btn-lg .btn-bsk .btn-bsk-primary }

## NodeJS package
{: #{{ 'NodeJS package' | slugify }} }

Source files for the Style Kit are available as a NodeJS package through the
[NPM registry](https://www.npmjs.com/package/bas-style-kit).

To include the latest stable version in your project:

{% highlight shell %}
$ npm install --save bas-style-kit
{% endhighlight %}

Using the Style Kit in this way requires you to compile the Style Kit's Sass files and perform other tasks yourself.
<br /> This workflow is documented in the [core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-link}.
{: .alert .alert-info }

## Source files
{: #{{ 'Source files' | slugify }} }

Source files for the Style Kit are available as a Git repository, or archives of this repository, for each release.

To clone the [Style Kit repository]({{ site.bsk_source_code_url }}):

{% highlight shell %}
$ git clone {{ site.bsk_source_code_url }}.git
{% endhighlight %}

The structure of this repository is documented in the [core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-link}.
{: .alert .alert-info }

Archives of this repository are available for each tag (release) of the Style Kit, in both ZIP and TAR.GZ formats.

[View repository archives]({{ site.bsk_source_code_url }}/releases){: .btn .btn-primary .btn-lg .btn-bsk .btn-bsk-primary }

Using the Style Kit in this way requires you to compile the Style Kit's Sass files and perform other tasks yourself.
<br /> This workflow is documented in the [core BAS Style Kit project]({{ site.bsk_source_code_url }}){: .alert-link}.
{: .alert .alert-info }

It is **strongly** recommended to use the
[NPM package]({{ '/start/distribution/#nodejs-package' | prepend: site.baseurl  }}){: .alert-link} rather than managing
source files yourself to make upgrading to future releases of the Style Kit easier.
{: .alert .alert-warning }

## Sub-Resource Integrity (SRI)
{: #{{ 'SRI' | slugify }} }

[Sub-Resource Integrity (SRI)](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) is a
security technology supported by some browsers to ensure resources they fetch (for example, CSS files from a CDN) are
downloaded without modification or interference.

It works by calculating a a cryptographic hash for each file and comparing it to a known, safe, value. If the values
differ the resource will be blocked by the browser. Although primarily intended for JavaScript, it can, and is, also
used for CSS styles.

SRI is still an experimental technology, pending standardisation. However is it currently supported by major browsers
and is **recommended** to be used.
{: .alert .alert-info }

The BAS Style Kit offers SRI values for:

* compiled CSS
* minified CSS

In future, CSS source maps and web fonts will also be included, before the next general release.
{: .alert .alert-info }

SRI values are currently hosted on the same origin they are intending to protect. This is recognised as a critical
issue and will be resolved before the next general release.
{: .alert .alert-danger }

### SRI values
{: #{{ 'SRI values' | slugify }} }

For the current version ({% include snippets/bsk-version.html %}):

| Resource                    | SRI value                                                                   |
| --------------------------- | --------------------------------------------------------------------------- |
| `css/bas-style-kit.css`     | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.css'] }}{% endif %}`     |
| `css/bootstrap-bsk.css`     | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bootstrap-bsk.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bootstrap-bsk.css'] }}{% endif %}`     |
| `css/bas-style-kit.min.css` | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bas-style-kit.min.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bas-style-kit.min.css'] }}{% endif %}` |
| `css/bootstrap-bsk.min.css` | `{% if site.x_environment == 'staging' %}{{ site.data.bsk_sri_base_staging['dist/css/bootstrap-bsk.min.css'] }}{% else %}{{ site.data.bsk_sri_base_production['dist/css/bootstrap-bsk.min.css'] }}{% endif %}` |
{: .table .table-hover }

### SRI values endpoint
{: #{{ 'SRI values endpoint' | slugify }} }

General form:

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{VERSION}/sri.json
{% endhighlight %}

For the current version ({% include snippets/bsk-version.html %}):

{% highlight html %}
{% if site.x_environment == 'staging' %}{{ site.bsk_cdn_base_staging }}{% else %}{{ site.bsk_cdn_base_production }}{% endif %}/{% include snippets/bsk-version.html %}/sri.json
{% endhighlight %}

## Cross Origin Resource Sharing (CORS)
{: #{{ 'CORS' | slugify }} }

... <mark>TODO</mark> ...
