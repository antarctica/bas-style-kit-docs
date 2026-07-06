---
item_type: Interactive
title: Drop-Zone
menus:
  primary_interactivity:
    weight: 7
sections:
  -
    title: Overview
  -
    title: Server requirements
  -
    title: Uses
  -
    title: Examples
body_js_files:
  -
    href: 'https://cdn.web.bas.ac.uk/libs/dropzone/5.5.0/js/dropzone.min.js'
    integrity: 'sha256-fIn7+wa+KI2s9jjRMk/rcswRt8mf82rxIXntRYKLofg='
    type: 'remote'
  -
    href: '/js/dropzone.js'
    type: 'local'
---

{% include topic-section-metadata.html
  title="Overview"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
  included="no"
%}

The Style Kit includes classes and a recommended implementation for using [Dropzone.js](https://www.dropzonejs.com) to
upload multiple files.

{% include topic-section-metadata.html
  title="Dependencies"
  heading_level=2
  phase="live"
  initial_version="0.5.0"
  included="no"
%}

This plugin depends upon:

* [Dropzone.js](https://www.dropzonejs.com)
* [jQuery](https://jquery.com)

{% capture alert_content %}
See [distribution]({{ '/start/distribution/#javascript-dependencies' | prepend: site.baseurl }}){: .bsk-alert-link} for
how to include these dependencies.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Server requirements"
  heading_level=2
%}

You will need an endpoint that can accept form submissions with file uploads, specifically the `multipart/form-data`
encoding type.

In modern browsers this will trigger a [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS)
[preflight request](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#Preflighted_requests) due to the use of a
Non-CORS-safelisted request-headers. In addition to the
[Access-Control-Allow-Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#Access-Control-Allow-Origin) and
[Access-Control-Allow-Methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#Access-Control-Allow-Methods)
headers, you will need to include these header names
in a [Access-Control-Allow-Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#Access-Control-Allow-Headers)
header:

* `Cache-Control`
* `X-Requested-With`

{% capture alert_content %}
Header names are not case sensitive.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="highlight"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Uses"
  heading_level=2
%}

Drop-zones can be useful when multiple files need to be uploaded and allow users to add or remove files multiple times.

{% capture alert_content %}
[Standard file upload fields]({{ '/core/forms/#file-inputs' | prepend: site.baseurl }}){: .bsk-alert-link} should be
used instead of drop-zones where only a single file is needed as they are part of the HTML standard.
{% endcapture %}
{% include bas-style-kit/bsk-snippet--alert.html
  variant="info"
  style="outline"
  content=alert_content
%}

{% include topic-section-metadata.html
  title="Examples"
  heading_level=2
%}

{% example html %}
<form method="POST" enctype="multipart/form-data" action="https://bas-style-kit-file-upload.herokuapp.com/upload-single">
  <fieldset class="bsk-form-group">
    <label class="bsk-control-label" for="dropzone-1">File upload (Drag and Drop)</label>
    <div id="dropzone-1" class="bsk-form-control bsk-dropzone">
      <div class="bsk-dropzone-upload-target bsk-target-initial">
        <div class="bsk-target-inner">Click to select files or drag them here</div>
      </div>
      <div class="bsk-alert bsk-alert-block bsk-alert-outline bsk-alert-danger bsk-dropzone-errors-container">
        <h4>There is a problem</h4>
        <p>One or more files could not be uploaded. If possible, fix the problem and try again.</p>
        <br />
        <ul></ul>
      </div>
      <div class="bsk-dropzone-file-list">
        <div class="bsk-container-fluid">
          <header class="bsk-row bsk-dropzone-file-list-header">
            <div class="bsk-col-md-6">File Name</div>
            <div class="bsk-col-md-2">File Size</div>
            <div class="bsk-col-md-2">File Status</div>
            <div class="bsk-col-md-2 bsk-header-actions"> Actions</div>
          </header>
          <div class="bsk-dropzone-file-list-items">
            <div class="bsk-row bsk-dropzone-file-list-item">
              <div class="bsk-col-md-6" data-dz-name></div>
              <div class="bsk-col-md-2" data-dz-size></div>
              <div class="bsk-col-md-2" data-bsk-dz-status></div>
              <div class="bsk-col-md-2 bsk-item-action-remove">
                <a class="bsk-text-danger" href="#" data-dz-remove>Remove</a>
              </div>
              <div class="bsk-item-progress-bar" style="width:0%;" data-dz-uploadprogress></div>
            </div>
          </div>
          <div class="bsk-dropzone-upload-target bsk-target-additional">
            <div class="bsk-target-inner">Click to select more files or drag them here</div>
          </div>
        </div>
      </div>
    </div>
  </fieldset>
</form>
{% endexample %}

The corresponding JavaScript for this example:

{% highlight js %}
jQuery(function(jQuery){
  // [General] Disable auto discover for all elements:
  Dropzone.autoDiscover = false;

  // [Dropzone 1] Prepare the file list
  var previewsTemplate1 = jQuery('#dropzone-1 .bsk-dropzone-file-list .bsk-dropzone-file-list-items').html();
  jQuery('#dropzone-1 .bsk-dropzone-file-list .bsk-dropzone-file-list-items').empty();

  // [Dropzone 1] Enable dropzone on specific element
  var dropzone1 = new Dropzone('#dropzone-1', {
    url: 'https://bas-style-kit-file-upload.herokuapp.com/upload-single',
    previewsContainer: '#dropzone-1 .bsk-dropzone-file-list-items',
    previewTemplate: previewsTemplate1,
    createImageThumbnails: false,
    clickable: "#dropzone-1 .bsk-target-inner"
  });

  // [Dropzone 1] Add event listeners to add Style Kit specific classes
  dropzone1.on("addedfile", function(file) {
    jQuery('#' + dropzone1.element.id).addClass('bsk-dropzone-started');
  });
  dropzone1.on("reset", function(file) {
    jQuery('#' + dropzone1.element.id).removeClass('bsk-dropzone-started');
  });

  // [Dropzone 1] Add event listeners to update file status for each file item
  dropzone1.on("processing", function(file) {
    jQuery(file.previewElement).find('[data-bsk-dz-status]').text('Pending...');
  });
  dropzone1.on("uploadprogress", function(file, progress) {
    jQuery(file.previewElement).find('[data-bsk-dz-status]').text('Uploading (' + Math.round(progress) + '%)');
  });
  dropzone1.on("success", function(file, message) {
    jQuery(file.previewElement).find('[data-bsk-dz-status]').addClass('bsk-text-success').text('Uploaded');
  });
  dropzone1.on("error", function(file, message, xhr) {
    jQuery('#' + dropzone1.element.id).addClass('bsk-dropzone-errors');
    jQuery(file.previewElement).find('[data-bsk-dz-status]').addClass('bsk-text-danger').text('Upload Error');
    jQuery(file.previewElement).find('[data-dz-name]').addClass('bsk-text-danger');

    var errorMessage = '[' + xhr.status + '] ' + xhr.statusText;

    errorMessage = '<li data-bsk-dz-file-id="' + base64Encode(file.name) + '"><strong>' + file.name + '</strong> - ' + errorMessage + '</li>';
    jQuery('#' + dropzone1.element.id).find('.bsk-dropzone-errors-container ul').append(errorMessage);
  });
  dropzone1.on("removedfile", function(file) {
    jQuery('#' + dropzone1.element.id).find('.bsk-dropzone-errors-container ul li[data-bsk-dz-file-id="' + base64Encode(file.name) + '"]').remove();

    // Check if errors container is now empty
    if (jQuery('#' + dropzone1.element.id).find('.bsk-dropzone-errors-container ul li').length < 1) {
      jQuery('#' + dropzone1.element.id).removeClass('bsk-dropzone-errors');
    }
  });
});
{% endhighlight %}
