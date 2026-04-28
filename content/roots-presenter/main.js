const { app, BrowserWindow } = require("electron");

// start server
require("./server");

function createWindow() {
  const win = new BrowserWindow({
    width: 1200,
    height: 800,
    autoHideMenuBar: true
  });

  // wait a moment for server to start
  setTimeout(() => {
    win.loadURL("http://localhost:3000/presenter.html");
  }, 1000);

  // DEBUG: open dev tools
  win.webContents.openDevTools();
}

app.whenReady().then(createWindow);