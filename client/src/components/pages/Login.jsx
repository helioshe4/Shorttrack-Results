import React, { useState } from "react";
import Homebar from "../Homebar";
import LoginContainer from "../../containers/LoginContainer";
import Navbar from "../Navbar";

function Login({ setToken }) {

  return (
    <>
      <Navbar />
      <LoginContainer setToken={setToken} />
      <h1>this is the login page</h1>
    </>
  );
}

export default Login;
