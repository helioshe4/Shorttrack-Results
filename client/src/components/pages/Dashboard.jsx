import React from "react";
import Homebar from "../Homebar";
import AddSkater from "../AddSkater";
import DeleteSkater from "../DeleteSkater";
import SearchSkater from "../SearchSkater";

function Dashboard() {
  return (
    <>
      <Homebar />
      <AddSkater />
      <DeleteSkater />
      <SearchSkater />
      <h1>this is the dashboard</h1>
    </>
  );
}

export default Dashboard;
