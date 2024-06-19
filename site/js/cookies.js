const domain = "";

// Function to create the cookie popup
function createCookiePopup() {
    // Create the popup container
    var popupContainer = document.createElement("div");
    popupContainer.id = "cookie-modal";
    popupContainer.classList.add("modal");

    // Create the popup content
    var popupContent = document.createElement("div");
    popupContent.classList.add("modal-content");

    // Create popup text
    var popupText = document.createElement("p");
    popupText.innerHTML = "This website uses cookies.<br>For information see: <a href='/privacy-policy/'>Privacy Policy</a> | <a href='/cookie-policy/'>Cookie Policy</a><br>Visit these pages to change your choices.";

    // Create buttons
    var acceptAllButton = document.createElement("button");
    acceptAllButton.id = "accept-all-cookies";
    acceptAllButton.className = "bsk-btn bsk-btn-default btn";
    acceptAllButton.innerHTML = "Accept All Cookies";

    var spaceElement = document.createTextNode('\u00A0');

    var acceptNecessaryButton = document.createElement("button");
    acceptNecessaryButton.id = "accept-necessary-cookies";
    acceptNecessaryButton.className = "bsk-btn bsk-btn-default btn";
    acceptNecessaryButton.innerHTML = "Only Accept Necessary Cookies";

    // Append elements to the popup content
    // popupContent.appendChild(closeButton);
    popupContent.appendChild(popupText);
    popupContent.appendChild(acceptAllButton);
    popupContent.appendChild(spaceElement);
    popupContent.appendChild(acceptNecessaryButton);

    // Append popup content to the container
    popupContainer.appendChild(popupContent);

    // Append the popup container to the body
    document.body.appendChild(popupContainer);
}

// Function to run on every page reload
function onPageLoad() {

    var cookie_value = getCookie("bas_cookie_consent");

    if (cookie_value === "true") {

        //console.log('cookie true ', getCookie("bas_cookie_consent"));

        // If cookies are not accepted, show the modal
        var cookieModal = document.getElementById("cookie-modal");
        if (cookieModal) {
            cookieModal.style.display = "none";
        }
    } 
    else if (cookie_value === "false") {

        //console.log('cookie false ', getCookie("bas_cookie_consent"));

        // If the bas_cookie_consent value is false, remove the Google Analytics cookies
        // Remove Google Analytics cookies if they exist
        const cookieRegex = /(_ga\w*)/g;
        const cookiesArray = getCookiesWithRegex(cookieRegex);
        
        cookiesArray.forEach(cookieName => {
            //console.log("On load remove:", cookieName);
            removeCookie(cookieName);
        });

        if (typeof gtag === "function"){
            gtag('consent', 'update', {
            'analytics_storage': 'denied'
            });
        }
    }
}

// Run onPageLoad on every page reload
window.addEventListener("load", function() {
  setTimeout(onPageLoad, 100);
});

document.addEventListener("DOMContentLoaded", function () {
    // Create the cookie popup
    createCookiePopup();

    // Handle accept all cookies button click
    var acceptAllCookiesButton = document.getElementById("accept-all-cookies");
    if (acceptAllCookiesButton) {
        acceptAllCookiesButton.addEventListener("click", function () {

            if (typeof gtag === "function"){
                gtag('consent', 'update', {
                'analytics_storage': 'granted'
                });
            }

            // Set a cookie to indicate that the user accepted all cookies - value: true
            setCookie("bas_cookie_consent", "true", 365); // 365 days expiration

            // Dummy cookies for testing
            // setCookie("_ga_H864M15XB3", "true", 365);
            // setCookie("_ga", "true", 365);

            // Hide the cookie modal
            var cookieModal = document.getElementById("cookie-modal");
            if (cookieModal) {
                cookieModal.style.display = "none";
            }
        });
    }

    // Handle accept only necessary cookies button click
    var acceptOnlyNecessaryCookiesButton = document.getElementById("accept-necessary-cookies");
    if (acceptOnlyNecessaryCookiesButton) {
        acceptOnlyNecessaryCookiesButton.addEventListener("click", function () {


            if (typeof gtag === "function"){
                gtag('consent', 'update', {
                'analytics_storage': 'denied'
                });
            }

            // Set a cookie to indicate that the user accepted only necessary cookies - value: false                  
            setCookie("bas_cookie_consent", "false", 365); // 365 days expiration

            // Remove Google Analytics cookies if they exist
            const cookieRegex = /(_ga\w*)/g;
            const cookiesArray = getCookiesWithRegex(cookieRegex);
            
            cookiesArray.forEach(cookieName => {
                //console.log("Remove:", cookieName);
                removeCookie(cookieName);
            });

            // Hide the cookie modal
            var cookieModal = document.getElementById("cookie-modal");
            if (cookieModal) {
                cookieModal.style.display = "none";
            }
        });
    }
    
    var cookieModal = '';

    // Check if bas_cookie_consent cookie exists - if not show the modal
    if (getCookie("bas_cookie_consent") === null) {
        cookieModal = document.getElementById("cookie-modal");
        if (cookieModal) {
            cookieModal.style.display = "block";
        }
    } else {
        cookieModal = document.getElementById("cookie-modal");
        cookieModal.style.display = "none";
    }
});

// Function to set a cookie
function setCookie(name, value, days) {
    var expires = "";
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + value + expires + ";path=/;SameSite=Strict;";
}

// Function to remove a cookie
function removeCookie(name) {
    var siteDomain = domain || window.location.hostname;
    // console.log(name);
    document.cookie = name + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/; domain="+siteDomain+";";
}


// Function to get the value of a cookie
function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

function getCookiesWithRegex(cookieRegex) {
    const allCookies = document.cookie;
    const matchedCookies = allCookies.match(cookieRegex) || [];
    return matchedCookies;
}

// Show the cookie popup when the "Change Cookie Settings" button is clicked
var openCookiePopupButton = document.getElementById("open-cookie-consent-popup");
console.log('fkdslf;ksd', openCookiePopupButton);
if (openCookiePopupButton) {
    openCookiePopupButton.addEventListener("click", function () {
        var cookieModal = document.getElementById("cookie-modal");
        if (cookieModal) {
            cookieModal.style.display = "block";
        }
    });
}