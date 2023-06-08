import React, { useState, useRef } from "react";
import Homebar from "../Homebar";
import SearchSkater from "../SearchSkater";
import MultiStepForm from "../MultiStepForm.jsx";

import "../stylingComponents/Dashboard.css";

function Dashboard() {
  return (
    <div className="container">
      <Homebar />
      <div className="dashboard">
        <div className="multistep-form">
          <MultiStepForm />
        </div>
        <div className="search-skater">
          <SearchSkater />
        </div>
      </div>
    </div>
  );
}

export default Dashboard;
