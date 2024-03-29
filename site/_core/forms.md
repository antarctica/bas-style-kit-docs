---
item_type: Core
title: Forms
menus:
  primary_core:
    weight: 6
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

{% include topic-section-metadata.html
  title="Form fields"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

A form field is made up of a form control (such as an input or textarea) with an accompanying label to explain what
each field is for.

{% capture alert_content %}
All form fields should have a label to make sure they can be understood by assistive technologies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
For styling across devices and browsers, form controls should use the `.bsk-form-control` class and labels `.bsk-control-label`.
Each form field should be be wrapped in a
[from group]({{ '/core/forms/#form-groups-and-fieldsets' | prepend: site.baseurl }}){: .bsk-alert-link } to
structurally separate each form field.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Form controls"
  heading_level=2
%}

{% capture alert_content %}
**Heads up!** Form control elements are not yet fully styled, but will be in the next version of the Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Inputs"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

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

{% capture alert_content %}
It is a requirement of the HTML5 specification to declare a type for every form input, even if it's just a text input.
Form elements won't be styled correctly without a supported type.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Support for newer input types such as datetime varies significantly between devices and browsers. It is still
recommended use these newer types for forwards-compatibility, especially on mobile devices.
See [this guidance](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input) for more information.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-inputs-example-1">Text input</label>
    <input type="text" class="bsk-form-control" id="form-inputs-example-1">
  </fieldset>

  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-inputs-example-2">Date input</label>
    <input type="date" class="bsk-form-control" id="form-inputs-example-2">
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Textareas"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The height of a text area can be set using the `rows` attribute

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-textareas-example-1">Small textarea</label>
    <textarea class="bsk-form-control" id="form-textareas-example-1" rows="3"></textarea>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-textareas-example-2">Large textarea</label>
    <textarea class="bsk-form-control" id="form-textareas-example-2" rows="9"></textarea>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Selects"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Select elements allow one option to be chosen by default, add the `multiple` attribute to allow more than one.

For single selects, the first option will be selected by default. Set the `selected` attribute on another option to
change this.

{% capture alert_content %}
Select elements have quite stubborn browser styling, such as rounded corners, which is difficult to override.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-select-example-1">Single select</label>
    <select class="bsk-form-control" id="form-select-example-1">
      <option value="1">Option 1</option>
      <option value="2" selected>Option 2</option>
      <option value="3">Option 3</option>
      <option value="4">Option 4</option>
    </select>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-select-example-2">Multiple select</label>
    <select class="bsk-form-control" id="form-select-example-2" multiple>
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
      <option value="4">Option 4</option>
    </select>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="File inputs"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

<!-- For file inputs use `.bsk-form-control-file` instead of `.bsk-form-control`. -->

{% capture alert_content %}
Field input elements have quite stubborn browser styling, such as rounded corners, which are difficult to override.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% capture alert_content %}
You can use the [Drop-zone]({{ '/interactivity/drop-zones' | prepend: site.baseurl }}){: .bsk-alert-link} JavaScript plugin to create a 'drag and drop' file uploader for multiple files.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-file-example-1">File input</label>
    <input type="file" class="bsk-form-control" id="form-file-example-1">
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Radio options and checkboxes"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Checkboxes allow multiple options to be chosen, radio options allow only one. Use the `.bsk-checkbox` and
`.bsk-radio` classes as shown to ensure proper styling.

To pre-select an option set the `checked` attribute.

{% capture alert_content %}
**Heads up!** Radio options and checkbox elements are not yet fully styled, but will be in the next version of the
Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <div class="bsk-checkbox">
      <label class="bsk-control-label">
        <input type="checkbox" name="form-checkbox-example-1" id="form-checkbox-example-1-a" value="A">
          Option 1 (A)
      </label>
    </div>
    <div class="bsk-checkbox">
      <label class="bsk-control-label">
        <input type="checkbox" name="form-checkbox-example-1" id="form-checkbox-example-1-b" value="B">
          Option 1 (B)
      </label>
    </div>
    <div class="bsk-checkbox">
      <label class="bsk-control-label">
        <input type="checkbox" name="form-checkbox-example-1" id="form-checkbox-example-1-c" value="C">
          Option 1 (C)
      </label>
    </div>
  </fieldset>

  <fieldset class="bsk-form-group">
    <div class="bsk-radio">
      <label class="bsk-control-label">
        <input type="radio" name="form-radio-example-1" id="form-radio-example-1-a" value="A">
          Option 1 (A)
      </label>
    </div>
    <div class="bsk-radio">
      <label class="bsk-control-label">
        <input type="radio" name="form-radio-example-1" id="form-radio-example-1-b" value="B">
          Option 1 (B)
      </label>
    </div>
    <div class="bsk-radio">
      <label class="bsk-control-label">
        <input type="radio" name="form-radio-example-1" id="form-radio-example-1-c" value="C">
          Option 1 (C)
      </label>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Inline radio options and checkboxes"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Radio options and checkboxes can be shown inline (i.e. side-by-side rather than stacked) using the
`.bsk-checkbox-inline` and `.bsk-radio-inline` classes **instead** of the standard classes.

{% capture alert_content %}
**Heads up!** Inline radio options and checkbox elements are not yet fully styled, but will be in the next version of
the Style Kit.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <div class="bsk-form-check bsk-form-check-inline">
      <input type="checkbox" name="form-checkbox-example-2" id="form-checkbox-example-2-a" value="A">
      <label class="bsk-control-label">
          Option 1 (A)
      </label>
    </div>
    <div class="bsk-form-check bsk-form-check-inline">
      <input type="checkbox" name="form-checkbox-example-2" id="form-checkbox-example-2-b" value="B">
      <label class="bsk-control-label">
          Option 1 (B)
      </label>
    </div>
    <div class="bsk-form-check bsk-form-check-inline">
      <input type="checkbox" name="form-checkbox-example-2" id="form-checkbox-example-2-c" value="C">
      <label class="bsk-control-label">
          Option 1 (C)
      </label>
    </div>
  </fieldset>

  <fieldset class="bsk-form-group">
    <div class="bsk-form-check bsk-form-check-inline">
      <input type="radio" name="form-radio-example-2" id="form-radio-example-2-a" value="A">
      <label class="bsk-control-label">
          Option 2 (A)
      </label>
    </div>
    <div class="bsk-form-check bsk-form-check-inline">
      <input type="radio" name="form-radio-example-2" id="form-radio-example-2-b" value="B">
      <label class="bsk-control-label">
          Option 2 (B)
      </label>
    </div>
    <div class="bsk-form-check bsk-form-check-inline">
      <input type="radio" name="form-radio-example-2" id="form-radio-example-2-c" value="C">
      <label class="bsk-control-label">
          Option 2 (C)
      </label>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Form buttons"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Form buttons, such as the form submission button, are styled the same way as
[standard buttons]({{ '/core/buttons' | prepend: site.baseurl }}).

{% example html %}
<form>
  <button type="submit" class="bsk-btn bsk-btn-default">Submit</button>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Static control"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Static controls can be used to represent pre-computed, or locked values within a form.

{% example html %}
<form>
  <fieldset>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-inputs-example-1">Reporter name</label>
      <p class="bsk-form-control-static" id="form-static-example-1">Adam Smith</p>
    </div>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-static-example-2">Reporter email</label>
      <p class="bsk-form-control-static" id="form-static-example-2">john.smith@example.co.uk</p>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Form layouts"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Form groups and fieldsets"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The `.bsk-form-group` class is intended to wrap around an input, its label and extra elements (such as help text).
It applies spacing to visually separate each input group.

Where a form field is standalone, use a <code>&lt;fieldset&gt;</code>. For a group of related controls, use
<code>&lt;div&gt;</code>'s wrapped in a <code>&lt;fieldset&gt;</code> with a suitable <code>&lt;legend&gt;</code>.

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-group-example-1">Small textarea</label>
    <textarea class="bsk-form-control" id="form-group-example-1" rows="3"></textarea>
  </fieldset>

  <fieldset>
    <legend>Would you like a reply?</legend>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-group-example-2">Your name</label>
      <input type="text" class="bsk-form-control" id="form-group-example-2" placeholder="Adam Smith">
    </div>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-group-example-3">Your email address</label>
      <input type="email" class="bsk-form-control" id="form-group-example-3" placeholder="john.smith@example.co.uk">
      <p class="bsk-help-block">We will only use this information for contacting you about your feedback.</p>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Horizontal forms"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `.bsk-form-horizontal` class to display labels and controls side-by-side using
[grid system]({{ '/core/grid/' | prepend: site.baseurl }}). Ensure all labels use the `.bsk-control-label` class for best
results.

{% capture alert_content %}
When using a <code>&lt;fieldset&gt;</code> with a <code>&lt;legend&gt;</code>, apply the `.bsk-form-group` class to an
inner <code>&lt;div&gt;</code> to prevent the <code>&lt;legend&gt;</code> from appearing to overflow horizontally.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<form class="bsk-form-horizontal">
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label bsk-col-md-2" for="form-horizontal-example-1">Small textarea</label>
    <div class="bsk-col-md-10">
      <textarea class="bsk-form-control" id="form-horizontal-example-1" rows="3"></textarea>
    </div>
  </fieldset>

  <fieldset>
    <legend>Select one or more options</legend>
    <div class="bsk-form-group">
      <div class="bsk-col-md-10 bsk-offset-md-2">
        <div class="bsk-checkbox">
          <label>
            <input type="checkbox" name="form-horizontal-example-2" id="form-horizontal-example-2-a" value="A">
              Option 1 (A)
          </label>
        </div><!-- / .checkbox -->
        <div class="bsk-checkbox">
          <label>
            <input type="checkbox" name="form-horizontal-example-2" id="form-horizontal-example-2-b" value="B">
              Option 1 (B)
          </label>
        </div><!-- / .checkbox -->
        <div class="bsk-checkbox">
          <label>
            <input type="checkbox" name="form-horizontal-example-2" id="form-horizontal-example-2-c" value="C">
              Option 1 (C)
          </label>
        </div><!-- / .checkbox -->
      </div><!-- / .col-md-10 .col-md-offset-2 -->
    </div><!-- / .form-group -->
  </fieldset>

  <fieldset class="bsk-form-group">
    <div class="bsk-col-md-10 bsk-offset-md-2">
      <div class="bsk-form-check bsk-form-check-inline">
        <input type="checkbox" name="form-horizontal-example-3" id="form-horizontal-example-3-a" value="A">
        <label>
            Option 2 (A)
        </label>
      </div><!-- / .checkbox-inline -->
      <div class="bsk-form-check bsk-form-check-inline">
        <input type="checkbox" name="form-horizontal-example-3" id="form-horizontal-example-3-b" value="B">
        <label>
            Option 2 (B)
        </label>
      </div><!-- / .checkbox-inline -->
      <div class="bsk-form-check bsk-form-check-inline">
        <input type="checkbox" name="form-horizontal-example-3" id="form-horizontal-example-3-c" value="C">
        <label>
            Option 2 (C)
        </label>
      </div><!-- / .checkbox-inline -->
    </div><!-- / .col-md-10 .col-md-offset-2 -->
  </fieldset>

  <fieldset>
    <legend>Would you like a reply?</legend>
    <div class="bsk-form-group">
      <label class="bsk-control-label bsk-col-md-2" for="form-horizontal-example-3">Your name</label>
      <div class="bsk-col-md-10">
        <input type="text" class="bsk-form-control" id="form-horizontal-example-3" placeholder="John Smith">
      </div>
    </div>
    <div class="bsk-form-group">
      <label class="bsk-control-label bsk-col-md-2" for="form-horizontal-example-4">Your email address</label>
      <div class="bsk-col-md-10">
        <input type="email" class="bsk-form-control" id="form-horizontal-example-4" placeholder="john.smith@example.co.uk">
        <p class="bsk-help-block">We will only use this information for contacting you about your feedback.</p>
      </div>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Inline forms"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  initial_version="0.7.0"
  included="yes"
%}

Use the classes in the example to display labels and controls in a single horizontal row.

{% capture alert_content %}
Some manual sizing may be needed for inline forms, ensure thorough testing at a range of grid sizes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
On small devices (smaller than 768 pixels) form fields will always stack.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Visible labels"
  heading_level=4
%}

{% example html %}
<form>
  <div class="bsk-row mb-3">
    <label class="bsk-col-auto bsk-col-form-label" for="form-inline-example-1a">Username</label>
    <div class="bsk-col-md-2 bsk-p-0">
      <input type="text" class="bsk-form-control" id="form-inline-example-1a" placeholder="john.smith@example.co.uk">
    </div>
    <label class="bsk-col-auto bsk-col-form-label" for="form-inline-example-2a">Password</label>
    <div class="bsk-col-md-2 bsk-p-0">
      <input type="password" class="bsk-form-control" id="form-inline-example-2a">
    </div>
    <div class="bsk-col-auto">
      <input type="checkbox" name="form-inline-example-3a" id="form-inline-example-3a" value="1" checked>
        Remember Me
      <button type="submit" class="bsk-btn bsk-btn-default">Login</button>
    </div>
  </div>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Invisible labels"
  heading_level=4
%}

It is strongly recommended to include visible labels for each form field (the `placeholder` attribute is not
universally supported yet for example).

{% capture alert_content %}
Where labels are hidden, the `.bsk-visually-hidden` class **should** always be used to ensure assistive technologies can
understand forms. Alternatively, you can use the `aria-label`, `aria-labelledby` or `title` attributes.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Labels **should** always be visible for checkboxes and radio options, to indicate what they do.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<form class="bsk-row bsk-align-items-center">
  <div class="bsk-col-3">
    <label class="bsk-visually-hidden" for="form-inline-example-1b">Username</label>
    <div class="bsk-col-sm-12 bsk-ps-0 bsk-pe-0">
      <input type="text" class="bsk-form-control" id="form-inline-example-1b" placeholder="john.smith@example.co.uk">
    </div>
  </div>
  <div class="bsk-col-3">
    <label class="bsk-visually-hidden" for="form-inline-example-2b">Password</label>
    <div class="bsk-col-sm-12 bsk-ps-0 bsk-pe-0">
      <input type="password" class="bsk-form-control" id="form-inline-example-2b" placeholder="********">
    </div>
  </div>
  <div class="bsk-col-auto">
    <input type="checkbox" name="form-inline-example-3b" id="form-inline-example-3b" value="1" checked>
      Remember Me
    <button type="submit" class="bsk-btn bsk-btn-default">Login</button>
  </div>
</form>
{% endexample %}

{: #{{ 'Form sizing' | slugify }} }

{% include topic-section-metadata.html
  title="Form sizing"
  heading_level=3
%}

{% include topic-section-metadata.html
  title="Width"
  heading_level=4
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

The width of each form field, control or label can all be controlled using the
[grid system]({{ '/core/grid' | prepend: site.baseurl }}), as demonstrated by the
[horizontal form layout]({{ '/core/forms/#horizontal-forms' | prepend: site.baseurl }}).

{% capture alert_content %}
Don't apply grid classes directly to form controls, instead wrap them in a <code>&lt;div&gt;</code> element.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Make sure to use `.control-label` to ensure all labels are virtually aligned.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% example html %}
<form>
  <div class="bsk-row">
    <fieldset class="bsk-form-group bsk-col-md-3">
      <label class="bsk-control-label" for="form-sizing-example-1b">Text input</label>
      <input type="text" class="bsk-form-control" id="form-sizing-example-1">
    </fieldset>
  </div>
  <div class="bsk-row">
    <fieldset class="bsk-form-group bsk-col-md-6">
      <label class="bsk-control-label" for="form-sizing-example-2">An extra long label for a text input for this demo</label>
      <input type="text" class="bsk-form-control" id="form-sizing-example-2">
    </fieldset>
  </div>
  <div class="bsk-row">
    <fieldset class="bsk-form-group bsk-col-md-12">
      <label class="bsk-control-label" for="form-sizing-example-3">Text input</label>
      <input type="text" class="bsk-form-control" id="form-sizing-example-3">
    </fieldset>
  </div>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Form control sizing"
  heading_level=4
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Add one of these classes to alter the size of a form control:

| Form Control Size | Form Control Size Class |
| ----------------- | ----------------------- |
| Large form field  | `.bsk-form-group-lg`    |
| Small form field  | `.bsk-form-group-sm`    |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<form>
  <fieldset class="bsk-form-group bsk-form-group-lg">
    <label class="bsk-control-label" for="form-sizing-example-4">Large text input</label>
    <input type="text" class="bsk-form-control" id="form-sizing-example-4">
  </fieldset>

  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-sizing-example-4">Default text input</label>
    <input type="text" class="bsk-form-control" id="form-sizing-example-4">
  </fieldset>

  <fieldset class="bsk-form-group bsk-form-group-sm">
    <label class="bsk-control-label" for="form-sizing-example-4">Small text input</label>
    <input type="text" class="bsk-form-control" id="form-sizing-example-4">
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Element states"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Disabled state"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `disabled` attribute to mark a form field as disabled. This will prevent interaction, change the cursor to
'not-allowed', and alter the field's appearance. In most browsers, setting the `disabled` attribute on a
<code>&lt;fieldset&gt;</code> will disable all of the fields it contains.

<div class="bsk-alert bsk-alert-solid bsk-alert-danger bsk-alert-block bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="fas fa-fw fa-exclamation-circle bsk-alert-icon"></i>
      It is not safe to rely on this state to prevent users activating disabled actions
    </div>
  </header>
  <p>Browsers may not enforce these properties, or users may trivially edit the DOM. Server side protections
   <strong>must</strong> be used for dangerous actions.</p>
</div>

{% capture alert_content %}
Not all browsers fully support setting the `disabled` attribute on a
<code>&lt;fieldset&gt;</code>. To work around this, either apply the `disabled` attribute on form fields directly, or
use JavaScript to disable them.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Links, including links styled as buttons, within disabled fieldsets may not be enforced by all browsers. To work around
this, either apply the `disabled` attribute on links directly, or use JavaScript to disable them.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="danger"
  style="outline"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset disabled>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-disabled-example-1">Disabled text field</label>
      <input type="text" id="form-disabled-example-1" class="bsk-form-control">
    </div>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-disabled-example-2">Disabled select menu</label>
      <select id="form-disabled-example-2" class="bsk-form-control bsk-form-select">
        <option>Disabled select menu</option>
      </select>
    </div>
    <div class="bsk-checkbox">
      <label class="bsk-control-label">
        <input type="checkbox"> Disabled checkbox
      </label>
    </div>
    <button type="submit" class="bsk-btn bsk-btn-primary">Disabled Submit</button>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Readonly state"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
  included="yes"
%}

Use the `readonly` attribute to some form fields as read-only. This will prevent interaction and alter the field's
appearance, but won't change the cursor.

<div class="bsk-alert bsk-alert-block bsk-alert-outline bsk-alert-warning bsk-alert-icon">
  <header class="bsk-alert-heading">
    <div class="bsk-h4">
      <i class="far fa-fw fa-exclamation-triangle bsk-alert-icon" aria-hidden="true"></i>
      Not all form elements support this value
    </div>
  </header>
  <ul>
    <p>Exceptions include:</p>
    <li>Form inputs with a type of:
      <ul>
        <li><code>hidden</code></li>
        <li><code>color</code></li>
        <li><code>checkbox</code></li>
        <li><code>radio</code></li>
        <li><code>file</code></li>
      </ul>
    </li>
    <li>selects</li>
    <li>buttons</li>
  </ul>
</div>

{% example html %}
<form>
  <fieldset>
    <div class="bsk-form-group">
      <label class="bsk-control-label" for="form-readonly-example-1">Readonly text field</label>
      <input type="text" id="form-readonly-example-1" class="bsk-form-control" readonly>
    </div>
    <div class="form-group">
      <label class="bsk-control-label" for="form-readonly-example-1">Readonly textarea</label>
      <textarea id="form-readonly-example-2" class="bsk-form-control" readonly></textarea>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Help text"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

Add context or other guidance to form fields, or more generally to sections of a form, using a combination of
`.bsk-help-block`.

{% capture alert_content %}
Where help text relates to a specific form field,
[the `aria-describedby` attribute should be used]({{ '/start/standards-accessibility/#contextual-help-text' | prepend: site.baseurl }}){: .bsk-alert-link }
to inform assistive technologies, such as screen readers.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset>
    <legend>Would you like a reply?</legend>
    <p class="bsk-help-block">If you would like a reply, please enter your contact details,
  we may not reply straight away.</p>
    <div class="bsk-form-group">
        <label class="bsk-control-label" for="form-help-example-1">Your name</label>
        <input type="text" class="bsk-form-control" id="form-help-example-1" placeholder="Adam Smith" aria-describedby="form-help-example-1-help">
        <p id="form-help-example-1-help" class="bsk-help-block">
          Please enter your name as you would expect in a reply (e.g. Mr. A Smith).
        </p>
    </div>
    <div class="bsk-form-group">
        <label class="bsk-control-label" for="form-help-example-2">Your email address</label>
        <input type="email" class="bsk-form-control" id="form-help-example-2" placeholder="john.smith@example.co.uk">
        <p class="bsk-help-block">We will only use this information for contacting you about your feedback.</p>
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Validation"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
  revised_version="0.7.0"
  included="yes"
%}

The Style Kit includes validation classes, based on the
[standard contextual colours]({{ '/core/colours/#standard-contextual-colours'}}). Apply to the parent of form fields,
such as `.bsk-form-group`, for best effect.

{% capture alert_content %}
**Heads up!** The Style Kit used to include a warning validation state. This has been removed and should not be used.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
[standard contextual icons]({{ '/core/icons/#standard-contextual-icons' | prepend: site.baseurl }}){: .bsk-alert-link }
can be used alongside validation messages.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

| Validation State    | Validation Class     | Associated Standard Context |
| ------------------- | -------------------- | --------------------------- |
| Valid               | `.bsk-has-success`   | Success                     |
| Invalid             | `.bsk-has-error`     | Danger                      |
{: .bsk-table .bsk-table-responsive }

{% example html %}
<form>
  <fieldset class="bsk-form-group bsk-has-success">
      <label class="bsk-control-label" for="form-validation-example-1">Your email address</label>
      <input type="email" class="bsk-form-control" id="form-validation-example-1" value="john.smith@example.co.uk">
      <p class="bsk-help-block">
        We will only use this information for contacting you about your feedback.
      </p>
  </fieldset>

  <fieldset class="bsk-form-group bsk-has-error">
      <label class="bsk-control-label" for="form-validation-example-3">Your email address</label>
      <input type="email" class="bsk-form-control" id="form-validation-example-3" value="john.smith" aria-invalid="true">
      <p class="bsk-help-block">We will only use this information for contacting you about your feedback.</p>
      <p class="bsk-help-block"><i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"></i> <em>john.smith</em>,
      is not a valid email address.</p>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

See the [form examples]({{ '/examples/forms' | prepend: site.baseurl }}) for more examples of forms.
