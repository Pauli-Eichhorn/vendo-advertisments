const faders = document.querySelectorAll(".fade-in-work");
const slidersLeft = document.querySelectorAll(".slide-in-left");
const slidersRight = document.querySelectorAll(".slide-in-right");

const appearOptions = {
  threshold: 0,
  rootMargin: "0px 0px -150px 0px"
};

const appearOnScroll = new IntersectionObserver(function (
  entries,
  appearOnScroll
) {
  entries.forEach(entry => {
    if (!entry.isIntersecting) {
      return;
    } else {
      entry.target.classList.add("appear");
      appearOnScroll.unobserve(entry.target);
    }
  });
},
  appearOptions);

faders.forEach(fader => {
  appearOnScroll.observe(fader);
});

slidersLeft.forEach(slider => {
  appearOnScroll.observe(slider);
});

slidersRight.forEach(slider => {
  appearOnScroll.observe(slider);
});
