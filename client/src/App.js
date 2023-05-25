import React, { useState } from "react";
import { BrowserRouter, Routes, Route, Navigate } from "react-router-dom";
import Home from "./components/pages/Home";
import Login from "./components/pages/Login";
import LoginContainer from "./containers/LoginContainer";
import Contact from "./components/pages/Contact";
import NoPage from "./components/pages/NoPage";

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
                <Login />
              ) : (
                <LoginContainer setToken={setToken} />
              )
            }
          />
          <Route path="contact" element={<Contact />} />
          <Route path="*" element={<NoPage />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
