import React, { useState } from "react";
import InputMask from "react-input-mask";

import "./stylingComponents/AddResults.css";

export default function AddResults({ distance }) {
  const [allTime, setAllTime] = useState("");

  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");

  const clearMessages = () => {
    setSuccessMessage("");
    setFailureMessage("");
  };

  const handleTimeChange = (e) => {
    setAllTime(e.target.value);
  };

  return (
    <div>
      <h1>Add {distance} PBs</h1>
      <form>
        <div className="form-group">
          <label htmlFor="allTime500">All Time {distance}</label>
          <InputMask
            mask="99:99:999"
            className="form-control"
            id="allTime500"
            placeholder="00:00:000"
            value={allTime}
            onChange={handleTimeChange}
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
            onChange={(e) => setAllTime(e.target.value)}
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
            onChange={(e) => setAllTime(e.target.value)}
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
            onChange={(e) => setAllTime(e.target.value)}
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
            onChange={(e) => setAllTime(e.target.value)}
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
            onChange={(e) => setAllTime(e.target.value)}
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
            onChange={(e) => setAllTime(e.target.value)}
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
              onChange={(e) => setAllTime(e.target.value)}
            />
          </div>
        </div>
      </form>
    </div>
  );
}
