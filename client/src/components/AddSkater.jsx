import React, { useState, useEffect } from "react";
import InputMask from "react-input-mask";

import "./stylingComponents/AddSkater.css";
import { skatersURL } from "../apiEndpoints";

const AddSkater = ({ updateSkaterName, onSubmit, setSkaterFormData }) => {
  const [skater_name, setSkaterName] = useState("");
  const [dob, setDob] = useState("");
  const [home_club, setHomeClub] = useState("");
  const [gender, setGender] = useState("");
  const [country, setCountry] = useState("");
  const [region, setRegion] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");
  //const [skaterFormData, setSkaterFormData] = useState({});

  const clearMessages = () => {
    setSuccessMessage("");
    setFailureMessage("");
  };

  const clearBar = () => {
    setSkaterName("");
    setDob("");
    setHomeClub("");
    setGender("");
    setCountry("");
    setRegion("");
  };

  useEffect(() => {
    document.addEventListener("click", clearMessages);

    return () => {
      document.removeEventListener("click", clearMessages);
    };
  }, []);

  const submitForm = async (e) => {
    e.preventDefault();
    try {
      const body = {
        skater_name,
        dob: dob !== "" ? new Date(dob).toISOString() : null,
        home_club,
        gender,
        country,
        region,
      };

      //console.log("Form data:", body);

      //for when form is blank
      if (skater_name.trim() === "") {
        setFailureMessage("Skater name cannot be empty!");
        return;
      }

      //const response = await fetch("http://localhost:5000/skaters", {
      const response = await fetch(skatersURL, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
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
          await updateSkaterName(skater_name);
          await setSkaterFormData(body);
          clearBar();
          onSubmit();
        } else {
          // Handle the case when the server returns an error
          setFailureMessage(`There was an error adding ${skater_name}!`);
        }
      }
    } catch (err) {
      if(err.message === 'Invalid time value') {
        setSuccessMessage(``);
        setFailureMessage('Invalid date format!');
      }
      console.error(err.message);
    }
  };

  /*
  const handleSubmit = (e) => {
    e.preventDefault();

    console.log("here");

    if (skater_name.trim() === "") {
      setFailureMessage("Skater name cannot be empty!");
      return;
    }

    const skaterFormData = {
      skater_name,
      dob: dob !== "" ? new Date(dob).toISOString() : null,
      home_club: home_club,
      gender: gender,
      country: country,
      region: region,
    };

    // Call the onSubmit prop with the form data

    console.log(skaterFormData);
    onSubmit(skaterFormData);
    clearBar();
  };
  */

  // React.useImperativeHandle(ref, () => ({
  //   submitForm,
  // }));

  return (
    <>
      <h1 className="text-center ">Add a skater</h1>
      <form id="addSkaterForm" className="add-skater-form" type="submit" onSubmit={submitForm}>
        <div className="form-group">
          <label htmlFor="skaterName">Skater Name</label>
          <input
            type="text"
            className="form-control"
            id="skaterName"
            placeholder="First Last"
            value={skater_name}
            onChange={(e) => setSkaterName(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="dob">Date of Birth</label>
          <InputMask
            mask="9999/99/99"
            className="form-control"
            id="dob"
            placeholder="YYYY/MM/DD"
            value={dob}
            onChange={(e) => setDob(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="homeClub">Home Club</label>
          <input
            type="text"
            className="form-control"
            id="homeClub"
            placeholder="Home Club"
            value={home_club}
            onChange={(e) => setHomeClub(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group select-input">
          <label htmlFor="gender">Gender</label>
          <select
            type="text"
            className="form-control"
            id="gender"
            value={gender}
            onChange={(e) => setGender(e.target.value)}
            style={{ textAlign: "center" }}
          >
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="country">Country</label>
          <input
            type="text"
            className="form-control"
            id="country"
            placeholder="Country"
            value={country}
            onChange={(e) => setCountry(e.target.value)}
            style={{ textAlign: "center" }}
          />
        </div>
        <div className="form-group">
          <label htmlFor="region">Region</label>
          <input
            type="text"
            className="form-control"
            id="region"
            placeholder="Region"
            value={region}
            onChange={(e) => setRegion(e.target.value)}
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

      {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
    </>
  );
};

export default AddSkater;
