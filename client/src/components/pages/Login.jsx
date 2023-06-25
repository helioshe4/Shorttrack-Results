import React, { useState } from "react";
import LoginContainer from "../../containers/LoginContainer";
import Navbar from "../Navbar";

// Login Component
// This component displays the login page under the login tab in the navbar.
function Login({ setToken }) {

  return (
    <>
      <Navbar />
      <LoginContainer setToken={setToken} />
    </>
  );
}

export default Login;
