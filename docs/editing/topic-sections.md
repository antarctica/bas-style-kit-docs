# BAS Style Kit Documentation

## Editing - Topic sections

### Section metadata

Each (sub-)section **MUST** use the `topic-section-metadata.html` snippet to insert standardised titles and metadata:

The options accepted by this snippet are:

| Option            | Required | Description                                             | Valid Values                        | Notes                                                  |
| ----------------- | -------- | ------------------------------------------------------- | ----------------------------------- | ------------------------------------------------------ |
| `title`           | Yes      | Name of the section, used for the title and link anchor | String beginning with a letter      | -                                                      |
| `heading_level`   | Yes      | Heading level (i.e. `h1` to `h6`) of the section        | One of 1, 2, 3, 4, 5, 6             | -                                                      |
| `current_phase`   | No       | Phase of development for the section                    | One of the *section phases* [1]     | -                                                      |
| `current_version` | No       | Version the `current_phase` was reached                 | String, ideally a Style Kit version | i.e. section live as of version 1.2.3                  |
| `future_phase`    | No       | Phase of future development for the section             | One of the *section phases* [1]     | i.e. section is live currently, but will be deprecated |
| `future_version`  | No       | Version the `future_phase` will be reached              | String, ideally a Style Kit version | i.e. section will be deprecated as of version 2.3.4    |
| `included`        | No       | whether the section is included in the core Style Kit   | `yes` or `no`                       | i.e. rarely used styles may be optional                |

E.g.

```markdown
{% include snippets/topic-section-metadata.html
  title="Page background"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}
```

#### Section phases

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
