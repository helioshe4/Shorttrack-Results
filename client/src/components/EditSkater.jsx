import React, { useState } from "react";
import Button from "react-bootstrap/Button";
import Modal from "react-bootstrap/Modal";
import InputMask from "react-input-mask";

const EditSkater = ({ skater }) => {
  const [showModal, setShowModal] = useState(false);
  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");

  const [skater_name, setSkaterName] = useState(skater.skater_name);
  const [dob, setDob] = useState(skater.dob);
  const [home_club, setHomeClub] = useState(skater.home_club);
  const [gender, setGender] = useState(skater.gender);
  const [country, setCountry] = useState(skater.country);
  const [region, setRegion] = useState(skater.region);

  const handleOpenModal = () => {
    setShowModal(true);
  };

  const handleSaveModal = () => {
    submitSkaterForm();
    //save500Results();
    //save1000Results();
    //save1500Results();
    setShowModal(false);
  };

  const handleCloseModal = () => {
    setShowModal(false);
  };

  const clearBar = () => {
    setSkaterName("");
    setDob("");
    setHomeClub("");
    setGender("");
    setCountry("");
    setRegion("");
  };

  const submitSkaterForm = async () => {
    //e.preventDefault();
    try {
      const body = {
        skater_name,
        dob: dob !== null ? new Date(dob).toISOString() : null,
        home_club,
        gender,
        country,
        region,
      };
      
      console.log("Form data:", body);

      //for when form is blank
      if (skater_name.trim() === "") {
        setFailureMessage("Skater name cannot be empty!");
        return;
      }

      console.log(skater.skater_id);

      const response = await fetch(`http://localhost:5000/skaters/${skater.skater_id}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });

      console.log("Response:", response);

      // Check for duplicate key constraint violation
      if (response.status !== 200) {
        //clear error messages:
        setSuccessMessage("");
        setFailureMessage(`${skater_name} has already been added!`);
      } else {
        if (response.ok) {
          setFailureMessage("");
          setSuccessMessage(`${skater_name} was added!`);
        } else {
          // Handle the case when the server returns an error
          setFailureMessage(`There was an error adding ${skater_name}!`);
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

  return (
    <div>
      <Button variant="secondary" onClick={handleOpenModal}>
        Edit
      </Button>
      <Modal show={showModal} fullscreen={true} onHide={handleCloseModal}>
        <Modal.Header closeButton>
          <Modal.Title>Edit Skater</Modal.Title>
        </Modal.Header>

        <Modal.Body>
          <form
            id="editSkaterForm"
            className=""
            type="submit"
            onSubmit={submitSkaterForm}
          >
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
        </Modal.Body>

        <Modal.Footer>
          <Button variant="secondary" onClick={handleCloseModal}>
            Close
          </Button>
          <Button variant="primary" onClick={handleSaveModal}>
            Save Changes
          </Button>
        </Modal.Footer>
      </Modal>
    </div>
  );
};

export default EditSkater;
