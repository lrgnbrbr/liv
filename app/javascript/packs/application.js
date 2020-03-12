require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import "components/index.js";
import "components/init_select2.js";
import "components/testimonials.js";
import 'select2/dist/css/select2.css';
import "../components/init_animation.js";
import AOS from "aos";
import 'aos/dist/aos.css';
AOS.init();

// import { animate } from '../components/animate';
import { initSelect2 } from '../components/init_select2';
initSelect2();

// animate();

import { initDisplayNavbar } from '../components/init_display_navbar';
initDisplayNavbar();



// document.addEventListener('dblclick', function (event) {
//  var videoId = event.target.getAttribute('data-video');
//  var image = document.createElement('div');
//  image.innerHTML = 'https://res.cloudinary.com/dcwvakju8/image/youtube/' + videoId + '.jpg';
//   event.target.parentNode.replaceChild(video, event.target);
//   video.exitFullscreen();
// }, false);

// document.querySelector('#toto');
//  add id list?;


