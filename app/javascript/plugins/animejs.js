import anime from 'animejs';


const initAnimeJs = () => {
  let forest = document.querySelector('.forest');
  if (forest) {
    for (let i = 1; i <= forest.dataset.duration / 3600; i++) {
      const blocks = document.createElement('div');
      blocks.classList.add('block');
      forest.appendChild(blocks);
    }
    console.log(forest.dataset.duration)

    let button = document.querySelector("#grow-forest");
    button.addEventListener('click', (event) => {
      anime({
        targets: '.block',
        translateX: function () {
          return anime.random(-700, 700)
        },
        translateY: function () {
          return anime.random(-700, 700)
        },
        scale: function () {
          return anime.random(1, 5)
        }
      })
    })
  }
}

export { initAnimeJs }
