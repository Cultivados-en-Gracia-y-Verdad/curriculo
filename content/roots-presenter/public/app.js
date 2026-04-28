const socket = io();

let slides = [];
let slide = 0;
let step = 0;

const isPresenter = window.location.pathname.includes("presenter");

socket.on("state", (data) => {
  slides = data.slides || slides;
  slide = data.slide;
  step = data.step;
  render();
});

function render() {
  const currentSlide = slides[slide] || [];

  const visible = currentSlide.slice(0, step + 1);

  const html = visible
    .map(line => line.startsWith("#")
      ? `<h1>${line.replace("#", "").trim()}</h1>`
      : `<div class="line">${line}</div>`
    )
    .join("");

  if (isPresenter) {
    document.getElementById("current").innerHTML = html;

    const nextSlide = slides[slide] || [];
    const nextStep = nextSlide[step + 1];

    document.getElementById("next").innerHTML =
      nextStep ? `<div>${nextStep}</div>` : "<em>next slide</em>";
  } else {
    document.getElementById("slide").innerHTML = html;
  }
}

// --- KEYBOARD (presenter only) ---
if (isPresenter) {
  window.addEventListener("keydown", (e) => {
    if (e.key === "ArrowRight" || e.key === " ") {
      socket.emit("next");
    }
    if (e.key === "ArrowLeft") {
      socket.emit("prev");
    }
  });
}