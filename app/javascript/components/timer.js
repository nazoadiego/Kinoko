const getTimeDifference = (start, end) => {
  let milliseconds = new Date(end) - new Date(start);
  let seconds = Math.floor(milliseconds / 1000);
  let minutes = Math.floor(seconds / 60);
  let hours = Math.floor(minutes / 60);
  let days = Math.floor(hours / 24);
  // 70 - 48
  hours = hours - days * 24;
  minutes = minutes - days * 24 * 60 - hours * 60;
  seconds = seconds - days * 24 * 60 * 60 - hours * 60 * 60 - minutes * 60;
  // return days + " " + hours + " " + minutes + " " + seconds;
  return {
    rDays: days,
    rHours: hours,
    rMinutes: minutes,
    rSeconds: seconds,
  };
};

const initTimebox = () => {
  const timerCustom = () => {
    let timerMinEl = document.querySelector(".timer-min");
    let timerSecEl = document.querySelector(".timer-sec");
    resetTopTimebox();
    // UPDATE TOP TIMER
    updateTimer(timerMinEl, timerSecEl);
  };

  const resetTopTimebox = () => {
    let timerMinEl = document.querySelector(".timer-min");
    let timerSecEl = document.querySelector(".timer-sec");
    let timeboxSec = document.querySelector(".time-seconds").dataset.seconds;
    let timeboxMin = document.querySelector(".time-minutes").dataset.minutes;
    if (timerMinEl.textContent == 0 && timerSecEl.textContent == 1) {
      moveTopTimeboxToBottom();
      playAudio();
    }
  };

  const playAudio = () => {
    const audio = document.getElementById("shien");
    audio.play();
  };

  const moveTopTimeboxToBottom = () => {
    const wholeGrid = document.querySelector(".timeboxes-list");
    const firstDiv = document.querySelector(".timeboxes-list > .card-timebox");
    wholeGrid.insertAdjacentElement("beforeend", firstDiv);
  };

  const updateTimer = (timerMinEl, timerSecEl) => {
    let startDate = new Date();
    let milliseconds = parseInt(
      document.querySelector(".card-timebox > .remainder").dataset
        .timeboxduration
    );
    let selectedClass = ".card-timebox > .settimes";

    if (!document.querySelector(selectedClass).dataset.startDate) {
      document.querySelector(selectedClass).dataset.startDate = startDate;
      let endDate = new Date(startDate.getTime() + milliseconds);
      document.querySelector(selectedClass).dataset.endDate = endDate;
    }

    endDate = document.querySelector(selectedClass).dataset.endDate;

    if (new Date(endDate) < new Date(startDate)) {
      document.querySelector(selectedClass).dataset.startDate = startDate;
      endDate = new Date(startDate.getTime() + milliseconds);
      document.querySelector(selectedClass).dataset.endDate = endDate;
    }

    document.querySelector(selectedClass).dataset.startDate = startDate;

    let endDate = document.querySelector(selectedClass).dataset.endDate;
    let timeDifferenceObj = getTimeDifference(startDate, endDate);
    timerMinEl.textContent = timeDifferenceObj.rMinutes
      .toString()
      .padStart(2, 0);
    timerSecEl.textContent = (timeDifferenceObj.rSeconds + 1)
      .toString()
      .padStart(2, 0);
  };

  // style methods
  const activeTimerStyle = () => {
    const timeboxdiv = document.querySelector(".timelist > .card-timebox");
    timeboxdiv.classList.add("active-timebox");
  };
};

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// TASK TIMER STUFF
const initTaskTimer = () => {
  let startDate = new Date();
  let taskmins = document.querySelector(".taskmins");
  let tasksecs = document.querySelector(".tasksecs");
  let milliseconds = parseInt(
    document.querySelector(".taskduration").dataset.duration
  );

  if (!document.querySelector(".tasktimes").dataset.startDate) {
    document.querySelector(".tasktimes").dataset.startDate = startDate;
    let endDate = new Date(startDate.getTime() + milliseconds);
    document.querySelector(".tasktimes").dataset.endDate = endDate;
  }
  let endDate = document.querySelector(".tasktimes").dataset.endDate;
  let timeDiff = getTimeDifference(startDate, endDate);
  let timeDiffSec = Math.floor(
    (new Date(endDate) - new Date(startDate)) / 1000
  );
  taskmins.textContent = `${timeDiff.rMinutes} mins`;
  tasksecs.textContent = `${timeDiff.rSeconds} secs`;

  // progress bar
  let skillper = document.querySelector(".skill-per");
  let dur = timeDiff.rMinutes * 60 + timeDiff.rSeconds;
  let tasksec = document.querySelector(".tasksecss").dataset.tasksecs;
  if (skillper) {
    skillper.setAttribute("per", `${parseInt((1 - dur / tasksec) * 100)}%`);
    skillper.setAttribute("style", `max-width:${(1 - dur / tasksec) * 100}%`);
  } else {
    let newDiv = document.createElement("div");
    newDiv.classList.add("skill-per");
    newDiv.setAttribute("per", `${parseInt((1 - dur / tasksec) * 100)}%`);
    newDiv.setAttribute("style", `max-width:${(1 - dur / tasksec) * 100}%`);
    const skill = document.querySelector(".skill-bar");
    skill.insertAdjacentElement("beforeend", newDiv);
  }
  //

  const done = document.getElementById("doneTask");
  if (timeDiffSec === 0) {
    taskmins.textContent = `0 mins`;
    tasksecs.textContent = `0 secs`;
    skillper.setAttribute("per", `100%`);
    skillper.setAttribute("style", `max-width:100%`);
  }

  if (timeDiffSec < 0) {
    taskmins.textContent = `0 mins`;
    tasksecs.textContent = `0 secs`;
    skillper.setAttribute("per", `100%`);
    skillper.setAttribute("style", `max-width:100%`);
  }
  // return timeDiff;
  // console.log(timeDiff);
  // console.log(timeDiff === 0);
};

export { initTimebox, initTaskTimer, getTimeDifference };

let timerSecEl = document.querySelector(".timer-sec");
let timeboxSec = document.querySelector(".time-seconds").dataset.seconds;
let timeboxMin = document.querySelector(".time-minutes").dataset.minutes;
const firstDiv = document.querySelector(".timeboxes-list > .card-timebox");
document.querySelector(".card-timebox > .remainder");
const timeboxdiv = document.querySelector(".timelist > .card-timebox");
