import React, { useState, useEffect } from "react";
import InputMask from "react-input-mask";

import "./stylingComponents/AddResults.css";

const AddResults = React.forwardRef(({ distance, skaterName }, ref) => {
  const [all_time_best, setAllTimeBest] = useState("");
  const [all_time_location, setAllTimeLocation] = useState("");
  const [all_time_competition_name, setAllTimeCompetition] = useState("");
  const [all_time_date, setAllTimeDate] = useState("");
  const [season_best, setSeasonBest] = useState("");
  const [season_location, setSeasonLocation] = useState("");
  const [season_competition_name, setSeasonCompetition] = useState("");
  const [season_date, setSeasonDate] = useState("");

  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");

  const clearMessages = () => {
    setSuccessMessage("");
    setFailureMessage("");
  };

  const clearBar = () => {
    setAllTimeBest("");
    setAllTimeLocation("");
    setAllTimeCompetition("");
    setAllTimeDate("");
    setSeasonBest("");
    setSeasonLocation("");
    setSeasonCompetition("");
    setSeasonDate("");
  };

  useEffect(() => {
    document.addEventListener("click", clearMessages);

    return () => {
      document.removeEventListener("click", clearMessages);
    };
  }, []);

  const convertTimeToSeconds = (timeString) => {
    const [minutes, seconds, milliseconds] = timeString.split(":");

    const totalSeconds =
      parseInt(minutes) * 60 +
      parseInt(seconds) +
      parseFloat(milliseconds) / 1000;

    return totalSeconds.toFixed(3); // Convert to a decimal with 3 decimal places
  };

  const submitForm = async (e) => {
    e.preventDefault();
    try {
      if (skaterName === "") {
        setSuccessMessage("");
        setFailureMessage("enter a skater name please!");
        return;
      }
      const body = {
        all_time_best: convertTimeToSeconds(all_time_best),
        all_time_location,
        all_time_competition_name,
        all_time_date,
        season_best,
        season_location,
        season_competition_name,
        season_date,
      };

      console.log("Form data:", body);

      //for when form is blank
      // if (skater_name.trim() === "") {
      //   setFailureMessage("Skater name cannot be empty!");
      //   return;
      // }

      const response = await fetch(
        `http://localhost:5000/results_${distance}/${skaterName}`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(body),
        }
      );

      //console.log(await response.text());
      console.log("Response:", response);
      console.log("Response data:", await response.json());

      // Check for duplicate key constraint violation
      if (response.status !== 200) {
        //clear error messages:
        setSuccessMessage("");
        setFailureMessage(`error!`);
      } else {
        if (response.ok) {
          //clear error messages:
          setFailureMessage("");
          setSuccessMessage("success!");
          // Clear the input fields
          clearBar();
        } else {
          // Handle the case when the server returns an error
          //setFailureMessage(`There was an error adding ${skater_name}!`);
        }
      }
    } catch (err) {
      console.error(err.message);
    }
  };

  React.useImperativeHandle(ref, () => ({
    submitForm,
  }));

  return (
    <div>
      <h1>Add {distance} PBs</h1>
      <form
        // id={`addResults${distance}Form`}
        className="add-results-form"
        onSubmit={submitForm}
      >
        <div className="form-group">
          <label htmlFor="allTime500">All Time {distance}</label>
          <InputMask
            mask="99:99:999"
            className="form-control"
            id="allTime500"
            placeholder="00:00:000"
            value={all_time_best}
            onChange={(e) => setAllTimeBest(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Location</label>
          <input
            type="text"
            className="form-control"
            id="allTime500"
            // placeholder="First Last"
            value={""}
            onChange={(e) => setAllTimeLocation(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Competition</label>
          <input
            type="text"
            className="form-control"
            id="allTime500"
            // placeholder="First Last"
            value={""}
            onChange={(e) => setAllTimeCompetition(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Date</label>
          <InputMask
            mask="9999/99/99"
            className="form-control"
            id="allTime500"
            placeholder="YYYY/MM/DD"
            value={""}
            onChange={(e) => setAllTimeDate(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Season Best {distance}</label>
          <input
            type="text"
            className="form-control"
            id="allTime500"
            // placeholder="First Last"
            value={""}
            onChange={(e) => setSeasonBest(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Location</label>
          <input
            type="text"
            className="form-control"
            id="allTime500"
            // placeholder="First Last"
            value={""}
            onChange={(e) => setSeasonLocation(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Competition</label>
          <input
            type="text"
            className="form-control"
            id="allTime500"
            // placeholder="First Last"
            value={""}
            onChange={(e) => setSeasonCompetition(e.target.value)}
          />
        </div>
        <div className="form-group">
          <div className="form-group">
            <label htmlFor="allTime500">Date</label>
            <InputMask
              mask="9999/99/99"
              className="form-control"
              id="allTime500"
              placeholder="YYYY/MM/DD"
              value={""}
              onChange={(e) => setSeasonDate(e.target.value)}
              style={{ textAlign: "center" }}
            />
          </div>
        </div>
        {/* <button type="submit" className="btn btn-success">
          Add
        </button> */}
        <button type="button" onClick={clearBar} className="btn btn-danger">
          Clear
        </button>
      </form>

      {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
    </div>
  );
});

export default AddResults;
