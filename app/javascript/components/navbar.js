function toggleMenu() {
  let burger = document.querySelector(".burger-container");
  let navigation = document.querySelector(".navigation");
  let main = document.querySelector(".main");
  let title = document.querySelector(".navigation h2");
  title.classList.toggle("d-none");
  burger.classList.toggle("active");
  navigation.classList.toggle("active");
  main.classList.toggle("active");
}

export { toggleMenu };
