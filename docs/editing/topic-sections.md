# BAS Style Kit Documentation

## Editing - Topic sections

### Section anchors

The methods used by Kramdown and Jekyll differ, therefore Kramdown's automatic anchor generation is disabled and must
be set manually to use the Jekyll slugify method to ensure navigation links match page anchors.

E.g.

> ## HTML5
> {: #{{ 'HTML5' | slugify }} }
>
> ...

**Note:** An anchor is required for any heading which should be included in the table of contents for each page.

### Section metadata

Each section should include metadata to indicate:

* the phase of development for the style/component (i.e. live (stable), experimental (alpha/beta), deprecated)
* the version at which the relevant phase was reached (live since version x.x.x, etc.)
* where the style/component came from
* whether the style/component is included in the core Style Kit release or if its optional (e.g. devicons, data-tables)

A snippet is used to generate this metadata, it accepts the following options:

* `current_phase` - one of the *section phases* described below
* `future_phase` - one of the *section phases* described below
* `current_version` - a string representing the version the `current_phase` was first applied
* `future_version` - a string representing the version the `future_phase` was first applied
* `origin` - one of the *origins* described below
* `included` - either `yes` or `no`

The `future_phase` and `future_version` parameters are optional and may be omitted if not applicable.
Values for other parameters are required.

E.g.

```markdown
{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}
```

#### section phases

The following phases can be used:

* `alpha` - where a style/component is under construction, or newly imported and not yet polished and intended for use
* `beta` - where a style/component is in its final form with only minor corrections/tweaks before ready for general use
* `live` - where a style/component is well formed, polished and intended for everyday use
* `deprecated` - where a style/component is no longer needed and will be removed in a future version

A style/component is expected to move through these phases, but may loop through the Alpha-Beta-Live phases numerous
times. A style/component may be multiple phases, providing these are in different versions.

E.g. A component *Foo* is developed as part of version `0.2.0`, and then updated with a new design in version `0.3.0`

* When the component is first developed its `current_phase` will be `alpha`
* As the component is further refined `current_phase` will move to `beta`
* When the component is fully developed and released `current_phase` will move to `live`
* Sometime later, enhancements are made to the component, `current_phase` will still be `live`, but `future_phase` will
now be set to `alpha`
* The enhancements are developed further, `current_phase` will still be `live`, `future_phase` will now be set to `beta`
* The enhanced component is released, `future_phase` is unset

The `current_phase` only moves through its phases once. `future_phase` will move through the `alpha`, `beta` and
`deprecated` phases as changes are made.

The `current_version` will change each time the component is re-released,
though his makes it look like the component was only ever available since the increasing version number, this is
technically true. The updated component was only available, in the form that's documented, since the updated version.

#### Section origin

Use one of:

* `bootstrap`
* `bootstrap-custom`
* `custom`

#### Section availability

Use one of:

* `yes`
* `no`
