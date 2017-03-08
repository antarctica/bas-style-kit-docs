jQuery(function($){

  // Look for cookie to hide cookie banner

  var cookieBannerValue = Cookies.get('seen_cookie_message');

  if (typeof cookieBannerValue !== 'undefined') {
    if (cookieBannerValue == 'yes') {

      // Supress cookie message
      // Since we already have jQuery available we may as well use its convenience methods
      jQuery('#site-cookie-banner').remove();
    }
  }

  // React to closing the cookie banner

  jQuery('#site-cookie-banner').on('close.bs.alert', function () {

    // Set a cookie to persist hiding the cookie banner for the next 30 days
    var cookie_name = '';
    var cookie_value = 'yes'

    Cookies.set(
      'seen_cookie_message',  // cookie name
      'yes',                  // cookie value
      {
        expires: 30           // in days
      }
    );
  })
});
