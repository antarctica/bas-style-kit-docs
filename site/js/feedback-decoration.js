jQuery(function($){

  // If JS is available the collapse plugin can be used to hide additional information until requested by the user
  jQuery('#feedbackEnvironmentContainer').addClass('collapse');
  jQuery('#feedbackEnvironmentContainerTrigger').removeAttr('disabled');

  // Disable the trigger once the additional information has been shown
  $('#feedbackEnvironmentContainer').on('shown.bs.collapse', function () {
    jQuery('#feedbackEnvironmentContainerTrigger').attr('disabled', 'disabled');

    console.log('rencia');
  })

  console.log('Debbie');
});
