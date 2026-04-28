const express = require("express");
const http = require("http");
const { Server } = require("socket.io");
const fs = require("fs");

const app = express();
const server = http.createServer(app);
const io = new Server(server);

app.use(express.static("public"));

let slides = [];
let state = { slide: 0, step: 0 };

// --- PARSE MARKDOWN ---
function loadSlides() {
  const md = fs.readFileSync("slides.md", "utf-8");

  slides = md
    .split(/\n\s*\n/)
    .map(block =>
      block
        .split("\n")
        .map(l => l.trim())
        .filter(Boolean)
    );
}

loadSlides();

// --- SOCKET ---
io.on("connection", (socket) => {
  socket.emit("state", { ...state, slides });

  socket.on("next", () => {
    const current = slides[state.slide];

    if (state.step < current.length - 1) {
      state.step++;
    } else if (state.slide < slides.length - 1) {
      state.slide++;
      state.step = 0;
    }

    io.emit("state", { ...state });
  });

  socket.on("prev", () => {
    if (state.step > 0) {
      state.step--;
    } else if (state.slide > 0) {
      state.slide--;
      state.step = slides[state.slide].length - 1;
    }

    io.emit("state", { ...state });
  });
});

// --- START ---
server.listen(3000, () => {
  console.log("Running on http://localhost:3000");
});