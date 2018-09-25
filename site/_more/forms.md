---
title: Form examples
menus:
  primary_more:
    weight: 2
sections:
  -
    title: Basic form
---

## Example: Basic form
{: #{{ 'Basic form' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

This form shows common form controls, optional states and how these can be arranged using the default form layout.

{% example html %}
<form>
  <fieldset class="bsk-form-group">
      <label for="basic-form-example-field1">Your name</label>
      <input type="text" class="bsk-form-control" id="basic-form-example-field1" placeholder="John Smith">
  </fieldset>

  <fieldset class="bsk-form-group">
      <label for="basic-form-example-field2">Your email address</label>
      <input type="email" class="bsk-form-control" id="basic-form-example-field2" placeholder="john.smith@example.co.uk">
      <small class="bsk-help-text bsk-text-muted">
        We will only use this information for contacting you about your feedback.
      </small>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label for="basic-form-example-field3">Example select</label>
    <select class="bsk-form-control" id="basic-form-example-field3">
      <option value="1">Option 1</option>
      <option value="2" selected>Option 2</option>
      <option value="3">Option 3</option>
      <option value="4">Option 4</option>
      <option value="5">Option 5</option>
    </select>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label for="basic-form-example-field4">Example multiple select</label>
    <select multiple class="bsk-form-control" id="basic-form-example-field4">
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
      <option value="4">Option 4</option>
      <option value="5">Option 5</option>
    </select>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label for="basic-form-example-field5">Example textarea</label>
    <textarea class="bsk-form-control" id="basic-form-example-field5" rows="3"></textarea>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label for="basic-form-example-field6">File input</label>
    <input type="file" class="bsk-form-control-file" id="basic-form-example-field6">
  </fieldset>

  <fieldset class="bsk-form-group">
    <div class="bsk-radio">
      <label>
        <input type="radio" name="basic-form-example-field7" id="basic-form-example-field7-a" value="option1" checked>
        Option one
      </label>
    </div>
    <div class="bsk-radio">
      <label>
        <input type="radio" name="basic-form-example-field7" id="basic-form-example-field7-b" value="option2">
        Option two
      </label>
    </div>
    <div class="bsk-radio bsk-disabled">
      <label>
        <input type="radio" name="basic-form-example-field7" id="basic-form-example-field7-c" value="option3" disabled>
        Option three is disabled
      </label>
    </div>
  </fieldset>

  <fieldset class="bsk-form-group">
    <div class="bsk-checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
  </fieldset>

  <button type="submit" class="bsk-btn bsk-btn-default">Submit</button>
</form>
{% endexample %}

## Example: Form inputs
{: #{{ 'Form inputs' | slugify }} }

{% include bas-style-kit/bsk-snippet--back-to-top.html %}

This form shows the various types of form input supported by the Style Kit.

{% capture alert_content %}
Support for newer input types such as datetime varies significantly between devices and browsers. It is still
recommended to use these newer types for forwards-compatibility, especially on mobile devices.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field1">Text input</label>
    <input type="text" class="bsk-form-control" id="inputs-form-example-field1">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field2">Password input</label>
    <input type="password" class="bsk-form-control" id="inputs-form-example-field2">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field3">Email input</label>
    <input type="email" class="bsk-form-control" id="inputs-form-example-field3">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field4">Number input</label>
    <input type="number" class="bsk-form-control" id="inputs-form-example-field4">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field5">Time input</label>
    <input type="time" class="bsk-form-control" id="inputs-form-example-field5">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field6">Date input</label>
    <input type="date" class="bsk-form-control" id="inputs-form-example-field6">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field7">Week input</label>
    <input type="week" class="bsk-form-control" id="inputs-form-example-field7">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field8">Month input</label>
    <input type="month" class="bsk-form-control" id="inputs-form-example-field8">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field9">Datetime local input</label>
    <input type="datetime-local" class="bsk-form-control" id="inputs-form-example-field10">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field10">URL input</label>
    <input type="url" class="bsk-form-control" id="inputs-form-example-field10">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field11">Search input</label>
    <input type="search" class="bsk-form-control" id="inputs-form-example-field11">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field12">Telephone (tel) input</label>
    <input type="tel" class="bsk-form-control" id="inputs-form-example-field12">
  </fieldset>
  <fieldset class="bsk-form-group">
    <label for="inputs-form-example-field13">Colour (color) input</label>
    <input type="color" class="bsk-form-control" id="inputs-form-example-field13">
  </fieldset>
</form>
{% endexample %}
