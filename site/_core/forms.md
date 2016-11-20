---
title: Forms
sections:
  -
    title: Form controls
  -
    title: Static controls
  -
    title: Form layouts
  -
    title: Form sizing
  -
    title: Control states
  -
    title: Help text
  -
    title: Validation
  -
    title: Examples
---

## Contents
{:.no_toc #{{ 'Contents' | slugify }}}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

## Form fields
{: #{{ 'Form elements' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

A form field is made up of a form control (such as an input or textarea) with an accompanying label to explain what
each field is for.

For styling across devices and browsers, form controls should use the `.form-control` class and labels `.control-label`.
Each form field should be be wrapped in a
[from group]({{ '/core/forms/#form-groups-and-fieldsets' | prepend: site.baseurl }}){: .alert-link } to structurally
separate each form field.
{: .alert .alert-info }

All form fields should have a label to make sure they can be understood by assistive technologies.
{: .alert .alert-warning }

## Form controls
{: #{{ 'Form controls' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

### Inputs
{: #{{ 'Inputs' | slugify }} }

{% include snippets/back-to-top.html %}

Form inputs are the most common form control. Supported types are listed below and demonstrated in the
[form input]({{ '/examples/forms/#form-inputs' | prepend: site.baseurl }}) example.

* text
* password
* email
* number

* time
* date
* month
* week
* datetime-local

* url
* search
* tel
* color

It is a requirement of the HTML5 specification to declare a type for every form input, even if it's just a text input.
Form elements won't be styled correctly without a supported type.
{: .alert .alert-warning }

Support for newer input types such as datetime varies significantly between devices and browsers. It is still
recommended use these newer types for forwards-compatibility, especially on mobile devices.
See [this MDN page](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input) for more information.
{: .alert .alert-info }

{% example html %}
<form>
  <fieldset class="form-group">
    <label class="control-label" for="form-inputs-example1">Text input</label>
    <input type="text" class="form-control" id="form-inputs-example1">
  </fieldset>

  <fieldset class="form-group">
    <label class="control-label" for="form-inputs-example2">Date input</label>
    <input type="date" class="form-control" id="form-inputs-example2">
  </fieldset>
</form>
{% endexample %}

### Textareas
{: #{{ 'Textareas' | slugify }} }

{% include snippets/back-to-top.html %}

The height of a text area can be set using the `rows` attribute

{% example html %}
<form>
  <fieldset class="form-group">
    <label class="control-label" for="form-textareas-example1">Small textarea</label>
    <textarea class="form-control" id="form-textareas-example1" rows="3"></textarea>
  </fieldset>

  <fieldset class="form-group">
    <label class="control-label" for="form-textareas-example2">Large textarea</label>
    <textarea class="form-control" id="form-textareas-example2" rows="9"></textarea>
  </fieldset>
</form>
{% endexample %}

### Selects
{: #{{ 'Selects' | slugify }} }

{% include snippets/back-to-top.html %}

Select elements allow one option to be chosen by default, add the `multiple` attribute to allow more than one.

For single selects, the first option will be selected by default. Set the `selected` attribute on another option to
change this.

Select elements have quite stubborn browser styling, such as rounded corners, which is difficult to override.
{: .alert .alert-info }

{% example html %}
<form>
  <fieldset class="form-group">
    <label class="control-label" for="form-select-example1">Single select</label>
    <select class="form-control" id="form-select-example1">
      <option value="1">Option 1</option>
      <option value="2" selected>Option 2</option>
      <option value="3">Option 3</option>
      <option value="4">Option 4</option>
    </select>
  </fieldset>

  <fieldset class="form-group">
    <label class="control-label" for="form-select-example2">Multiple select</label>
    <select class="form-control" id="form-select-example2" multiple>
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
      <option value="4">Option 4</option>
    </select>
  </fieldset>
</form>
{% endexample %}

### File inputs
{: #{{ 'File inputs' | slugify }} }

For file inputs use `.form-control-file` instead of `.form-control`.

Form input elements have quite stubborn browser styling, such as rounded corners, which are difficult to override.
{: .alert .alert-info }

{% example html %}
<form>
  <fieldset class="form-group">
    <label class="control-label" for="form-file-example1">File input</label>
    <input type="file" class="form-control-file" id="form-file-example1">
  </fieldset>
</form>
{% endexample %}

### Radio options and checkboxes
{: #{{ 'Radio options and checkboxes' | slugify }} }

Checkboxes allow multiple options to be chosen, radio options allow only one. Use the `.checkbox` and `.radio` classes
as shown to ensure proper styling.

To pre-select an option set the `checked` attribute.

{% example html %}
<form>
  <fieldset class="form-group">
    <div class="checkbox">
      <label class="control-label">
        <input type="checkbox" name="form-checkbox-example1" id="form-checkbox-example1-a" value="A">
          Option 1 (A)
      </label>
    </div>
    <div class="checkbox">
      <label class="control-label">
        <input type="checkbox" name="form-checkbox-example1" id="form-checkbox-example1-b" value="B">
          Option 1 (B)
      </label>
    </div>
    <div class="checkbox">
      <label class="control-label">
        <input type="checkbox" name="form-checkbox-example1" id="form-checkbox-example1-c" value="C">
          Option 1 (C)
      </label>
    </div>
  </fieldset>

  <fieldset class="form-group">
    <div class="radio">
      <label class="control-label">
        <input type="radio" name="form-radio-example1" id="form-radio-example1-a" value="A">
          Option 1 (A)
      </label>
    </div>
    <div class="radio">
      <label class="control-label">
        <input type="radio" name="form-radio-example1" id="form-radio-example1-b" value="B">
          Option 1 (B)
      </label>
    </div>
    <div class="radio">
      <label class="control-label">
        <input type="radio" name="form-radio-example1" id="form-radio-example1-c" value="C">
          Option 1 (C)
      </label>
    </div>
  </fieldset>
</form>
{% endexample %}

#### Inline radio options and checkboxes
{: #{{ 'Radio options and checkboxes' | slugify }} }

Radio options and checkboxes can be shown inline (i.e. side-by-side rather than stacked) using the `.checkbox-inline`
and `radio-inline` classes **instead** of the standard classes.

{% example html %}
<form>
  <fieldset class="form-group">
    <div class="checkbox-inline">
      <label class="control-label">
        <input type="checkbox" name="form-checkbox-example2" id="form-checkbox-example2-a" value="A">
          Option 1 (A)
      </label>
    </div>
    <div class="checkbox-inline">
      <label class="control-label">
        <input type="checkbox" name="form-checkbox-example2" id="form-checkbox-example2-b" value="B">
          Option 1 (B)
      </label>
    </div>
    <div class="checkbox-inline">
      <label class="control-label">
        <input type="checkbox" name="form-checkbox-example2" id="form-checkbox-example2-c" value="C">
          Option 1 (C)
      </label>
    </div>
  </fieldset>

  <fieldset class="form-group">
    <div class="radio-inline">
      <label class="control-label">
        <input type="radio" name="form-radio-example2" id="form-radio-example2-a" value="A">
          Option 2 (A)
      </label>
    </div>
    <div class="radio-inline">
      <label class="control-label">
        <input type="radio" name="form-radio-example2" id="form-radio-example2-b" value="B">
          Option 2 (B)
      </label>
    </div>
    <div class="radio-inline">
      <label class="control-label">
        <input type="radio" name="form-radio-example2" id="form-radio-example2-c" value="C">
          Option 2 (C)
      </label>
    </div>
  </fieldset>
</form>
{% endexample %}

### Form buttons
{: #{{ 'Radio options and checkboxes' | slugify }} }

{% include snippets/back-to-top.html %}

Form buttons, such as the form submission button, are styled the same way as
[standard buttons]({{ '/core/buttons' | prepend: site.baseurl }}).

{% example html %}
<form>
  <button type="submit" class="btn btn-bsk btn-default">Submit</button>
</form>
{% endexample %}

### Static control
{: #{{ 'Static control' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Static controls can be used to represent pre-computed, or locked values within a form.

{% example html %}
<form>
  <fieldset>
    <div class="form-group">
      <label class="control-label" for="form-inputs-example1">Reporter name</label>
      <p class="form-control-static" id="form-static-example1">Adam Smith</p>
    </div>
    <div class="form-group">
      <label class="control-label" for="form-static-example2">Reporter email</label>
      <p class="form-control-static" id="form-static-example2">admin.smith@bas.ac.uk</p>
    </div>
  </fieldset>
</form>
{% endexample %}

## Form layouts
{: #{{ 'Form layouts' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

By default, forms will stack vertically. This can be changed, for example to show labels and inputs side-by-side, using
the options in the section.

### Form groups and fieldsets
{: #{{ 'Form groups and fieldsets' | slugify }} }

{% include snippets/back-to-top.html %}

The `.form-group` class is intended to wrap around an input, its label and extra elements (such as help text).
It applies spacing to visually separate each input group.

Where a form field is standalone, use a <code>&lt;fieldset&gt;</code>. For a group of related controls, use
<code>&lt;div&gt;</code>'s wrapped in a <code>&lt;fieldset&gt;</code> with a suitable <code>&lt;legend&gt;</code>.

{% example html %}
<form>
  <fieldset class="form-group">
    <label class="control-label" for="form-group-example1">Small textarea</label>
    <textarea class="form-control" id="form-group-example1" rows="3"></textarea>
  </fieldset>

  <fieldset>
    <legend>Would you like a reply?</legend>
    <div class="form-group">
      <label class="control-label" for="form-group-example2">Your name</label>
      <input type="text" class="form-control" id="form-group-example2" placeholder="Adam Smith">
    </div>
    <div class="form-group">
      <label class="control-label" for="form-group-example3">Your email address</label>
      <input type="email" class="form-control" id="form-group-example3" placeholder="adam.smith@bas.ac.uk">
      <p class="help-block text-muted">We will only use this information for contacting you about your feedback.</p>
    </div>
  </fieldset>
</form>
{% endexample %}

### Horizontal forms
{: #{{ 'Horizontal forms' | slugify }} }

{% include snippets/back-to-top.html %}

Use the `.form-horizontal` class to display labels and controls side-by-side using
[grid system]({{ '/core/grid/' | prepend: site.baseurl }}). Ensure all labels use the `.control-label` class for best
results.

When using a <code>&lt;fieldset&gt;</code> with a <code>&lt;legend&gt;</code>, apply the `.form-group` class to an
inner <code>&lt;div&gt;</code> to prevent the <code>&lt;legend&gt;</code> from appearing to overflow horizontally.
{: .alert .alert-info }

{% example html %}
<form class="form-horizontal">
  <fieldset class="form-group">
    <label class="control-label col-md-2" for="form-horizontal-example1">Small textarea</label>
    <div class="col-md-10">
      <textarea class="form-control" id="form-horizontal-example1" rows="3"></textarea>
    </div>
  </fieldset>

  <fieldset>
    <legend>Select one or more options</legend>
    <div class="form-group">
      <div class="col-md-10 col-md-offset-2">
        <div class="checkbox">
          <label>
            <input type="checkbox" name="form-horizontal-example2" id="form-horizontal-example2-a" value="A">
              Option 1 (A)
          </label>
        </div><!-- / .checkbox -->
        <div class="checkbox">
          <label>
            <input type="checkbox" name="form-horizontal-example2" id="form-horizontal-example2-b" value="B">
              Option 1 (B)
          </label>
        </div><!-- / .checkbox -->
        <div class="checkbox">
          <label>
            <input type="checkbox" name="form-horizontal-example2" id="form-horizontal-example2-c" value="C">
              Option 1 (C)
          </label>
        </div><!-- / .checkbox -->
      </div><!-- / .col-md-10 .col-md-offset-2 -->
    </div><!-- / .form-group -->
  </fieldset>

  <fieldset class="form-group">
    <p class="col-md-12 help-block text-muted">Select one or more other options</p>
    <div class="col-md-10 col-md-offset-2">
      <div class="checkbox-inline">
        <label>
          <input type="checkbox" name="form-horizontal-example3" id="form-horizontal-example3-a" value="A">
            Option 2 (A)
        </label>
      </div><!-- / .checkbox-inline -->
      <div class="checkbox-inline">
        <label>
          <input type="checkbox" name="form-horizontal-example3" id="form-horizontal-example3-b" value="B">
            Option 2 (B)
        </label>
      </div><!-- / .checkbox-inline -->
      <div class="checkbox-inline">
        <label>
          <input type="checkbox" name="form-horizontal-example3" id="form-horizontal-example3-c" value="C">
            Option 2 (C)
        </label>
      </div><!-- / .checkbox-inline -->
    </div><!-- / .col-md-10 .col-md-offset-2 -->
  </fieldset>

  <fieldset>
    <legend>Would you like a reply?</legend>
    <div class="form-group">
      <label class="control-label col-md-2" for="form-horizontal-example3">Your name</label>
      <div class="col-md-10">
        <input type="text" class="form-control" id="form-horizontal-example3" placeholder="Adam Smith">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-md-2" for="form-horizontal-example4">Your email address</label>
      <div class="col-md-10">
        <input type="email" class="form-control" id="form-horizontal-example4" placeholder="adam.smith@bas.ac.uk">
        <p class="help-block text-muted">We will only use this information for contacting you about your feedback.</p>
      </div>
    </div>
  </fieldset>
</form>
{% endexample %}

### Inline forms
{: #{{ 'Inline forms' | slugify }} }

{% include snippets/back-to-top.html %}

Use the `.form-inline` class to display labels and controls in a single horizontal row.

On small devices (smaller than 768 pixels) form fields will always stack.
{: .alert .alert-info }

Some manual sizing may be needed for inline forms, ensure thorough testing at a range of grid sizes.
{: .alert .alert-warning }

#### Visible labels
{: #{{ 'Visible labels' | slugify }} }

{% include snippets/back-to-top.html %}

{% example html %}
<form class="form-inline">
  <fieldset>
    <div class="form-group">
      <label class="control-label" for="form-inline-example1">Username</label>
      <input type="text" class="form-control" id="form-inline-example1" placeholder="adam.smith@bas.ac.uk">
    </div>
    <div class="form-group">
      <label class="control-label" for="form-inline-example2">Password</label>
      <input type="password" class="form-control" id="form-inline-example2">
    </div>
    <div class="form-group">
      <div class="checkbox">
        <label class="control-label">
          <input type="checkbox" name="form-inline-example3" id="form-inline-example3-a" value="1" checked>
          Remember Me
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-bsk btn-bsk-primary">Login</button>
  </fieldset>
</form>
{% endexample %}

#### Invisible labels
{: #{{ 'Invisible labels' | slugify }} }

{% include snippets/back-to-top.html %}

It is strongly recommended to include visible labels for each form field (the `placeholder` attribute is not
universally supported yet for example).

Where labels are hidden, the `.sr-only` class **should** always be used to ensure assistive technologies can
understand forms. Alternatively, you can use the `aria-label`, `aria-labelledby` or `title` attributes.
{: .alert .alert-warning }

Labels **should** always be visible for checkboxes and radio options, to indicate what they do.
{: .alert .alert-info }

{% example html %}
<form class="form-inline">
  <fieldset>
    <div class="form-group">
      <label class="sr-only" for="form-inline-example1">Username</label>
      <input type="text" class="form-control" id="form-inline-example1" placeholder="adam.smith@bas.ac.uk">
    </div>
    <div class="form-group">
      <label class="sr-only" for="form-inline-example2">Password</label>
      <input type="password" class="form-control" id="form-inline-example2">
    </div>
    <div class="form-group">
      <div class="checkbox">
        <label>
          <input type="checkbox" name="form-inline-example3" id="form-inline-example3-a" value="1" checked>
          Remember Me
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-bsk btn-bsk-primary">Login</button>
  </fieldset>
</form>
{% endexample %}

### Form sizing
{: #{{ 'Form sizing' | slugify }} }

#### Width (grid sizing)
{: #{{ 'Width (grid sizing)' | slugify }} }

{% include snippets/back-to-top.html %}

The width of each form field, control or label can all be controlled using the
[grid system]({{ '/core/grid' | prepend: site.baseurl }}), as demonstrated by the
[horizontal form layout]({{ '/core/forms/#horizontal-forms' | prepend: site.baseurl }}).

Don't apply grid classes directly to form controls, instead wrap them in a <code>&lt;div&gt;</code> element.
{: .alert .alert-info }

Make sure to use `.control-label` to ensure all labels are virtually aligned.
{: .alert .alert-info }

{% example html %}
<form>
  <div class="row">
    <fieldset class="form-group col-md-6">
      <label class="control-label" for="form-sizing-example1">Text input</label>
      <input type="text" class="form-control" id="form-sizing-example1">
    </fieldset>
  </div>
  <div class="row">
    <fieldset class="form-group">
      <label class="control-label col-md-3" for="form-sizing-example2">An extra long label for a text input for this demo</label>
      <input type="text" class="form-control" id="form-sizing-example2">
    </fieldset>
  </div>
  <div class="row">
    <fieldset class="form-group">
      <label class="control-label" for="form-sizing-example3">Text input</label>
      <div class="col-md-6">
        <input type="text" class="form-control" id="form-sizing-example3">
      </div>
    </fieldset>
  </div>
</form>
{% endexample %}

#### Form control sizing
{: #{{ 'Form control sizing' | slugify }} }

{% include snippets/back-to-top.html %}

Form controls can be sized with similar classes used for
[sizing buttons]({{ '/core/buttons/#sizes' | prepend: site.baseurl }}) applied to the `.form-group` element.

{% example html %}
<form>
  <fieldset class="form-group form-group-lg">
    <label class="control-label" for="form-sizing-example4">Large text input</label>
    <input type="text" class="form-control" id="form-sizing-example4">
  </fieldset>

  <fieldset class="form-group">
    <label class="control-label" for="form-sizing-example4">Default text input</label>
    <input type="text" class="form-control" id="form-sizing-example4">
  </fieldset>

  <fieldset class="form-group form-group-sm">
    <label class="control-label" for="form-sizing-example4">Small text input</label>
    <input type="text" class="form-control" id="form-sizing-example4">
  </fieldset>
</form>
{% endexample %}

## Element states
{: #{{ 'Element states' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

### Disabled state
{: #{{ 'Disabled state' | slugify }} }

{% include snippets/back-to-top.html %}

Use the `disabled` attribute to mark a form field as disabled. This will prevent interaction, change the cursor to
'not-allowed', and alter the field's appearance. In most browsers, setting the `disabled` attribute on a
<code>&lt;fieldset&gt;</code> will disable all of the fields it contains.

**It is not safe to rely on this state to prevent users activating disabled actions**. <br>
Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections **must**
be used for dangerous actions.
{: .alert .alert-danger }

Not all browsers fully support setting the `disabled` attribute on a
<code>&lt;fieldset&gt;</code>. To work around this, either apply the `disabled` attribute on form fields directly, or
use JavaScript to disable them.
{: .alert .alert-warning }

Links, including links styled as buttons, within disabled fieldsets may not be enforced by all browsers. To work around
this, either apply the `disabled` attribute on links directly, or use JavaScript to disable them.
{: .alert .alert-warning }

{% example html %}
<form>
  <fieldset disabled>
    <div class="form-group">
      <label class="control-label" for="form-disabled-example1">Disabled text field</label>
      <input type="text" id="form-disabled-example1" class="form-control">
    </div>
    <div class="form-group">
      <label class="control-label" for="form-disabled-example2">Disabled select menu</label>
      <select id="form-disabled-example2" class="form-control">
        <option>Disabled select menu</option>
      </select>
    </div>
    <div class="checkbox">
      <label class="control-label">
        <input type="checkbox"> Disabled checkbox
      </label>
    </div>
    <button type="submit" class="btn btn-bsk btn-bsk-primary">Disabled Submit</button>
  </fieldset>
</form>
{% endexample %}

### Readonly state
{: #{{ 'Readonly state' | slugify }} }

{% include snippets/back-to-top.html %}

Use the `readonly` attribute to some form fields as read-only. This will prevent interaction and alter the field's
appearance, but won't change the cursor.

Not all form elements support this value, exceptions include:

* Form inputs with a type of:
  * `hidden`
  * `color`
  * `checkbox`
  * `radio`
  * `file`
* selects
* buttons

{% example html %}
<form>
  <fieldset>
    <div class="form-group">
      <label class="control-label" for="form-readonly-example1">Readonly text field</label>
      <input type="text" id="form-readonly-example1" class="form-control" readonly>
    </div>
    <div class="form-group">
      <label class="control-label" for="form-readonly-example1">Readonly textarea</label>
      <textarea id="form-readonly-example2" class="form-control" readonly></textarea>
    </div>
  </fieldset>
</form>
{% endexample %}

## Help text
{: #{{ 'Help text' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

Add context or other guidance to form fields, or more generally to sections of a form, using a combination of
`.help-block` and `.text-muted`.

Where help text relates to a specific form field,
[the `aria-describedby` attribute should be used]({{ '/start/standards-accessibility/#contextual-help-text' | prepend: site.baseurl }}){: .alert-link }
to inform assistive technologies, such as screen readers.
{: .alert .alert-warning }

{% example html %}
<form>
  <fieldset>
    <legend>Would you like a reply?</legend>
    <p class="help-block text-muted">If you would like a reply, please enter your contact details,
  we may not reply straight away.</p>
    <div class="form-group">
        <label class="control-label" for="form-help-example1">Your name</label>
        <input type="text" class="form-control" id="form-help-example1" placeholder="Adam Smith" aria-describedby="form-help-example1-help">
        <p id="form-help-example1-help" class="help-block text-muted">
          Please enter your name as you would expect in a reply (e.g. Mr. A Smith).
        </p>
    </div>
    <div class="form-group">
        <label class="control-label" for="form-help-example2">Your email address</label>
        <input type="email" class="form-control" id="form-help-example2" placeholder="adam.smith@bas.ac.uk">
        <p class="help-block text-muted">We will only use this information for contacting you about your feedback.</p>
    </div>
  </fieldset>
</form>
{% endexample %}

## Validation
{: #{{ 'Validation' | slugify }} }

{% include snippets/topic-metadata.html current_phase="live" current_version="0.1.0" origin="bootstrap" included="yes" %}

The Style Kit includes validation classes, based on the
[standard contextual colours]({{ '/core/colours/#standard-contextual-colours'}}). Apply to the parent of form fields,
such as `.form-group`, for best effect.

It is strongly recommended to include a validation message, with the appropriate
[standard contextual icon]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}){: .alert-link }
where there is a validation warning or failure. This ensures
[validation information is as accessible as possible]({{ '/start/standards-accessibility/#validation-states' | prepend: site.baseurl }}){: .alert-link }
to assistive technologies, such as screen readers.
{: .alert .alert-warning }

| Validation State    | Validation Class | Associated Standard Context |
| ------------------- | ---------------- | --------------------------- |
| Valid               | `.has-success`   | Success                     |
| Valid, with warning | `.has-warning`   | Warning                     |
| Invalid             | `.has-error`     | Danger                      |
{: .table }

**Heads up!** The validation class for invalid fields is changing from `.has-error` to `.has-danger` in the next version
of the Style Kit. See {% jira issue="BSK-135" %} for more information.
{: .alert .alert-info }

{% example html %}
<form>
  <fieldset class="form-group has-success">
      <label class="control-label" for="form-validation-example1">Your email address</label>
      <input type="email" class="form-control" id="form-validation-example1" value="adam.smith@bas.ac.uk">
      <p class="help-block text-muted">We will only use this information for contacting you about your feedback.</p>
  </fieldset>

  <fieldset class="form-group has-warning">
      <label class="control-label" for="form-validation-example2">Your email address</label>
      <input type="email" class="form-control" id="form-validation-example2" value="adam.smith@bas.acc.uk">
      <p class="help-block text-muted">We will only use this information for contacting you about your feedback.</p>
      <p class="help-block text-muted"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Did you mean
      <em>adam.smith@bas.<strong>ac</strong>.uk</em>, rather than <em>adam.smith@bas.<strong>acc</strong>.uk</em>.</p>
  </fieldset>

  <fieldset class="form-group has-error">
      <label class="control-label" for="form-validation-example3">Your email address</label>
      <input type="email" class="form-control" id="form-validation-example3" value="adam.smith" aria-invalid="true">
      <p class="help-block text-muted">We will only use this information for contacting you about your feedback.</p>
      <p class="help-block text-muted"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> <em>adam.smith</em>,
      is not a valid email address.</p>
  </fieldset>
</form>
{% endexample %}

## Examples
{: #{{ 'Examples' | slugify }} }

{% include snippets/back-to-top.html %}

See the [form examples]({{ '/examples/forms' | prepend: site.baseurl }}) for more examples of forms.
