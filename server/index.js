const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

//middleware
app.use(cors());
app.use(express.json());

//ROUTES

//SKATERS

//create a skater (only name)
app.post("/skaters", async (req, res) => {
  try {
    const { skater_name } = req.body;
    const newSkater = await pool.query(
      "INSERT INTO skaters (skater_name) VALUES($1) RETURNING *",
      [skater_name]
    );

    res.json(newSkater.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

//get all skaters
app.get("/skaters", async (req, res) => {
  try {
    const allSkaters = await pool.query("SELECT * FROM skaters");

    res.json(allSkaters.rows);
  } catch (err) {
    console.error(err.message);
  }
});

//get a skater
app.get("/skaters/:skater_id", async (req, res) => {
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
app.put("/skaters/:skater_id/update", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const {
      all_time_pb,
      all_time_location,
      all_time_competition,
      all_time_date,
      season_pb,
      season_location,
      season_competition,
      season_date,
    } = req.body;

    let query = "UPDATE skaters SET";
    const values = [];
    const params = [];

    if (all_time_pb !== undefined) {
      query += " all_time_pb = $1,";
      values.push(all_time_pb);
      params.push("all_time_pb");
    }

    if (all_time_location !== undefined) {
      query += " all_time_location = $" + (values.length + 1) + ",";
      values.push(all_time_location);
      params.push("all_time_location");
    }

    if (all_time_competition !== undefined) {
      query += " all_time_competition = $" + (values.length + 1) + ",";
      values.push(all_time_competition);
      params.push("all_time_competition");
    }

    if (all_time_date !== undefined) {
      query += " all_time_date = $" + (values.length + 1) + ",";
      values.push(all_time_date);
      params.push("all_time_date");
    }

    if (season_pb !== undefined) {
      query += " season_pb = $" + (values.length + 1) + ",";
      values.push(season_pb);
      params.push("season_pb");
    }

    if (season_location !== undefined) {
      query += " season_location = $" + (values.length + 1) + ",";
      values.push(season_location);
      params.push("season_location");
    }

    if (season_competition !== undefined) {
      query += " season_competition = $" + (values.length + 1) + ",";
      values.push(season_competition);
      params.push("season_competition");
    }

    if (season_date !== undefined) {
      query += " season_date = $" + (values.length + 1) + ",";
      values.push(season_date);
      params.push("season_date");
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
app.delete("/skaters/:skater_id", async (req, res) => {
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

app.listen(5000, () => {
  console.log("server has started on port 5000");
});
