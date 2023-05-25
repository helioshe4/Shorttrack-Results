import React, { useState, useEffect } from "react";

const DeleteSkater = () => {
  const [skaters, setSkaters] = useState([]);
  const [skater_name, setSkaterName] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");

  const deleteSkater = async (e, id) => {
    e.preventDefault();
    try {
      const response = await fetch(`http://localhost:5000/skaters/${skater_name}`, {
        method: "DELETE"
      });

      setSkaters(skaters.filter((skater) => skater.skater_id !== id));

      // Check for duplicate key constraint violation
      if (response.status === 409) {
        //clear error messages:
        setSuccessMessage("");

        setFailureMessage(`${id} has already been added!`);
      } else {
        //clear error messages:
        setFailureMessage("");

        setSuccessMessage(`${id} was added!`);
        // Clear the input field
        setSkaterName("");
      }

    } catch (err) {
      console.error(err.message);
    }
  };

  const getSkaters = async () => {
    try {
      const response = await fetch("http://localhost:5000/skaters");
      const jsonData = await response.json();

      setSkaters(jsonData);
    } catch (err) {
      console.error(err.message);
    }
  };

  useEffect(() => {
    getSkaters();
  }, []);

  return (
    <>
      <h1 className="text-center mt-5">Delete a skater</h1>
      <form className="d-flex mt-5" onSubmit={(e) => deleteSkater(e, skater_name)}>
        <input
          type="text"
          className="form-control"
          value={skater_name}
          onChange={(e) => setSkaterName(e.target.value)}
        />
        <button className="btn btn-success">Delete</button>
      </form>
      {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: 'red' }}>{failureMessage}</p>}
    </>
  );
};

export default DeleteSkater;
