const express = require("express");
const router = express.Router();
const pool = require("../db");

//post a skater's results
router.post("/:skater_id/results_500", async (req, res) => {
  try {
    const { skater_id } = req.params;

    const {
      all_time_500,
      season_500,
      all_time_location,
      all_time_competition_name,
      all_time_date,
      season_location,
      season_competition_name,
      season_date,
    } = req.body;

    let query = "INSERT INTO results_500 (skater_id";
    const values = [skater_id];
    const params = ["$1"];

    let paramIndex = 2;

    if (all_time_500) {
      query += ", all_time_500";
      values.push(all_time_500);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_500) {
      query += ", season_500";
      values.push(season_500);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (all_time_location) {
      query += ", all_time_location";
      values.push(all_time_location);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (all_time_competition_name) {
      query += ", all_time_competition_name";
      values.push(all_time_competition_name);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (all_time_date) {
      query += ", all_time_date";
      values.push(all_time_date);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_location) {
      query += ", season_location";
      values.push(season_location);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_competition_name) {
      query += ", season_competition_name";
      values.push(season_competition_name);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_date) {
      query += ", season_date";
      values.push(season_date);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    query += `) VALUES (${params.join(", ")}) RETURNING *`;

    const newResults = await pool.query(query, values);

    console.log("New results: ", newResults.rows[0]);

    res.json(newResults.rows[0]);
  } catch (err) {
    console.error(err.message);
    //res.status(500).json({ error: "Internal Server Error" });
  }
});

//update a skater's results
router.put("/:result_id/results_500", async (req, res) => {
  try {
    const { result_id } = req.params;

    const {
      all_time_500,
      season_500,
      all_time_location,
      all_time_competition_name,
      all_time_date,
      season_location,
      season_competition_name,
      season_date,
    } = req.body;

    let query = "UPDATE results_500 SET";
    const values = [];
    const params = [];

    let paramIndex = 1;

    if (all_time_500 !== undefined) {
      query += ` all_time_500 = $${paramIndex},`;
      values.push(all_time_500);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_500 !== undefined) {
      query += ` season_500 = $${paramIndex},`;
      values.push(season_500);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (all_time_location !== undefined) {
      query += ` all_time_location = $${paramIndex},`;
      values.push(all_time_location);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (all_time_competition_name !== undefined) {
      query += ` all_time_competition_name = $${paramIndex},`;
      values.push(all_time_competition_name);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (all_time_date !== undefined) {
      query += ` all_time_date = $${paramIndex},`;
      values.push(all_time_date);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_location !== undefined) {
      query += ` season_location = $${paramIndex},`;
      values.push(season_location);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_competition_name !== undefined) {
      query += ` season_competition_name = $${paramIndex},`;
      values.push(season_competition_name);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_date !== undefined) {
      query += ` season_date = $${paramIndex},`;
      values.push(season_date);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    // Remove the trailing comma and add the WHERE condition
    query = query.slice(0, -1);
    query += ` WHERE result_id = $${paramIndex} RETURNING *`;
    values.push(result_id);

    const updatedResult = await pool.query(query, values);

    console.log("Updated result: ", updatedResult.rows[0]);

    res.json(updatedResult.rows[0]);
  } catch (err) {
    console.error(err.message);
    //res.status(500).json({ error: "Internal Server Error" });
  }
});

//get a result_500
router.get("/results/:result_id", async (req, res) => {
  try {
    const { result_id } = req.params;
    const result_500 = await pool.query(
      "SELECT * FROM results_500 WHERE result_id = $1",
      [result_id]
    );

    res.json(result_500.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

//get all result_500's
router.get("/results_500", async (req, res) => {
  try {
    const allResult_500 = await pool.query("SELECT * FROM results_500;");

    res.json(allResult_500.rows);
  } catch (err) {
    console.error(err.message);
  }
});

//delete a result
router.delete("/:result_id/results_500", async (req, res) => {
  try {
    const { result_id } = req.params;
    const deleteResult = await pool.query(
      "DELETE FROM results_500 WHERE result_id = $1",
      [result_id]
    );

    res.json("Result was deleted");
  } catch (err) {
    console.error(err.message);
  }
});

module.exports = router;