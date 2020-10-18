const { Pool } = require("pg");

if (process.env.NODE_ENV !== "production") {
  require("dotenv").config();
}
let db_username = process.env.DATABASE_USERNAME;
let db_password = process.env.DATABASE_PASSWORD;
let db_ip = process.env.DATABASE_IP;
let db_port = process.env.DATABASE_PORT;
let db_name = process.env.DATABASE_NAME;

const pool = new Pool({
  user: db_username,
  host: db_ip,
  database: db_name,
  password: db_password,
  port: db_port,
});

pool.on("error", (err, client) => {
  console.error("Error:", err);
});

module.exports = pool;
