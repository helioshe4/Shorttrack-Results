import React, { useState } from "react";
import { BrowserRouter, Routes, Route, Navigate } from "react-router-dom";
import Home from "./components/pages/HomePage";
import Login from "./components/pages/Login";
import Dashboard from "./components/pages/Dashboard";
import NoPage from "./components/pages/NoPage";
import Countries from "./components/pages/Countries";
import Athletes from "./components/pages/Athletes";

//Styling
import "./styling/App.css";

function App() {
  const [token, setToken] = useState();

  return (
    <div className="wrapper">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route
            path="login"
            element={
              token ? (
                <Navigate to="/dashboard" />
              ) : (
                <>
                  <Login setToken={setToken} />
                </>
              )
            }
          />
          <Route
            path="dashboard"
            // element={token ? <Dashboard /> : <NoPage />} //uncomment this after finalized
            element={<Dashboard />}
          />
          <Route path="athletes" element={<Countries />} />
          <Route path="athletes/:country" element={<Athletes />} />
          <Route path="*" element={<NoPage />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
