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

//Animations

const observer1 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated1").forEach(element => element.classList.add("fadeInBottom"))
    }
  })
})
observer1.observe(document.querySelector(".animated1"))


const observer2 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated2").forEach(element => element.classList.add("fadeInBottom"))
    }
  })
})
observer2.observe(document.querySelector(".animated2"))


const observer3 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated3").forEach(element => element.classList.add("fadeInLeft"))
    }
  })
})
observer3.observe(document.querySelector(".animated3"))


const observer4 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated4").forEach(element => element.classList.add("fadeInLeft"))
    }
  })
})
observer4.observe(document.querySelector(".animated4"))


const observer5 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated5").forEach(element => element.classList.add("fadeInRight"))
    }
  })
})
observer5.observe(document.querySelector(".animated5"))


const observer6 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated6").forEach(element => element.classList.add("fadeInRight"))
    }
  })
})
observer6.observe(document.querySelector(".animated6"))

const observer7 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      document.querySelectorAll(".animated7").forEach(element => element.classList.add("fadeInBottom"))
    }
  })
})
observer7.observe(document.querySelector(".animated7"))
