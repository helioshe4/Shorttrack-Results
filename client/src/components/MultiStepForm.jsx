import React, { useState, useEffect } from "react";
import { Container, Row, Col, Button } from "react-bootstrap";
import AddSkater from "./AddSkater";
import AddResults from "./AddResults";

const MultiStepForm = () => {
  const [skaterName, setSkaterName] = useState("");
  const [currentStep, setCurrentStep] = useState(1);
  const [skaterFormData, setSkaterFormData] = useState({});
  const [resultsFormData, setResultsFormData] = useState({});
  const [previewData, setPreviewData] = useState(null);

  const updateSkaterName = (name) => {
    setSkaterName(name);
  };

  const handleSkaterFormSubmit = async (formData) => {
    console.log("submitted skater");
    setCurrentStep(2); // Proceed to the next step (AddResults)
  };

  const handleResultsFormSubmit = (formData) => {
    console.log("submitted results");
    setResultsFormData(formData);

    // Reset form data and navigate back to the first step (AddSkater)
    // setSkaterFormData({});
    // setResultsFormData({});
    setCurrentStep(3);
  };

  const handlePreviewSubmit = () => {
    // Combine skaterFormData and resultsFormData into a single previewData object
    const combinedData = {
      ...skaterFormData,
      ...resultsFormData,
    };

    setPreviewData(combinedData);
  };

  const handlePreviousStep = () => {
    if (currentStep === 3) {
      setPreviewData(null); // Clear preview data when going back from the preview step
    }
    setCurrentStep(currentStep - 1);
  };

  const handleNextStep = () => {
    setCurrentStep(currentStep + 1);
  };

  const handleSubmit = () => {
    // Perform necessary API calls or data handling with skaterFormData and resultsFormData

    // Reset form data and navigate back to the first step (AddSkater)
    setSkaterFormData({});
    setResultsFormData({});
    setPreviewData(null);
    setCurrentStep(1);
  };

  return (
    <Container>
      <Row className="justify-content-center">
        <Col md={6}>
          {currentStep === 1 && (
            <AddSkater
              onSubmit={handleNextStep}
              updateSkaterName={updateSkaterName}
              setSkaterName={setSkaterName}
            />
          )}
          {currentStep === 2 && (
            <AddResults
              distance="500"
              skaterName={skaterName}
              onSubmit={handleNextStep}
            />
          )}

          {currentStep === 3 && (
            <div>
              <h2>Preview</h2>
              {previewData && (
                <div>
                  <p>Skater Name: {previewData.skater_name}</p>
                  <p>Date of Birth: {previewData.dob}</p>
                  {/* Render other preview data fields */}
                </div>
              )}
              <Button variant="secondary" onClick={handlePreviousStep}>
                Previous
              </Button>{" "}
              <Button variant="primary" onClick={handleSubmit}>
                Submit
              </Button>
            </div>
          )}

          {currentStep > 1 && currentStep < 3 && (
            <Button variant="secondary" onClick={handlePreviousStep}>
              Previous
            </Button>
          )}
          {currentStep < 3 && (
            <Button variant="primary" onClick={handleNextStep}>
              Next
            </Button>
          )}
        </Col>
      </Row>
      {/* <h1>{skaterName}</h1> */}
    </Container>
  );
};

export default MultiStepForm;
