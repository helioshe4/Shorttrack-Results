import React, { useState } from "react";
import ReactModal from "react-modal";

const EditSkater = ({ skater }) => {
  const [showModal, setShowModal] = useState(false);
  const [name, setName] = useState(skater.skater_name);

  const handleOpenModal = () => {
    setShowModal(true);
  };

  const handleSaveModal = () => {
    setShowModal(false);
  };

  const handleCloseModal = () => {
    setShowModal(false);
  };

  return (
    <div>
      <button onClick={handleOpenModal}>Edit</button>
      <ReactModal
        isOpen={showModal}
        contentLabel="Edit Skater"
        onRequestClose={handleCloseModal}
        shouldCloseOnOverlayClick={false}
        id={`id${skater.skater_id}`}
      >
        <div className="modal">
          {/* <!-- Modal Header --> */}
          <div className="modal-header">
            <h4 className="modal-title">Edit Skater</h4>
          </div>

          {/* <!-- Modal body --> */}
          <div className="modal-body">
            <div className="skater-name">
              <h5>Skater name</h5>
              <input
                type="text"
                className="form-control"
                value={name}
                onChange={(e) => setName(e.target.value)}
              ></input>
            </div>

            <div className="skater-name">
              <h5>All-Time PB</h5>
              <input
                type="text"
                className="form-control"
                value={name}
                onChange={(e) => setName(e.target.value)}
              ></input>
            </div>
          </div>

          {/* <!-- Modal footer --> */}
          <div className="modal-footer">
            <button
              type="button"
              className="btn btn-warning"
              onClick={handleSaveModal}
            >
              Save
            </button>
            <button
              type="button"
              className="btn btn-danger"
              onClick={handleCloseModal}
            >
              Exit without saving
            </button>
          </div>
        </div>
      </ReactModal>
    </div>
  );
};

export default EditSkater;
