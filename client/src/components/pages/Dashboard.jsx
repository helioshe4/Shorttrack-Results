import React, { useState, useRef } from "react";
import Homebar from "../Homebar";
import AddSkater from "../AddSkater";
import SearchSkater from "../SearchSkater";
import AddResults from "../AddResults";

import "../stylingComponents/Dashboard.css";
import MultiStepForm from "../MultiStepForm.jsx";

function Dashboard() {
  const [skaterName, setSkaterName] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");
  const [formData, setFormData] = useState({
    skaterFormData: null,
    resultsFormData: null,
  });

  const updateSkaterName = (name) => {
    setSkaterName(name);
  };

  const handleSubmitAll = async () => {
    try {
      // Submit AddSkater form
      if (formData.skaterFormData) {
        const skaterData = formData.skaterFormData;
        try {
          console.log(skaterData);
          const skater_name = skaterData.skater_name;
          console.log(skater_name);
          if (skater_name.trim() === "") {
            setFailureMessage("Skater name cannot be empty!");
            return;
          }

          const response = await fetch("http://localhost:5000/skaters", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(skaterData),
          });

          // Check for duplicate key constraint violation
          if (response.status !== 200) {
            //clear error messages:
            setSuccessMessage("");
            setFailureMessage(`${skater_name} has already been added!`);
          } else {
            if (response.ok) {
              //clear error messages:
              setFailureMessage("");
              setSuccessMessage(`${skater_name} was added!`);
              // Clear the input fields
              //clearBar();
            } else {
              // Handle the case when the server returns an error
              setFailureMessage(`There was an error adding ${skater_name}!`);
            }
          }
        } catch (err) {
          console.error(err.message);
        }
      }

      // Submit AddResults form
      if (formData.resultsFormData) {
        const response2 = await fetch("http://localhost:5000/results", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(formData.resultsFormData),
        });
        // Handle the response
      }

      // Clear the form data after submission
      setFormData({ skaterFormData: null, resultsFormData: null });
    } catch (error) {
      console.error("Error submitting forms:", error);
    }
  };

  return (
    <>
      <Homebar />
      {/* <div className="dashboard-container">
        <div className="container">
          <AddSkater
            onSubmit={handleSubmitAll}
            updateSkaterName={updateSkaterName}
            setSkaterName={setSkaterName}
          />
        </div>
        <div className="container">
          <div className="add-results-container">
            <AddResults onSubmit={handleSubmitAll} skaterName={skaterName} />
            <AddResults distance="1000" />
            <AddResults distance="1500" />
          </div>
        </div>
      </div>
      <button
        type="button"
        onClick={handleSubmitAll}
        className="btn btn-success"
      >
        Submit All Forms
      </button> */}
      <MultiStepForm />
      <SearchSkater />
      {/* <h1>this is the dashboard</h1> */}
    </>
  );
}

export default Dashboard;
