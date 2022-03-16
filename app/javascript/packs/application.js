// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "chartkick/chart.js";

import {
  initTimebox,
  getTimeDifference,
  initTaskTimer,
} from "../components/timer";

import { toggleMenu } from "../components/navbar";

import { initAnimeJs, mushroomForest } from "../components/forest";

document.addEventListener("turbolinks:load", () => {
  // WorkSessions
  const workSession = document.getElementById("work-session");

  if (workSession) {
    const playButton = document.querySelector(".play-button");
    const stopButton = document.querySelector(".stop-button");

    let taskInterval;
    let timeboxInterval;

    playButton.addEventListener("click", () => {
      getTimeDifference;
      taskInterval = setInterval(initTaskTimer, 1000);
      timeboxInterval = setInterval(initTimebox, 1000);
    });
    stopButton.addEventListener("click", () => {
      clearInterval(timeboxInterval);
      clearInterval(taskInterval);
    });
  }

  // Nav bar
  const navbar = document.getElementById("navbar");

  if (navbar) {
    const hamburger = document.getElementById("navbar-burger");
    hamburger.addEventListener("click", toggleMenu);
  }

  // Mushroom Forest
  const forestPage = document.getElementById("mushroom-forest");

  if (forestPage) {
    mushroomForest();
  }
});
