import React from "react";
import Navbar from "../Navbar";
import { Outlet } from "react-router-dom";

function Home() {
  return (
    <>
      <Navbar />
      <Outlet />
      <h1>this is the homepage</h1>
    </>
  );
}

export default Home;
