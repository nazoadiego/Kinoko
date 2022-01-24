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
import "bootstrap";
import "chartkick/chart.js";

// Sortable

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initSortable } from "../plugins/init_sortable"; // <-- add this
import {
	initTimebox,
	getTimeDifference,
	initTaskTimer,
} from "../components/timer";
import { initAnimeJs } from "../plugins/animejs";

document.addEventListener("turbolinks:load", () => {
	// Call your JS functions here
	// [...]
	// initSortable();
	const workSession = document.getElementById("work-session-window");

	if (workSession) {
		const playButton = document.querySelector(".play-button");
		const stopButton = document.querySelector(".stop-button");

		let taskInterval;
		let timeboxInterval;
		playButton.addEventListener("click", () => {
			getTimeDifference;
			console.log("I am playing!");
			taskInterval = setInterval(initTaskTimer, 1000);
			timeboxInterval = setInterval(initTimebox, 1000);
			// Call your functions here, e.g:
			// initSelect2();
		});
		stopButton.addEventListener("click", () => {
			// Call your functions here, e.g:
			console.log("STOOPPP");
			clearInterval(timeboxInterval);
			clearInterval(taskInterval);
			// initSelect2();
		});
	}
	// Pause

	initAnimeJs();
});
