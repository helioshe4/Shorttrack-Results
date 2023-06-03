import React, { useState, useRef } from "react";
import Homebar from "../Homebar";
import AddSkater from "../AddSkater";
import SearchSkater from "../SearchSkater";
import AddResults from "../AddResults";

import "../stylingComponents/Dashboard.css";

function Dashboard() {
  const [skaterName, setSkaterName] = useState("");

  const updateSkaterName = (name) => {
    setSkaterName(name);
  };

  const addSkaterRef = useRef(null);
  const addResults500mRef = useRef(null);
  const addResults1000mRef = useRef(null);
  const addResults1500mRef = useRef(null);

  const handleFormSubmit = async (e) => {
    e.preventDefault();
    try {
      await addSkaterRef.current.submitForm(e); // Wait for addSkater form submission

      await Promise.all([
        addResults500mRef.current.submitForm(e),
        addResults1000mRef.current.submitForm(e),
        addResults1500mRef.current.submitForm(e),
      ]);
    } catch (error) {
      console.error("Error submitting forms:", error);
    }
  };

  return (
    <>
      <Homebar />
      <div className="dashboard-container">
        <div className="container">
          <AddSkater
            ref={addSkaterRef}
            updateSkaterName={updateSkaterName}
            setSkaterName={setSkaterName}
          />
        </div>
        <div className="container">
          <div className="add-results-container">
            <AddResults
              skaterName={skaterName}
              distance="500"
              ref={addResults500mRef}
              onSubmitForm={handleFormSubmit}
            />
            <AddResults distance="1000" />
            <AddResults distance="1500" />
          </div>
        </div>
      </div>
      <button
        type="button"
        onClick={(e) => handleFormSubmit(e)}
        className="btn btn-success"
      >
        Submit All Forms
      </button>
      <SearchSkater />
      {/* <h1>this is the dashboard</h1> */}
    </>
  );
}

export default Dashboard;
