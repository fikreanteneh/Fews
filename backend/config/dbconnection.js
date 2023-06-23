const mysql = require("mysql");


require("dotenv").config();

const dbConfig = {
  host: "localhost",
  user: "root",
  password: "",
  database: "trad-doctors",
  connectionLimit:10
};

//  * -------------- connect to mysql DATABASE ----------------
const connection = mysql.createConnection(dbConfig);


connection.connect((err) => {
  if (err) {
    console.log("----***********---------- error in database connection");
    console.log(err);
  } else {
    console.log("-----------------------");
    console.log("|  Connected to mysql |");
    console.log("-----------------------");
  }
});


// Expose the connection
module.exports = connection;



