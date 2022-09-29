// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

import { initMapbox } from '../plugins/init_mapbox';
document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

//Stripe change payment status

// stripe.confirmCardPayment(clientSecret).then(function (response) {
//   if (response.error) {
//     console.log("failed")
//   } else if (response.paymentIntent && response.paymentIntent.status === 'succeeded') {
//     console.log("successful")
//   }
// });
