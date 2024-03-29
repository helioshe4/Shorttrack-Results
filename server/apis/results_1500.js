const express = require("express");
const router = express.Router();
const pool = require("../db");

//post a skater's results
router.post("/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;

    const {
      all_time_best,
      all_time_location,
      all_time_competition_name,
      all_time_date,
      season_best,
      season_location,
      season_competition_name,
      season_date,
    } = req.body;

    let query = "INSERT INTO results_1500 (skater_id";
    const values = [skater_id];
    const params = ["$1"];

    let paramIndex = 2;

    if (all_time_best) {
      query += ", all_time_best";
      values.push(all_time_best);
      params.push(`$${paramIndex}`);
      paramIndex++;
    }

    if (season_best) {
      query += ", season_best";
      values.push(season_best);
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
router.put("/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;

    const {
      all_time_best,
      all_time_location,
      all_time_competition_name,
      all_time_date,
      season_best,
      season_location,
      season_competition_name,
      season_date,
    } = req.body;

    let query = "UPDATE results_1500 SET";
    const values = [];
    const params = [];

    let paramIndex = 1;

    if (all_time_best !== undefined) {
      query += ` all_time_best = $${paramIndex},`;
      values.push(all_time_best);
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

    if (season_best !== undefined) {
      query += ` season_best = $${paramIndex},`;
      values.push(season_best);
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
    query += ` WHERE skater_id = $${paramIndex} RETURNING *`;
    values.push(skater_id);

    const updatedResult = await pool.query(query, values);

    console.log("Updated result: ", updatedResult.rows[0]);

    res.json(updatedResult.rows[0]);
  } catch (err) {
    console.error(err.message);
    //res.status(500).json({ error: "Internal Server Error" });
  }
});

//get a result_1500
router.get("/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const result_1500 = await pool.query(
      "SELECT * FROM results_1500 WHERE skater_id = $1",
      [skater_id]
    );

    res.json(result_1500.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

//get all result_1500's
router.get("/", async (req, res) => {
  try {
    const allResult_1500 = await pool.query("SELECT * FROM results_1500;");

    res.json(allResult_1500.rows);
  } catch (err) {
    console.error(err.message);
  }
});

//delete a result
router.delete("/:skater_id", async (req, res) => {
  try {
    const { skater_id } = req.params;
    const deleteResult = await pool.query(
      "DELETE FROM results_1500 WHERE skater_id = $1",
      [skater_id]
    );

    res.json("Result was deleted");
  } catch (err) {
    console.error(err.message);
  }
});

//gets results_1500 given skater name
router.get("/skaters/:skater_name", async (req, res) => {
  try {
    const { skater_name } = req.params;
    const result_1500 = await pool.query(
      `SELECT * FROM results_1500 LEFT JOIN 
      skaters ON results_1500.skater_id = skaters.skater_id 
      WHERE skater_name = $1`,
      [skater_name]
    );

    if (result_1500.rows[0]) {
      res.json(result_1500.rows[0]);
    } else {
      res.json({ error: "No results for skater with the given name" });
    }
  } catch (err) {
    console.error(err.message);
    res.json({ error: "An error occurred on the server" });
  }
});


module.exports = router;