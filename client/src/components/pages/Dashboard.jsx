import React, { useState, useRef } from "react";
import Homebar from "../Homebar";
import AddSkater from "../AddSkater";
import SearchSkater from "../SearchSkater";
import AddResults from "../AddResults";

import "../stylingComponents/Dashboard.css";
import MultiStepForm from "../MultiStepForm.jsx";

function Dashboard() {
  return (
    <div className="container">
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
