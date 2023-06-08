import React, { useState } from "react";
import Button from "react-bootstrap/Button";
import Modal from "react-bootstrap/Modal";
import "./stylingComponents/PreviewData.css";

const PreviewData = ({
  previewSkater,
  preview500,
  preview1000,
  preview1500,
  setCurrentStep,
}) => {
  const [successMessage, setSuccessMessage] = useState("");
  const [failureMessage, setFailureMessage] = useState("");
  const [showModal, setShowModal] = useState(false);

  const getSkaterId = async () => {
    try {
      const response = await fetch(
        `http://localhost:5000/skaters/skater-name/${previewSkater.skater_name}`
      );
      const skater = await response.json();

      return skater.skater_id;
    } catch (err) {
      setSuccessMessage("");
      setFailureMessage("There was an error deleting some stuff!");
    }
  };

  const deleteSkater = async () => {
    try {
      const id = await getSkaterId();

      const response500 = await fetch(
        `http://localhost:5000/results_500/${id}`,
        {
          method: "DELETE",
        }
      );

      const response1000 = await fetch(
        `http://localhost:5000/results_1000/${id}`,
        {
          method: "DELETE",
        }
      );

      const response1500 = await fetch(
        `http://localhost:5000/results_1500/${id}`,
        {
          method: "DELETE",
        }
      );

      const responseSkater = await fetch(
        `http://localhost:5000/skaters/${id}`,
        {
          method: "DELETE",
        }
      );

      if (
        responseSkater.status &&
        response500.status &&
        response1000.status &&
        response1500.status === 200
      ) {
        // setFailureMessage("");
        // setSuccessMessage(`${} was successfully deleted!`);
      }
    } catch (err) {
      console.error(err.message);
    }
  };

  const handleOkClick = () => {
    setCurrentStep(1);
  };

  const handleDeleteClick = () => {
    deleteSkater();
    setCurrentStep(1);
  };

  const handleOpenModal = () => {
    setShowModal(true);
  };

  const handleCloseModal = () => {
    setShowModal(false);
  };

  return (
    <div>
      <h2>Preview</h2>
      <div className="preview-column">
        {previewSkater && (
          <div>
            <p>
              <strong>Skater Name: </strong>
              {previewSkater.skater_name}
            </p>
            <p>
              <strong>Date of Birth:</strong> {previewSkater.dob}
            </p>
            <p>
              <strong>Home Club: </strong> {previewSkater.home_club}
            </p>
            <p>
              <strong>Gender:</strong> {previewSkater.gender}
            </p>
            <p>
              <strong>Country: </strong> {previewSkater.country}
            </p>
            <p>
              <strong>Region: </strong>
              {previewSkater.region}
            </p>
            {/* Render other preview data fields */}
          </div>
        )}
      </div>
      <div className="preview-column">
        {preview500 && (
          <div>
            <p>
              <strong>All Time 500 PB:</strong> {preview500.all_time_best}
            </p>
            <p>
              <strong>All Time Location:</strong> {preview500.location}
            </p>
            <p>
              <strong>All Time Competition Name:</strong>{" "}
              {preview500.competition_name}
            </p>
            <p>
              <strong>All Time Date:</strong> {preview500.all_time_date}
            </p>
            <p>
              <strong>Season 500 PB:</strong> {preview500.season_best}
            </p>
            <p>
              <strong>Season Location:</strong> {preview500.location}
            </p>
            <p>
              <strong>Season Competition Name:</strong>{" "}
              {preview500.competition_name}
            </p>
            <p>
              <strong>Season Date:</strong> {preview500.season_date}
            </p>
            {/* Render other preview data fields */}
          </div>
        )}
      </div>
      <div className="preview-column">
        {preview1000 && (
          <div>
            <p>
              <strong>All Time 1000 PB:</strong> {preview1000.all_time_best}
            </p>
            <p>
              <strong>All Time Location:</strong>{" "}
              {preview1000.all_time_location}
            </p>
            <p>
              <strong>All Time Competition Name:</strong>{" "}
              {preview1000.all_time_competition_name}
            </p>
            <p>
              <strong>All Time Date:</strong> {preview1000.all_time_date}
            </p>
            <p>
              <strong>Season 1000 PB:</strong> {preview1000.season_best}
            </p>
            <p>
              <strong>Season Location:</strong> {preview1000.season_location}
            </p>
            <p>
              <strong>Season Competition Name:</strong>{" "}
              {preview1000.season_competition_name}
            </p>
            <p>
              <strong>Season Date:</strong> {preview1000.season_date}
            </p>
            {/* Render other preview data fields */}
          </div>
        )}
      </div>
      <div className="preview-column">
        {preview1500 && (
          <div>
            <p>
              <strong>All Time 1500 PB:</strong> {preview1500.all_time_best}
            </p>
            <p>
              <strong>All Time Location:</strong> {preview1500.all_time_best}
            </p>
            <p>
              <strong>All Time Competition Name:</strong>{" "}
              {preview1500.all_time_competition_name}
            </p>
            <p>
              <strong>All Time Date:</strong> {preview1500.all_time_date}
            </p>
            <p>
              <strong>Season 1500 PB:</strong> {preview1500.season_best}
            </p>
            <p>
              <strong>Season Location:</strong> {preview1500.season_location}
            </p>
            <p>
              <strong>Season Competition Name:</strong>{" "}
              {preview1500.season_competition_name}
            </p>
            <p>
              <strong>Season Date:</strong> {preview1500.season_date}
            </p>
            {/* Render other preview data fields */}
          </div>
        )}
      </div>
      {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
      <Button
        variant="secondary"
        className="btn btn-success"
        onClick={handleOkClick}
      >
        OK
      </Button>
      <Button variant="danger" onClick={handleOpenModal}>
        Delete and Start Over
      </Button>
      <Modal show={showModal} onHide={handleCloseModal} centered>
        <Modal.Header closeButton>
          <Modal.Title>Are you sure?</Modal.Title>
        </Modal.Header>

        <Modal.Footer style={{ justifyContent: "center" }}>
          <Button variant="secondary" onClick={handleCloseModal}>
            Go Back
          </Button>
          <Button variant="danger" onClick={handleDeleteClick}>
            Delete
          </Button>
        </Modal.Footer>
      </Modal>
    </div>
  );
};

export default PreviewData;
