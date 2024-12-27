let side = document.querySelector(".side");

let num = 1;
function show() {
  num++;
  if (num % 2 == 0) {
    side.style.transform = "translateX(0px)";
  } else {
    side.style.transform = "translateX(-500px)";
  }
}
let nav = document.querySelector(".nav-ele");

  window.addEventListener("scroll", () => {
  nav.classList.toggle("sticky", window.scrollY > 0);
  if(!side){
    return
  }else{
    side.classList.toggle("sticke", window.scrollY > 0);
  }
});

