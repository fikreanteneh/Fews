const mysql = require("mysql2");
require("dotenv").config();

const dbConfig = {
  host: "localhost",
  user: "root",
  password: "",
  database: "trad-doctors",
  connectionLimit: 10,
};

const pool = mysql.createPool(dbConfig);

module.exports = pool;
