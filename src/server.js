import "dotenv/config";

import express from "express";
import configViewEngine from "./config/configEngine.js";
import routes from "./routes/web.js";
import cronJobController from "./controllers/cronJobController.js";
import socketIoController from "./controllers/socketIoController.js";
import cookieParser from "cookie-parser";
import http from "http";
import { Server } from "socket.io";

const app = express();
const server = http.createServer(app);
const io = new Server(server);

const port = process.env.PORT || 3009;

app.use(cookieParser());
// app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// setup viewEngine
configViewEngine(app);
// init Web Routes
routes.initWebRouter(app);

// Cron game 1 Phut
cronJobController.cronJobGame1p(io);

// Check xem ai connect vào sever
socketIoController.sendMessageAdmin(io);

// Add global error handling middleware to gracefully handle unexpected errors
app.use((err, req, res, next) => {
  console.error(err.stack);
  return res.status(500).json({ success: false, message: "Internal Server Error" });
});

// Attach listeners for unforeseen errors to avoid server crash
process.on("uncaughtException", (err) => {
  console.error("Uncaught Exception:", err);
});

process.on("unhandledRejection", (reason, promise) => {
  console.error("Unhandled Rejection at:", promise, "reason:", reason);
});

// app.all('*', (req, res) => {
//     return res.render("404.ejs");
// });

server.listen(port, () => {
  console.log(`Connected success http://localhost:${port}`);
});
