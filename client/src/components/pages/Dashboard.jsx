import React from "react";
import Homebar from "../Homebar";
import AddSkater from "../AddSkater";
import DeleteSkater from "../DeleteSkater";

function Dashboard() {

  return (
    <>
      <Homebar />
      <AddSkater />
      <DeleteSkater />
      <h1>this is the dashboard</h1>
    </>
  );
}

export default Dashboard;
