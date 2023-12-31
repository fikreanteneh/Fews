const express = require("express");
const cors = require("cors");

const app = express();

//! DB connections
const connection = require("./config/dbconnection");

require("dotenv").config();

//! custom Route imports
const authRouter = require("./routes/auth");
const appointmentRouter = require("./routes/appointment");
const userRouter = require("./routes/user");
const profileRouter = require("./routes/profile");
const serviceRouter = require("./routes/service");
//! middle ware imports
const { authorized } = require("./middleware/auth");


//! Global Middle-wares
app.use(
  cors({
    origin: "*",
  })
);
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/uploads", express.static("uploads"));

//! Routes
app.use("/auth", authRouter);
app.use(authorized);
app.use("/user", userRouter);
app.use("/appointment", appointmentRouter);
app.use("/service", serviceRouter);
app.use("/profile", profileRouter);

//! Start Express server
const PORT = process.env.PORT || 3000;
try {
  app.listen(PORT, "0.0.0.0", () => {
    console.log("--------------------------");
    console.log(`| listening on port ${PORT} |`);
    console.log("--------------------------");
  });
} catch (error) {
  console.log("there is a error is starting the server");
}
