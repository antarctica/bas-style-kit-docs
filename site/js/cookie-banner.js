jQuery(function($){

  // Look for cookie to hide cookie banner

  var cookkieBanner = Cookies.get('seen_cookie_message');

  if (typeof cookkieBanner !== 'undefined') {
    if (cookkieBanner == 'yes') {

      // Since we already have jQuery available we may as well use its convenience methods
      jQuery('#site-cookie-banner').remove();
    }
  }

  // React to closing the cookie banner

  jQuery('#site-cookie-banner').on('close.bs.alert', function () {

    // Set a cookie to persist hiding the cookie banner for the next 30 days
    // TODO: https://github.com/js-cookie/js-cookie/tree/v2.1.0#secure - when SSL available
    Cookies.set('seen_cookie_message', 'yes', { expires: 30 });
  })
});
