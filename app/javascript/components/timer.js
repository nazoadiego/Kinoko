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
  let timerDayEl = document.querySelector(".timer__day");
  let timerHourEl = document.querySelector(".timer__hour");
  let timerMinEl = document.querySelector(".timer__min");
  let timerSecEl = document.querySelector(".timer__sec");
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
  let milliseconds = parseInt(document.querySelector(".timelist > .red > .card-timebox > .remainder").dataset.timeboxduration)
  if (!document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.startDate)  {
    document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.startDate = startDate;
    let endDate = new Date(startDate.getTime() + milliseconds);
    document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.endDate = endDate;
  }

   endDate = document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.endDate
  if (new Date(endDate) < new Date(startDate)) {
    document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.startDate = startDate;
     endDate = new Date(startDate.getTime() + milliseconds);
    document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.endDate = endDate;
  }

  document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.startDate = startDate

  let endDate = document.querySelector(".timelist > .red > .card-timebox > .settimes").dataset.endDate;
  // console.log(startDate);
  // console.log(endDate);
  let timeDifferenceObj = getTimeDifference(startDate, endDate);
  timerMinEl.textContent = timeDifferenceObj.rMinutes;
  timerSecEl.textContent = timeDifferenceObj.rSeconds;

  // make the div for the active timebox be highlighted
  const timeboxdiv = document.querySelector(".timelist > .red > .card-timebox");
  timeboxdiv.classList.add("active-timebox")
}

// const resetTimer = function (resetTimer) {
//   const mins = document.querySelector(".timeminutes").dataset.minutes
//   const secs = document.querySelector(".timeseconds").dataset.seconds

//   if (timerMinEl === 0 && timerSecEl === 0) {
//     timerMinEl.textContent = mins;
//     timerSecEl.textContent = secs;
//   }
// }

const taskTimer = () => {
  let startDate = new Date();
  let taskmins = document.querySelector(".taskmins");
  let tasksecs = document.querySelector(".tasksecs");
  let milliseconds = parseInt(document.querySelector(".taskduration").dataset.duration)
  if (!document.querySelector(".tasktimes").dataset.startDate) {
    document.querySelector(".tasktimes").dataset.startDate = startDate;
    let endDate = new Date(startDate.getTime() + milliseconds);
    document.querySelector(".tasktimes").dataset.endDate = endDate;
  };
  let endDate = document.querySelector(".tasktimes").dataset.endDate
  let timeDiff = getTimeDifference(startDate, endDate);
  let timeDiffSec = Math.floor((new Date(endDate) - new Date(startDate)) / 1000);
  console.log(timeDiffSec);
  console.log(timeDiffSec === 0);
  taskmins.textContent = `${timeDiff.rMinutes} mins`;
  tasksecs.textContent = `${timeDiff.rSeconds} secs`;
  const done = document.getElementById('doneTask');
  if (timeDiffSec === 0){
    done.classList.add("canbedone");
    taskmins.textContent = `0 mins`;
    tasksecs.textContent = `0 secs`;
  };

  if (timeDiffSec < 0) {
    taskmins.textContent = `0 mins`;
    tasksecs.textContent = `0 secs`;
  };
  // return timeDiff;
  // console.log(timeDiff);
  // console.log(timeDiff === 0);
}

export { timerCustom, taskTimer };
