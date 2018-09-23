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

  function humanFileSize(size) {
    var i = size == 0 ? 0 : Math.floor( Math.log(size) / Math.log(1024) );
    return ( size / Math.pow(1024, i) ).toFixed(2) * 1 + ' ' + ['B', 'KB', 'MB', 'GB', 'TB'][i];
  };

  function base64Encode(str) {
    return btoa(encodeURIComponent(str).replace(/%([0-9A-F]{2})/g, function(match, p1) {
      return String.fromCharCode(parseInt(p1, 16));
    }))
  };
});
