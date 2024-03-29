---
item_type: Component
title: Input group
menus:
  primary_components:
    weight: 12
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

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
%}

Use the `.bsk-input-group` class with the `.bsk-input-group-addon` class to place text/icons, buttons, and even other
form elements, before or a after a control in a [form field]({{ '/core/forms/#form-fields' | prepend: site.baseurl }}).

{% capture alert_content %}
Multiple input group add-ons are not supported on a single side (i.e. 2 add-ons on the left).
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
Multiple [form controls]({{ '/core/forms/#form-controls' | prepend: site.baseurl }}){: .bsk-alert-link } used in a
single input group are not supported.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% capture alert_content %}
All input groups should have a label to make sure they can be understood by assistive technologies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="warning"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Supported elements"
  heading_level=2
  phase="live"
  initial_version="0.1.0"
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

{% include topic-section-metadata.html
  title="Variants"
  heading_level=2
%}

{% include topic-section-metadata.html
  title="Basic input group"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
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

[Icons]({{ '/core/icons' | prepend: site.baseurl }}) can be used as well.

{% example html %}
<form>
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="form-input-group-example-4">Username</label>
    <div class="bsk-input-group">
      <span class="bsk-input-group-addon" id="form-input-group-example-4-addon-1"><i class="fas fa-fw fa-user" aria-hidden="true"></i></span>
      <input type="text" class="bsk-form-control" placeholder="Username" id="form-input-group-example-4" aria-describedby="form-input-group-example-4-addon-1">
    </div>
  </fieldset>
</form>
{% endexample %}

{% include topic-section-metadata.html
  title="Checkbox and radio input group"
  heading_level=3
  phase="live"
  initial_version="0.1.0"
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

{% include topic-section-metadata.html
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
