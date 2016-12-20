jQuery(function($){

  // Look for cookie to hide cookie banner

  var cookieBanner = Cookies.get('seen_cookie_message');

  if (typeof cookieBanner !== 'undefined') {
    if (cookieBanner == 'yes') {

      // Since we already have jQuery available we may as well use its convenience methods
      jQuery('#site-cookie-banner').remove();
    }
  }

  // React to closing the cookie banner

  jQuery('#site-cookie-banner').on('close.bs.alert', function () {

    // Set a cookie to persist hiding the cookie banner for the next 30 days
    Cookies.set('seen_cookie_message', 'yes', {
      expires: 30
    });
  })
});
