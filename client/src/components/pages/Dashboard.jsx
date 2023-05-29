import React from "react";
import Homebar from "../Homebar";
import AddSkater from "../AddSkater";
import SearchSkater from "../SearchSkater";
import AddResults from "../AddResults";

import '../stylingComponents/Dashboard.css';

function Dashboard() {
  return (
    <>
      <Homebar />
      <div className="dashboard-container">
        <div className="container">
          <AddSkater />
        </div>
        <div className="container">
          <div className="add-results-container">
            <AddResults distance="500m" />
            <AddResults distance="1000m" />
            <AddResults distance="1500m" />
          </div>
        </div>
      </div>
      <SearchSkater />
      <h1>this is the dashboard</h1>
    </>
  );
}

export default Dashboard;
