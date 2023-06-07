import React, { useState, useEffect } from "react";
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
  const [currentDistance, setCurrentDistance] = useState("500");

  // Fetch results for a given distance
  const fetchResults = async (distance) => {
    try {
      const response = await fetch(
        `http://localhost:5000/results_${distance}/skaters/${skater.skater_name}`
      );
      const text = await response.text();
      const jsonData = text ? JSON.parse(text) : {};
      console.log("jsonData:", jsonData);
      return jsonData;
    } catch (err) {
      console.error(err.message);
    }
  };

  useEffect(() => {
    const fetchData = async () => {
      const data = await fetchResults(currentDistance);
      setAllTimeBest(convertTimeToISO(data.all_time_best));
      setAllTimeLocation(data.all_time_location);
      setAllTimeCompetition(data.all_time_competition_name);
      setAllTimeDate(data.all_time_date);
      setSeasonBest(convertTimeToISO(data.season_best));
      setSeasonLocation(data.season_location);
      setSeasonCompetition(data.season_competition_name);
      setSeasonDate(data.season_date);
    };

    fetchData();
  }, [skater.skater_name, currentDistance]);

  //skaters
  const [skater_name, setSkaterName] = useState(skater.skater_name);
  const [dob, setDob] = useState(skater.dob);
  const [home_club, setHomeClub] = useState(skater.home_club);
  const [gender, setGender] = useState(skater.gender);
  const [country, setCountry] = useState(skater.country);
  const [region, setRegion] = useState(skater.region);

  //results
  const [all_time_best, setAllTimeBest] = useState("");
  const [all_time_location, setAllTimeLocation] = useState("");
  const [all_time_competition_name, setAllTimeCompetition] = useState("");
  const [all_time_date, setAllTimeDate] = useState("");
  const [season_best, setSeasonBest] = useState("");
  const [season_location, setSeasonLocation] = useState("");
  const [season_competition_name, setSeasonCompetition] = useState("");
  const [season_date, setSeasonDate] = useState("");

  useEffect(() => {
    fetchResults(500); // Call fetchResults with distance of 500m to set the initial values
  }, []);

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

  const handleToggleChange = async (value) => {
    setActiveForm(value);
    const distance = parseInt(value.replace("m", ""));
    setCurrentDistance(distance);

    // Fetch results for the new distance
    const data = await fetchResults(distance);
    setAllTimeBest(convertTimeToISO(data.all_time_best) || '');
    setAllTimeLocation(data.all_time_location || '');
    setAllTimeCompetition(data.all_time_competition_name || '');
    setAllTimeDate(data.all_time_date || '');
    setSeasonBest(convertTimeToISO(data.season_best));
    setSeasonLocation(data.season_location || '');
    setSeasonCompetition(data.season_competition_name || '');
    setSeasonDate(data.season_date || '');
  };

  const clearBar = () => {
    setSkaterName("");
    setDob("");
    setHomeClub("");
    setGender("");
    setCountry("");
    setRegion("");
  };

  function convertTimeToISO(timeInSeconds) {
    const minutes = Math.floor(timeInSeconds / 60);
    const seconds = Math.floor(timeInSeconds % 60);
    const milliseconds = Math.round((timeInSeconds % 1) * 1000)
      .toFixed(0)
      .padStart(3, "0");

    const formattedMinutes = String(minutes).padStart(2, "0");
    const formattedSeconds = String(seconds).padStart(2, "0");

    return `${formattedMinutes}:${formattedSeconds}:${milliseconds}`;
  }

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

  const [activeForm, setActiveForm] = useState("500m");

  const distances = [
    { name: "500m", value: "500m" },
    { name: "1000m", value: "1000m" },
    { name: "1500m", value: "1500m" },
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
            defaultValue={"500m"}
            onChange={handleToggleChange}
          >
            {distances.map((distance, idx) => (
              <ToggleButton
                key={idx}
                id={`radio-${idx}`}
                type="radio"
                variant={"outline-secondary"}
                name="radio"
                value={distance.value}
                checked={activeForm === distance.value}
                onChange={(e) => {
                  setActiveForm(e.currentTarget.value);
                  setCurrentDistance(e.currentTarget.value);
                }}
              >
                {distance.name}
              </ToggleButton>
            ))}
          </ToggleButtonGroup>
          <h1>
            Edit {activeForm} PBs for {skater.skater_name}
          </h1>
          <form
            // id={`addResults${distance}Form`}
            className="add-results-form"
            onSubmit={submitSkaterForm}
          >
            <div className="form-group">
              <label htmlFor={`allTime${currentDistance}`} >All Time PB for {activeForm}</label>
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
              <label htmlFor={`allTime${currentDistance}`}>Location</label>
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
              <label htmlFor={`allTime${currentDistance}`}>Competition</label>
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
              <label htmlFor={`allTime${currentDistance}`}>Date</label>
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
              <label htmlFor={`allTime${currentDistance}`}>Season PB</label>
              <InputMask
                mask="99:99:999"
                className="form-control"
                id={`allTime${currentDistance}`}
                placeholder="00:00:000"
                value={season_best}
                onChange={(e) => setSeasonBest(e.target.value)}
                style={{ textAlign: "center" }}
              />
            </div>
            <div className="form-group">
              <label htmlFor={`allTime${currentDistance}`}>Location</label>
              <input
                type="text"
                className="form-control"
                id={`allTime${currentDistance}`}
                // placeholder="First Last"
                value={season_location}
                onChange={(e) => setSeasonLocation(e.target.value)}
              />
            </div>
            <div className="form-group">
              <label htmlFor={`allTime${currentDistance}`}>Competition</label>
              <input
                type="text"
                className="form-control"
                id={`allTime${currentDistance}`}
                // placeholder="First Last"
                value={season_competition_name}
                onChange={(e) => setSeasonCompetition(e.target.value)}
              />
            </div>
            <div className="form-group">
              <label htmlFor={`allTime${currentDistance}`}>Date</label>
              <InputMask
                mask="9999/99/99"
                className="form-control"
                id={`allTime${currentDistance}`}
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
