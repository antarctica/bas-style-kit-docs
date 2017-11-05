---
title: Input group
sections:
  -
    title: Overview
  -
    title: Supported elements
  -
    title: Variants
  -
    title: Sizing
---

{% include snippets/table-of-contents.md %}

{% include snippets/topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-input-group` class with the `.bsk-input-group-addon` class to place text/icons, buttons, and even other
form elements, before or a after a control in a [form field]({{ '/core/forms/#form-fields' | prepend: site.baseurl }}).

{% alert warning %}
Multiple input group add-ons are not supported on a single side (i.e. 2 add-ons on the left).
{% endalert %}

{% alert warning %}
Multiple [form controls]({{ '/core/forms/#form-controls' | prepend: site.baseurl }}) used in a single input group are
not supported.
{% endalert %}

{% alert warning %}
All input groups should have a label to make sure they can be understood by assistive technologies.
{% endalert %}

{% include snippets/topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Input groups are designed for textual [form inputs]({{ '/core/forms/#inputs' | prepend: site.baseurl }}) only.
Other elements may be used, but are not supported and may not look right.

Inputs groups should be nested within other components such as
[form group]({{ '/core/forms/#form-groups-and-fieldsets' | prepend: site.baseurl }}) or
[grid columns]({{ '/core/grid/#grid-sizes' | prepend: site.baseurl }}), not mixed together.

[Tooltips]({{ '/interactivity/tooltip' | prepend: site.baseurl }}) and
[Popovers]({{ '/interactivity/popover' | prepend: site.baseurl }}) used within input groups require extra styling,
such as the example below, to avoid side effects, and may not otherwise look right:

{% highlight scss %}
container: 'body';
{% endhighlight %}

{% include snippets/topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include snippets/topic-section-metadata.html
  title="Basic input group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

Input group addons can be before and/or after a
[form control]({{ '/core/forms/#form-controls' | prepend: site.baseurl }}), these examples use text.

{% example html %}
<form>
  <!-- Input group addon before a form control -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-1">Amount (sterling)</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-1-addon-1">£</span>
      <input type="number" class="bsk-form-control" placeholder="Amount (sterling)" id="form-input-group-example-1" aria-describedby="form-input-group-example-1-addon-1">
    </div>
  </fieldset>

  <!-- Input group addon after a form control -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-2">Amount (thousands)</label>
    <div class="bsk-input-group">
      <input type="number" class="bsk-form-control" placeholder="Amount (thousands)" id="form-input-group-example-2" aria-describedby="form-input-group-example-2-addon-1">
      <span class="bsk-input-group-addon" id="form-input-group-example-2-addon-1">000</span>
    </div>
  </fieldset>

  <!-- Input group addon before and after a form control -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-3">Amount (£, thousands)</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-3-addon-1">£</span>
      <input type="number" class="bsk-form-control" placeholder="Amount" id="form-input-group-example-3" aria-describedby="form-input-group-example-3-addon-1" aria-describedby="form-input-group-example-3-addon-2">
      <span class="bsk-input-group-addon" id="form-input-group-example-3-addon-2">000</span>
    </div>
  </fieldset>
</form>
{% endexample %}

Icons can be used as well.

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-4">Username</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-4-addon-1"><i class="fa fa-fw fa-user" aria-hidden="true"></i></span>
      <input type="text" class="bsk-form-control" placeholder="Username" id="form-input-group-example-4" aria-describedby="form-input-group-example-4-addon-1">
    </div>
  </fieldset>
</form>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Checkbox and radio input group"
  heading_level=3
  current_phase="live"
  current_version="0.1.0"
  included="yes"
%}

[Radio options and checkboxes]({{ '/core/forms/#radio-options-and-checkboxes' | prepend: site.baseurl }}) can be used
instead of text.

{% example html %}
<form>
  <!-- Input group addon with checkbox control -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-5">Amount (sterling, optional surcharge)</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-5-addon-1">
        <input type="checkbox" aria-label="checkbox"> £
      </span>
      <input type="text" class="bsk-form-control" placeholder="Amount (sterling, optional surcharge)" id="form-input-group-example-5" aria-describedby="form-input-group-example-5-addon-1">
    </div>
  </fieldset>

  <!-- Input group addon with radio option control -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-6">Amount (currency: sterling)</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-6-addon-1">
        <input type="radio" aria-label="radio option"> £
      </span>
      <input type="text" class="bsk-form-control" placeholder="Amount (currency: sterling)" id="form-input-group-example-6" aria-describedby="form-input-group-example-6-addon-1">
    </div>
  </fieldset>
</form>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Button input group"
  heading_level=3
  current_phase="alpha"
  future_phase="beta"
  current_version="0.1.0"
  future_version="0.2.0"
  included="yes"
%}

Use the `.bsk-input-group-btn` class, instead of `.bsk-input-group-addon`, as an element which contains a
[button]({{ '/core/buttons' | prepend: site.baseurl }}).

{% alert warning %}
**Heads up!** Buttons in input groups are not yet fully supported.
{% endalert %}

{% example html %}
<form>
  <!-- Input group with a button -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-6">Input group with button</label>
    <div class="bsk-input-group">
      <div class="bsk-input-group-btn">
        <button class="bsk-btn bsk-btn-default">Button</button>
      </div>
      <input type="text" class="bsk-form-control" placeholder="Text input" id="form-input-group-example-6">
    </div>
  </fieldset>
</form>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Drop-down button input group"
  heading_level=3
  current_phase="alpha"
  future_phase="beta"
  current_version="0.1.0"
  future_version="0.2.0"
  included="yes"
%}

Use the `.bsk-input-group-btn` class, instead of `.bsk-input-group-addon`, as an element which contains a
[button drop-down]({{ '/components/drop-down/#button-drop-down' | prepend: site.baseurl }}).

{% alert warning %}
**Heads up!** Button drop-downs in input groups are not yet fully supported.
{% endalert %}

{% example html %}
<form>
  <!-- Input group with a button drop-down -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-7">Input group with button</label>
    <div class="bsk-input-group">
      <div class="bsk-input-group-btn">
        <div class="bsk-dropdown">
          <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            Dropdown <span class="bsk-caret"></span>
          </button>
          <ul class="bsk-dropdown-menu" aria-labelledby="dropdown-menu-1">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
          </ul>
        </div>
      </div>
      <input type="text" class="bsk-form-control" placeholder="Text input" id="form-input-group-example-7">
    </div>
  </fieldset>
</form>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Split-button drop-down input group"
  heading_level=3
  current_phase="alpha"
  future_phase="beta"
  current_version="0.1.0"
  future_version="0.2.0"
  included="yes"
%}

Use the `.bsk-input-group-btn` class, instead of `.bsk-input-group-addon`, as an element which contains a
[split-button drop-down]({{ '/components/drop-down/#split-button-drop-down' | prepend: site.baseurl }}).

**Heads up!** Split-button drop-down's in input groups are not yet fully supported.
{: .alert .alert-warning }

{% example html %}
<form>
  <!-- Input group with a split-button drop-down -->
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-8">Input group with button</label>
    <div class="bsk-input-group">
      <div class="bsk-input-group-btn">
        <div class="bsk-btn-group">
          <button class="bsk-btn bsk-btn-default" type="button">Dropdown</button>
          <button class="bsk-btn bsk-btn-default bsk-dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="bsk-caret"></span>
            <span class="bsk-sr-only">Toggle Dropdown</span>
          </button>
          <ul class="bsk-dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
          </ul>
        </div>
      </div>
      <input type="text" class="bsk-form-control" placeholder="Text input" id="form-input-group-example-8">
    </div>
  </fieldset>
</form>
{% endexample %}

{% include snippets/topic-section-metadata.html
  title="Sizing"
  heading_level=2
%}

Input groups scale with the size of their
[form group]({{ '/core/forms/#form-groups-and-fieldsets' | prepend: site.baseurl }}).

{% example html %}
<form>
  <fieldset class="bsk-form-group bsk-form-group-lg">
    <label class="bsk-control-label" for="form-input-group-example-9">Large input group</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-9-addon-1">Addon before</span>
      <input type="text" class="bsk-form-control" id="form-input-group-example-9" aria-describedby="form-input-group-example-9-addon-1">
    </div>
  </fieldset>

  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-10">Default input group</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-10-addon-1">Addon before</span>
      <input type="text" class="bsk-form-control" id="form-input-group-example-10" aria-describedby="form-input-group-example-10-addon-1">
    </div>
  </fieldset>

  <fieldset class="bsk-form-group bsk-form-group-sm">
    <label class="bsk-control-label" for="form-input-group-example-10">Small input group</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-10-addon-1">Addon before</span>
      <input type="text" class="bsk-form-control" id="form-input-group-example-10" aria-describedby="form-input-group-example-11-addon-1">
    </div>
  </fieldset>
</form>
{% endexample %}
