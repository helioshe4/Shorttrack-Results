import React, { useState, useEffect } from "react";

const AddSkater = () => {
  const [skater_name, setSkaterName] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");

  const clearMessages = () => {
    setSuccessMessage("");
    setFailureMessage("");
  };

  const clearBar = () => {
    setSkaterName("");
  }

  useEffect(() => {
    document.addEventListener("click", clearMessages);

    return () => {
      document.removeEventListener("click", clearMessages);
    };
  }, []);

  const onSubmitForm = async (e) => {
    e.preventDefault();
    try {
      const body = { skater_name };

      //for when form is blank
      if (skater_name.trim() === "") {
        setFailureMessage("Skater name cannot be empty!");
        return;
      }

      const response = await fetch("http://localhost:5000/skaters", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });

      //console.log(await response.text());
      //console.log(await response.json());

      // Check for duplicate key constraint violation
      if (response.status === 409) {
        //clear error messages:
        setSuccessMessage("");

        setFailureMessage(`${skater_name} has already been added!`);
      } else {
        //clear error messages:
        setFailureMessage("");

        setSuccessMessage(`${skater_name} was added!`);
        // Clear the input field
        setSkaterName("");
      }

    } catch (err) {
      console.error(err.message);
    }
  };


  return (
    <>
      <h1 className="text-center mt-5">Add a skater</h1>
      <form className="d-flex mt-5" onSubmit={onSubmitForm}>
        <input
          type="text"
          className="form-control"
          value={skater_name}
          onChange={(e) => setSkaterName(e.target.value)}
        />
        <button type="submit" className="btn btn-success">Add</button>
        <button type="button" onClick={clearBar} className="btn btn-danger" >Clear</button>
      </form>

      {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: 'red' }}>{failureMessage}</p>}
    </>
  );
};

export default AddSkater;
