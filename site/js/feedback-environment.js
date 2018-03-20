jQuery(function($){
  // JS is available if this script can run
  jQuery('#feedbackEnvironmentJSAvailable').val('true');
  jQuery('#feedbackEnvironmentOutputJSAvailable').text('Yes');

  // Use refer as specific URL
  var referrer = document.referrer;
  if (referrer != '') {
    jQuery('#feedbackScopeSpecificUrl').val(referrer);
  }

  // Get user-agent
  if (typeof navigator.userAgent !== 'undefined') {
    var ua = navigator.userAgent;

    if (ua != '') {
      jQuery('#feedbackEnvironmentUA').val(ua);
      jQuery('#feedbackEnvironmentOutputUA').text(ua);
    }
  }

  // Get browser size
  var browserSize = jQuery(window).width() + ' x ' + jQuery(window).height();
  jQuery('#feedbackEnvironmentBrowserSize').val(browserSize);
  jQuery('#feedbackEnvironmentOutputBrowserSize').text(browserSize);
});
