const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("../db");
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


//ROUTES
const skatersRouter = require("./skaters");
const results_500Router = require("./results_500");
const results_1000Router = require("./results_1000");
const results_1500Router = require("./results_1500");


app.use("/skaters", skatersRouter);
app.use("/results_500", results_500Router);
app.use("/results_1000", results_1000Router);
app.use("/results_1500", results_1500Router);

app.post("/login", async (req, res) => {
  // Validate admin credentials
  const { username, password } = req.body;

  if (username === process.env.LOGIN_USERNAME && password === process.env.LOGIN_PASSWORD) {
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

app.use("/login", (req, res) => {
  res.send({
    token: "test123",
  });
});

app.get("/complete", async (req, res) => {
  try {
    const completeInfo = await pool.query(`
    SELECT *
    FROM skaters
    FULL OUTER JOIN results_500 ON skaters.skater_id = results_500.skater_id
    FULL OUTER JOIN results_1000 ON skaters.skater_id = results_1000.skater_id
    FULL OUTER JOIN results_1500 ON skaters.skater_id = results_1500.skater_id
    `);

    res.json(completeInfo.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
})

app.get("/exists/:skater_id/:distance", async (req, res) => {
  try {
    const {skater_id, distance} = req.params;
    const exist = await pool.query(`
    SELECT COUNT(*) FROM results_${distance} WHERE skater_id = $1
    LIMIT 1`, [skater_id]);

    res.json(exist.rows[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: "Internal Server Error" });
  }
})

app.listen(5000, () => {
  console.log("server has started on port 5000");
});
