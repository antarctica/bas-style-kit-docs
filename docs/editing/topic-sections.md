# BAS Style Kit Documentation

## Editing - Topic sections

### Section metadata

Each (sub-)section **MUST** use the `topic-section-metadata.html` snippet to insert standardised titles and metadata.

**Note** Lists used directly after this snippet will not render correctly, add paragraph text first

The options accepted by this snippet are:

| Option            | Required | Description                                             | Valid Values                    | Notes                                                  |
| ----------------- | -------- | ------------------------------------------------------- | ------------------------------- | ------------------------------------------------------ |
| `title`           | Yes      | Name of the section, used for the title and link anchor | String beginning with a letter  | Must start with a letter                               |
| `heading_level`   | Yes      | Heading level (i.e. `h1` to `h6`) of the section        | One of 1, 2, 3, 4, 5, 6         | -                                                      |
| `phase`           | No       | Phase of development for the section                    | One of the *section phases* [1] | Based on the initial version unless a revised version is set |                                                    |
| `initial_version` | No       | Version when the section was first introduced           | A Style Kit version             | This won't change for the life of the section          |
| `revised_version` | No       | Version when the section was last updated               | A Style Kit version             | This will change each time the section is updated      |
| `included`        | No       | whether the section is included in the core Style Kit   | `yes` or `no`                   | i.e. rarely used styles may be optional                |

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
times.

E.g. A component *Foo* is developed as part of version `0.2.0`, and then updated in versions `0.3.0` and `0.4.0`:

* when the component is first added its *phase* will be `alpha` and its *initial_version* `0.2.0`
* the *phase* then moves through `beta` and then `live`
* a change is made to the component in the next version, the *phase* returns to `alpha` and the *revised_version* is set
to the next version (i.e. `0.3.0`)
* the *phase* then moves through `beta` and then back to `live`
* another change is made in the next version (i.e. `0.4.0`), the *phase* returns to `alpha` and the *revised_version* is
set to the new next version (i.e. `0.4.0`)
* this then repeats until the component is eventually deprecated by setting its *phase* to `deprecated`

Notably the `initial_version` is never changed.
