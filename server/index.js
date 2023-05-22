const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

//middleware
app.use(cors());
app.use(express.json());

//ROUTES

//SKATERS

//create a skater
app.post("/skaters", async (req, res) => {
  try {
    const { skater_name } = req.body;
    const newSkater = await pool.query(
      "INSERT INTO skaters (skater_name) VALUES($1) RETURNING *",
      [skater_name]
    );

    const skaterId = newSkater.rows[0].skater_id;

    // Insert into all_time_pbs table with skater_id and skater_name
    const newPB = await pool.query(
      "INSERT INTO all_time_pbs (skater_id, skater_name) VALUES ($1, $2) RETURNING *",
      [skaterId, skater_name]
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

//update a skater
app.put("/skaters/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const { skater_name } = req.body;
    const updateSkater = await pool.query(
      "UPDATE skaters SET skater_name = $1 WHERE skater_id = $2",
      [skater_name, skater_id]
    );

    res.json("Skater name was updated");
  } catch (err) {
    console.error(err.message);
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

//ALL TIME PBS

//add a pb
// app.post("/skaters/:skater_id/all-time-pbs", async (req, res) => {
//   try {
//     const { skater_id } = req.params;
//     const { skater_name, time, location, competition_name, date } = req.body;
//     const newPb = await pool.query(
//       "INSERT INTO all_time_pbs (skater_id, skater_name, time, location, competition_name, date) VALUES($1, $2, $3, $4, $5, $6) RETURNING *",
//       [skater_id, skater_name, time, location, competition_name, date]
//     );

//     res.json(newPb.rows);
//   } catch (err) {
//     console.error(err.message);
//   }
// });

//update a pb
app.put("/skaters/:skater_id/all-time-pbs", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const { skater_name } = req.body;
    const updateSkater = await pool.query(
      "UPDATE skaters SET skater_name = $1 WHERE skater_id = $2",
      [skater_name, skater_id]
    );

    res.json("Skater name was updated");
  } catch (err) {
    console.error(err.message);
  }
});

//get a pb

//delete a pb

app.listen(5000, () => {
  console.log("server has started on port 5000");
});
