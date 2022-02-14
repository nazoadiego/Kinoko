import anime from "animejs";

const initAnimeJs = () => {
  let forest = document.querySelector(".forest");
  if (forest) {
    for (let i = 1; i <= forest.dataset.duration / 3600; i++) {
      const blocks = document.createElement("div");
      blocks.classList.add("forest-orb");
      forest.appendChild(blocks);
    }
    console.log(forest.dataset.duration);

    let button = document.querySelector("#grow-forest");
    button.addEventListener("click", (event) => {
      anime({
        targets: ".forest-orb",
        translateX: function () {
          return anime.random(-400, 400);
        },
        translateY: function () {
          return anime.random(-400, 400);
        },
        scale: function () {
          return anime.random(1, 2);
        },
      });
    });
  }
};

export { initAnimeJs };
