import React, { useState, useEffect } from "react";

const DeleteSkater = () => {
  const [skaters, setSkaters] = useState([]);
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

  const deleteSkater = async (e) => {
    e.preventDefault();
    try {
      const id = await getSkaterId(skater_name);

      const response = await fetch(`http://localhost:5000/skaters/${id}`, {
        method: "DELETE",
      });

      setSkaters(skaters.filter((skater) => skater.skater_id !== parseInt(id)));

      if (response.status === 200) {
        setFailureMessage("");
        setSuccessMessage(`${skater_name} was successfully deleted!`);
      }

      setSkaterName("");
    } catch (err) {
      console.error(err.message);
    }
  };

  const getSkaterId = async (skaterName) => {
    try {
      const response = await fetch(
        `http://localhost:5000/skaters/skater-name/${skaterName}`
      );
      const skater = await response.json();

      return skater.skater_id;
    } catch (err) {
      setSuccessMessage("");
      setFailureMessage(`${skater_name} does not exist!`);
    }
  };

  // const getSkaters = async () => {
  //   try {
  //     const response = await fetch("http://localhost:5000/skaters");
  //     const jsonData = await response.json();

  //     console.log(response);
  //     setSkaters(jsonData);
  //   } catch (err) {
  //     console.error(err.message);
  //   }
  // };

  // useEffect(() => {
  //   getSkaters();
  // }, []);

  return (
    <>
        <h1 className="text-center mt-5">Delete a skater</h1>
        <form className="d-flex mt-5" onSubmit={deleteSkater}>
          <input
            type="text"
            className="form-control"
            value={skater_name}
            onChange={(e) => setSkaterName(e.target.value)}
          />
          <button className="btn btn-success">Delete</button>
          <button type="button" onClick={clearBar} className="btn btn-danger" >Clear</button>
        </form>
        {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
        {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
    </>
  );
};

export default DeleteSkater;
