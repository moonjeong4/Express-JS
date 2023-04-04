const mariadb = require("mariadb");

const pool = mariadb.createPool({
  host: "host",
  user: "user",
  password: "password",
  connectionLimit: 5,
  database: "express",
});

module.exports = pool;
