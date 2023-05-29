const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");
const session = require("express-session");

//middleware
app.use(cors());
app.use(express.json());

app.use(
  session({
    secret: "your_session_secret",
    resave: false,
    saveUninitialized: false,
  })
);

app.post("/login", async (req, res) => {
  // Validate admin credentials
  const { username, password } = req.body;
  // Perform authentication logic here

  if (username === "admin" && password === "admin") {
    // If the admin is authenticated, create a session and store admin data
    req.session.admin = {
      username,
      role: "admin", // Set the admin role or any other relevant data
    };

    res.json({ message: "Login successful" });
  } else {
    // Admin authentication failed
    res.status(401).json({ error: "Invalid credentials" });
  }
});

//Protect the admin routes by checking if a valid session exists and if the user is authenticated:
// app.get("/admin/dashboard", (req, res) => {
//   // Check if a valid session exists and if the user is authenticated
//   if (req.session.admin && req.session.admin.role === "admin") {
//     // Admin is authenticated, proceed with accessing the admin dashboard
//     res.send("Admin Dashboard");
//   } else {
//     // Admin is not authenticated, redirect to login page or return an error
//     res.status(401).json({ error: "Unauthorized" });
//   }
// });

app.use("/login", (req, res) => {
  res.send({
    token: "test123",
  });
});

//ROUTES

// //create a skater (only name)
// app.post("/skaters", async (req, res) => {
//   try {
//     const { skater_name } = req.body;
//     const newSkater = await pool.query(
//       "INSERT INTO skaters (skater_name) VALUES($1) RETURNING *",
//       [skater_name]
//     );

//     res.json(newSkater.rows[0]);
//   } catch (err) {
//     console.error("already added");
//     res.status(409).json({ error: "Skater already exists" });
//   }
// });

//post a skater's info
app.post("/skaters", async (req, res) => {
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

//get a skater_id given their name
app.get("/skaters/skater-name/:skater_name", async (req, res) => {
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

//post a skater's results
app.post("/skaters/:skater_id/results_500", async (req, res) => {
  try {
    const {
      skater_id,
      all_time_500,
      season_500,
      all_time_location,
      all_time_competition_name,
      all_time_date,
      season_location,
      season_competition_name,
      season_date
    } = req.body;

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


app.listen(5000, () => {
  console.log("server has started on port 5000");
});
