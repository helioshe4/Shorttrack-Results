const express = require("express");
const router = express.Router();
const pool = require("../db");

//gets all unique countries
router.get("/", async (req, res) => {
  try {
    const countries = await pool.query(
      `SELECT DISTINCT country 
       FROM skaters 
       WHERE country IS NOT NULL AND country <> '' 
       ORDER BY country`
    );

    res.json(countries.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

//gets all skaters from a country
router.get("/:country", async (req, res) => {
  try {
    const { country } = req.params;
    const skaters = await pool.query(
      `SELECT * 
       FROM skaters 
       WHERE country = $1 
       ORDER BY skater_name`,
      [country]
    );

    res.json(skaters.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

router.get("/:country/:gender", async (req, res) => {
  try {
    const { country, gender } = req.params;
    let skaters;

    if (gender === 'null') {
      skaters = await pool.query(
        `SELECT *
         FROM skaters
         WHERE country = $1 AND gender IS NULL
         ORDER BY skater_name`,
        [country]
      );
    } else {
      skaters = await pool.query(
        `SELECT *
         FROM skaters
         WHERE country = $1 AND gender = $2
         ORDER BY skater_name`,
        [country, gender]
      );
    }

    res.json(skaters.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

module.exports = router;