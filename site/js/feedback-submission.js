// BAS Feedback Service - Website feedback form submission script
// Depends on jQuery

function prepareFeedbackForm(feedbackFormSelector, referer) {
  // Setup dynamic form inputs
  if (typeof referer == 'undefined' || referer == '') {
      $(feedbackFormSelector + ' input[name=feedbackScopeSpecificUrl]').val(window.location.href);
  } else {
      $(feedbackFormSelector + ' input[name=feedbackScopeSpecificUrl]').val(referer);
  }
}

function prepareFeedbackResponse(feedbackFormSelector) {
  var inputs = {};
  inputs['key'] = $(feedbackFormSelector + ' input[name=feedbackServiceKey]').val();
  inputs['type'] = $(feedbackFormSelector + ' input[name=feedbackType]:checked').val();
  inputs['from_name'] = $(feedbackFormSelector + ' input[name=feedbackContactName]').val();
  inputs['from_email'] = $(feedbackFormSelector + ' input[name=feedbackContactEmail]').val();

  if ($(feedbackFormSelector + ' input[name=feedbackScope]:checked').val() == 'specific') {
      inputs['scope'] = $(feedbackFormSelector + ' input[name=feedbackScopeSpecificUrl]').val();
  } else {
      inputs['scope'] = '*';
  }

  // Build message
  inputs['message'] = "== message ==\n\n" + $(feedbackFormSelector + ' textarea[name=feedbackDetails]').val() + "\n\n" +
  "== environment ==\n\nSite revision: " + $(feedbackFormSelector + ' input[name=feedbackEnvironmentSiteRevision]').val() +
  "\nStyle Kit version: " + $(feedbackFormSelector + " input[name=feedbackEnvironmentBSKVersion]").val()  +
  "\nJS available: " + $(feedbackFormSelector + ' input[name=feedbackEnvironmentJSAvailable]').val() +
  "\nUser agent: " + $(feedbackFormSelector + ' input[name=feedbackEnvironmentUA]').val() +
  "\nViewport size (width x height): " + $(feedbackFormSelector + ' input[name=feedbackEnvironmentBrowserSize]').val();

  // Unset incomplete or missing inputs
  $.each(inputs, function(key, value) {
      if (typeof value == 'undefined' || value == '') {
          delete inputs[key];
      }
  });

  return inputs;
}

function setFeedbackButton(
  buttonSelector,
  buttonIconSelector,
  buttonTextSelector,
  buttonClasses,
  buttonIconClasses,
  buttonText,
  buttonDisabled
) {
  // Button classes
  $(buttonSelector).removeClass();
  $(buttonSelector).addClass(buttonClasses);

  // Button icon classes
  $(buttonIconSelector).removeClass();
  $(buttonIconSelector).addClass(buttonIconClasses);

  // Button text
  $(buttonTextSelector).text(buttonText);

  // Button attributes
  if (buttonDisabled) {
      $(buttonSelector).attr('disabled', 'disabled');
  } else {
      $(buttonSelector).removeAttr('disabled');
  }
}

function setFeedbackOutcome(outcomeSelector, outcomeClasses, outcomeMessage) {
  $(outcomeSelector).removeClass();
  $(outcomeSelector).addClass(outcomeClasses);
  $(outcomeSelector).html(outcomeMessage);
}

function reportSuccess(
  feedbackSubmitSelector,
  feedbackSubmitIconSelector,
  feedbackSubmitTextSelector,
  feedbackOutcomeSelector,
  reference
) {
  setFeedbackButton(
      feedbackSubmitSelector,
      feedbackSubmitIconSelector,
      feedbackSubmitTextSelector,
      'bsk-btn bsk-btn-lg bsk-btn-success',
      'far fa-fw fa-check',
      'Feedback Sent',
      true
  );

  setFeedbackOutcome(
      feedbackOutcomeSelector,
      'bsk-alert bsk-alert-solid bsk-alert-success',
      'Your feedback has been received with reference of <strong>' + reference + '</strong>.'
  );
}

function reportError(
  feedbackSubmitSelector,
  feedbackSubmitIconSelector,
  feedbackSubmitTextSelector,
  feedbackOutcomeSelector,
  retry
) {
  var buttonClasses = 'bsk-btn bsk-btn-lg bsk-btn-danger';
  var buttonIconClasses = 'fas fa-fw fa-exclamation-circle';
  var buttonText = 'Sending Failed';
  var outcomeClasses = 'bsk-alert bsk-alert-solid bsk-alert-danger';
  var outcomeMessage = 'Your feedback could not be sent. Please contact the <a class="bsk-alert-link" href="mailto:servicedesk@bas.ac.uk">BAS Service Desk</a> directly.';
  var buttonDisabled = true;

  if (retry) {
      buttonClasses =  'bsk-btn bsk-btn-lg bsk-btn-warning';
      buttonIconClasses = 'far fa-fw fa-envelope';
      buttonText = 'Retry Sending Feedback';
      outcomeClasses = 'bsk-alert bsk-alert-solid bsk-alert-warning';
      outcomeMessage = 'Your feedback could not be sent. Please try again in a moment in case it was a temporary problem.'
      buttonDisabled = false;
  }

  setFeedbackButton(
      feedbackSubmitSelector,
      feedbackSubmitIconSelector,
      feedbackSubmitTextSelector,
      buttonClasses,
      buttonIconClasses,
      buttonText,
      buttonDisabled
  );

  setFeedbackOutcome(
      feedbackOutcomeSelector,
      outcomeClasses,
      outcomeMessage
  );
}

function processError(
  jqXHR,
  feedbackSubmitSelector,
  feedbackSubmitIconSelector,
  feedbackSubmitTextSelector,
  feedbackOutcomeSelector
) {
  var retryableError = false;

  reportError(
      feedbackSubmitSelector,
      feedbackSubmitIconSelector,
      feedbackSubmitTextSelector,
      feedbackOutcomeSelector,
      retryableError
  );
}

$(function() {
  var feedbackUrl = 'https://api.bas.ac.uk/feedback/v1/messages';
  var feedbackFormSelector = '#site-feedback-form';
  var feedbackSubmitSelector = '#site-feedback-submit';
  var feedbackSubmitIconSelector = '#site-feedback-submit-icon';
  var feedbackSubmitTextSelector = '#site-feedback-submit-text';
  var feedbackOutcomeSelector = '#site-feedback-outcome';

  prepareFeedbackForm(feedbackFormSelector, document.referrer);

  $(feedbackFormSelector).on("submit",function(e) {
      e.preventDefault(); // Cancel the standard form submit

      setFeedbackButton(
          feedbackSubmitSelector,
          feedbackSubmitIconSelector,
          feedbackSubmitTextSelector,
          'bsk-btn bsk-btn-lg bsk-btn-primary',
          'far fa-fw fa-spin fa-circle-notch',
          'Sending Feedback',
          true
      );

      var inputs = prepareFeedbackResponse(feedbackFormSelector);

      console.log(inputs);

      // Submit to feedback Service
      $.ajax({
          type: "POST",
          url: feedbackUrl,
          data: JSON.stringify(inputs),
          contentType: "application/json; charset=utf-8",
          dataType: "json",
          timeout: 10000,
          success: function(data, status, jqXHR){
              reportSuccess(
                  feedbackSubmitSelector,
                  feedbackSubmitIconSelector,
                  feedbackSubmitTextSelector,
                  feedbackOutcomeSelector,
                  data['id']
              );
          },
          error: function(jqXHR, status, err) {
              processError(
                  jqXHR,
                  feedbackSubmitSelector,
                  feedbackSubmitIconSelector,
                  feedbackSubmitTextSelector,
                  feedbackOutcomeSelector
              );
          }
      });
  });
});
