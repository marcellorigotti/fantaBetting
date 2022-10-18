const Pool = require("pg").Pool;


//Temporary credentials 
const pool = new Pool({
  host: "localhost",
  user: "postgres",
  password: "password",
  port: 6666,
  database: "fantabetting"
});

module.exports = pool;