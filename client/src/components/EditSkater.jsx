import React, { useState } from "react";
import Button from "react-bootstrap/Button";
import Modal from "react-bootstrap/Modal";
import InputMask from "react-input-mask";
import ButtonGroup from "react-bootstrap/ButtonGroup";
import ToggleButton from "react-bootstrap/ToggleButton";
import ToggleButtonGroup from "react-bootstrap/ToggleButtonGroup";

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

      const response = await fetch(
        `http://localhost:5000/skaters/${skater.skater_id}`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(body),
        }
      );

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

  const [radioValue, setRadioValue] = useState("1");
  const [activeForm, setActiveForm] = useState("editSkaterForm");
  const handleFormChange = (formName) => {
    setActiveForm(formName);
  };
  const radios = [
    { name: "500m", value: "1" },
    { name: "1000m", value: "2" },
    { name: "1500m", value: "3" },
  ];

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

          <ToggleButtonGroup
            name="toggle-forms"
            value={activeForm}
            defaultValue={handleFormChange}
          >
            {/* {radios.map((radio, idx) => (
              <ToggleButton
                key={idx}
                id={`radio-${idx}`}
                type="radio"
                variant={"outline-secondary"}
                name="radio"
                value={radio.value}
                checked={radioValue === radio.value}
                onChange={(e) => setRadioValue(e.currentTarget.value)}
              >
                {radio.name}
              </ToggleButton>
            ))} */}
            <ToggleButton value="500m">500m</ToggleButton>
            <ToggleButton value="1000m">1000m</ToggleButton>
            <ToggleButton value="1500m">1500m</ToggleButton>
          </ToggleButtonGroup>
          {/* <form
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
              {!(
                all_time_best ||
                all_time_location ||
                all_time_competition_name ||
                all_time_date ||
                season_best ||
                season_location ||
                season_competition_name ||
                season_date
              )
                ? "Skip"
                : "Submit"}
            </button>
            <button type="button" onClick={clearBar} className="btn btn-danger">
              Clear
            </button>
          </form> */}
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
