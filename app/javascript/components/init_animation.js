import lottie from "lottie-web";

window.addEventListener("DOMContentLoaded", () => {
  const element = document.querySelector(".desktop-logo");

  const anim = {
   container: element,
   loop: false,
   autoplay: true,
   path: "../animations/liv-logo-2.json"
 }


 lottie.loadAnimation(anim);
})


window.addEventListener("DOMContentLoaded", () => {
  const element = document.querySelector(".mobile-logo");

  const anim = {
   container: element,
   loop: false,
   autoplay: true,
   path: "../animations/liv-logo-1.json"
 }

 lottie.loadAnimation(anim);
})
