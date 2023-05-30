const express = require("express");
const router = express.Router();
const pool = require("../db");


//post a skater's info
router.post("/", async (req, res) => {
  try {
    const { skater_name, dob, home_club, gender, country, region } = req.body;

    let query = "INSERT INTO skaters (skater_name";
    const values = [skater_name];
    const params = ["$1"];

    let paramIndex = 2;

    if (dob) {
      query += ", dob";
      values.push(dob);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (home_club) {
      query += ", home_club";
      values.push(home_club);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (gender) {
      query += ", gender";
      values.push(gender);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (country) {
      query += ", country";
      values.push(country);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (region) {
      query += ", region";
      values.push(region);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    query += `) VALUES (${params.join(", ")}) RETURNING *`;

    const newSkater = await pool.query(query, values);

    console.log("New skater: ", newSkater.rows[0]);

    res.json(newSkater.rows[0]);
  } catch (err) {
    console.error(err.message);
    //res.status(500).json({ error: "Internal Server Error" });
  }
});

//get all skaters
router.get("/", async (req, res) => {
  try {
    const allSkaters = await pool.query("SELECT * FROM skaters");

    res.json(allSkaters.rows);
  } catch (err) {
    console.error(err.message);
  }
});

//get a skater
router.get("/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const skater = await pool.query(
      "SELECT * FROM skaters WHERE skater_id = $1",
      [skater_id]
    );

    res.json(skater.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

//update a skater's info
router.put("/:skater_id/update", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const { skater_name, dob, home_club, gender, country, region } = req.body;

    let query = "UPDATE skaters SET";
    const values = [];
    const params = [];

    if (skater_name !== undefined) {
      query += " skater_name = $1,";
      values.push(skater_name);
      params.push("skater_name");
    }

    if (dob !== undefined) {
      query += " dob = $1,";
      values.push(dob);
      params.push("dob");
    }

    if (home_club !== undefined) {
      query += " home_club = $" + (values.length + 1) + ",";
      values.push(home_club);
      params.push("home_club");
    }

    if (gender !== undefined) {
      query += " gender = $" + (values.length + 1) + ",";
      values.push(gender);
      params.push("gender");
    }

    if (country !== undefined) {
      query += " country = $" + (values.length + 1) + ",";
      values.push(country);
      params.push("country");
    }

    if (region !== undefined) {
      query += " region = $" + (values.length + 1) + ",";
      values.push(region);
      params.push("region");
    }

    // Remove the trailing comma from the query
    query = query.slice(0, -1);

    query += " WHERE skater_id = $" + (values.length + 1);
    values.push(skater_id);

    const updateSkater = await pool.query(query, values);

    res.json("Skater information updated");
  } catch (err) {
    console.error(err.message);
    //res.status(500).json({ error: "Internal Server Error" });
  }
});

//delete a skater
router.delete("/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const deleteSkater = await pool.query(
      "DELETE FROM skaters WHERE skater_id = $1",
      [skater_id]
    );

    res.json("Skater was deleted");
  } catch (err) {
    console.error(err.message);
  }
});

//get a skater_id given their name
router.get("/skater-name/:skater_name", async (req, res) => {
  try {
    const { skater_name } = req.params;
    const skater = await pool.query(
      "SELECT skater_id FROM skaters WHERE skater_name = $1 LIMIT 1",
      [skater_name]
    );

    res.json(skater.rows[0]);
    //res.json(typeof skater.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

module.exports= router;