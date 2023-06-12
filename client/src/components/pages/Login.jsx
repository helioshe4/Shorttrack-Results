import React, { useState } from "react";
import LoginContainer from "../../containers/LoginContainer";
import Navbar from "../Navbar";

function Login({ setToken }) {

  return (
    <>
      <Navbar />
      <LoginContainer setToken={setToken} />
    </>
  );
}

export default Login;
