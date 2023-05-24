import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./components/pages/Home";
import Login from "./components/pages/Login";
import Contact from "./components/pages/Contact";
import NoPage from "./components/pages/NoPage";
import LoginContainer from "./containers/LoginContainer";

//Styling
import "./styling/App.css";

function App() {
  return (
    <div className="wrapper">
      <BrowserRouter>
        <Routes>
          <Route
            index
            element={
              <>
                <Home />
              </>
            }
          />
          <Route path="login" element={<Login />} />
          <Route path="contact" element={<Contact />} />
          <Route path="*" element={<NoPage />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
