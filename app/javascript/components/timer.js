const timerDayEl = document.querySelector(".timer__day");
const timerHourEl = document.querySelector(".timer__hour");
const timerMinEl = document.querySelector(".timer__min");
const timerSecEl = document.querySelector(".timer__sec");

function getTimeDifference(start, end) {
  let milliseconds = new Date(end) - new Date(start);
  let seconds = Math.floor(milliseconds / 1000);
  let minutes = Math.floor(seconds / 60);
  let hours = Math.floor(minutes / 60);
  let days = Math.floor(hours / 24);
  // 70 - 48
  hours = hours - (days * 24);
  minutes = minutes - (days * 24 * 60) - (hours * 60);
  seconds = seconds - (days * 24 * 60 * 60) - (hours * 60 * 60) - (minutes * 60);
  // return days + " " + hours + " " + minutes + " " + seconds;
  return {
    rDays: days,
    rHours: hours,
    rMinutes: minutes,
    rSeconds: seconds
  }
}

const timerCustom = () => {
  // if first child has timers at 0, move to bottom and then remove
  let firstDiv = document.querySelector(".timelist > .red");
  let wholeGrid = document.querySelector(".timelist");
  let timeboxSec = document.querySelector(".timeseconds").dataset.seconds.textContent;
  let timeboxMin = document.querySelector(".timeminutes").dataset.minutes.textContent;
  if (timerMinEl.textContent == 0 && timerSecEl.textContent == 0) {
    wholeGrid.insertAdjacentElement('beforeend', firstDiv);
    timerMinEl.textContent = timeboxMin;
    timerSecEl.textContent = timeboxSec;
  };

  // UPDATE TOP TIMER
  let startDate = new Date();
  let milliseconds = parseInt(document.querySelector(".timelist > .red > .card-timebox > .remainder").textContent)
  if (!document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.startDate) {
    document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.startDate = startDate;
    let endDate = new Date(startDate.getTime() + milliseconds);
    document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.endDate = endDate;
  }
  let endDate = document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.endDate;
  // console.log(startDate);
  // console.log(endDate);
  let timeDifferenceObj = getTimeDifference(startDate, endDate);
  timerMinEl.textContent = timeDifferenceObj.rMinutes;
  timerSecEl.textContent = timeDifferenceObj.rSeconds;
  // console.log(timeDifferenceObj);
}

// const resetTimer = function (resetTimer) {
//   const mins = document.querySelector(".timeminutes").dataset.minutes
//   const secs = document.querySelector(".timeseconds").dataset.seconds

//   if (timerMinEl === 0 && timerSecEl === 0) {
//     timerMinEl.textContent = mins;
//     timerSecEl.textContent = secs;
//   }
// }

export { timerCustom };
