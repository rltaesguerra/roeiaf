const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

if (process.env.NODE_ENV !== "production") {
  require("dotenv").config();
}

app.use(cors());
app.use(express.json());

const buildingRouter = require('./routes/building')
app.use("/building", buildingRouter)

app.listen(process.env.SERVER_PORT, () => {
  console.log("Server has started on port: ", process.env.SERVER_PORT);
});
