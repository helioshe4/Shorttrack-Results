import React, { useState, useEffect } from "react";
import InputMask from "react-input-mask";

import "./stylingComponents/AddResults.css";

const AddResults = ({ distance, skaterName, onSubmit, setResultsFormData }) => {
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

    let paddedMilliseconds = String(milliseconds);
    paddedMilliseconds = paddedMilliseconds.replace(/_/g, "");
    paddedMilliseconds = paddedMilliseconds.padEnd(3, "0");

    console.log(minutes);
    console.log(seconds);
    console.log(paddedMilliseconds);

    const totalSeconds =
      parseInt(minutes) * 60 +
      parseInt(seconds) +
      parseFloat(paddedMilliseconds) / 1000;

    return totalSeconds.toFixed(3); // Convert to a decimal with 3 decimal places
  };

  const submitForm = async (e) => {
    e.preventDefault();
    try {
      const response1 = await fetch(
        `http://localhost:5000/skaters/skater-name/${skaterName}`
      );
      const jsonData = await response1.json();
      const skater_id = jsonData.skater_id;

      const body = {
        all_time_best: convertTimeToSeconds(all_time_best),
        all_time_location,
        all_time_competition_name,
        all_time_date,
        season_best: convertTimeToSeconds(season_best),
        season_location,
        season_competition_name,
        season_date,
      };

      console.log("Form data:", body);

      const response = await fetch(
        `http://localhost:5000/results_${distance}/${skater_id}`,
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
          await setResultsFormData(body);
          clearBar();
          onSubmit();
        } else {
          // Handle the case when the server returns an error
          //setFailureMessage(`There was an error adding ${skater_name}!`);
        }
      }
    } catch (err) {
      if (err.message === "Invalid time value") {
        setSuccessMessage(``);
        setFailureMessage("Invalid date format!");
      }
      console.error(err.message);
    }
  };

  /*
  const handleSubmit = (e) => {
    e.preventDefault();

    console.log("here");

    const resultFormData = {
      all_time_best,
      all_time_location,
      all_time_competition_name,
      all_time_date,
      season_best,
      season_location,
      season_competition_name,
      season_date,
    };

    // Call the onSubmit prop with the form data
    onSubmit(resultFormData);
    clearBar();
  };
  */

  return (
    <div>
      <h1>
        Add {distance} PBs for {skaterName}{" "}
      </h1>
      <form
        // id={`addResults${distance}Form`}
        className="add-results-form"
        onSubmit={submitForm}
      >
        <div className="form-group">
          <label htmlFor="allTime500">All Time PB</label>
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
            value={all_time_location}
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
            value={all_time_competition_name}
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
            value={all_time_date}
            onChange={(e) => setAllTimeDate(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Season PB</label>
          <InputMask
            mask="99:99:999"
            className="form-control"
            id="allTime500"
            placeholder="00:00:000"
            value={season_best}
            onChange={(e) => setSeasonBest(e.target.value)}
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
            value={season_location}
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
            value={season_competition_name}
            onChange={(e) => setSeasonCompetition(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="allTime500">Date</label>
          <InputMask
            mask="9999/99/99"
            className="form-control"
            id="allTime500"
            placeholder="YYYY/MM/DD"
            value={season_date}
            onChange={(e) => setSeasonDate(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <button type="submit" className="btn btn-success">
          Submit
        </button>
        <button type="button" onClick={clearBar} className="btn btn-danger">
          Clear
        </button>
      </form>
      {/* <h1>{skaterName}</h1> */}

      {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
    </div>
  );
};

export default AddResults;
