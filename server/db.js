require('dotenv').config({ path: '.env' });
const Pool = require("pg").Pool;

const pool = new Pool({
  user: process.env.PG_USERNAME,
  password: process.env.PG_PASSWORD,
  host: "postgres",
  port: 5432,
  database: "new_skater_database"
});


module.exports = pool;
