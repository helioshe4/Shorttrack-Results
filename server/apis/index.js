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

app.use("/skaters", skatersRouter);
app.use("/results_500", results_500Router);

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


app.listen(5000, () => {
  console.log("server has started on port 5000");
});
