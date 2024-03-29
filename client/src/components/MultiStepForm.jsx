import React, { useState, useEffect } from "react";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

import AddSkater from "./AddSkater";
import AddResults from "./AddResults";
import PreviewData from "./PreviewData";

const MultiStepForm = () => {
  const [skaterName, setSkaterName] = useState("");
  const [currentStep, setCurrentStep] = useState(1);
  const [skaterFormData, setSkaterFormData] = useState({});
  const [results500FormData, setResults500FormData] = useState({});
  const [results1000FormData, setResults1000FormData] = useState({});
  const [results1500FormData, setResults1500FormData] = useState({});
  const [previewData, setPreviewData] = useState(null);

  const updateSkaterName = (name) => {
    setSkaterName(name);
  };

  const handleSkaterFormSubmit = async () => {
    handleNextStep(); // Proceed to the next step (AddResults)
  };

  const handleResultsFormSubmit = () => {
    // Reset form data and navigate back to the first step (AddSkater)
    // setSkaterFormData({});
    //handlePreviewSubmit();
    handleNextStep();
  };

  const handlePreviewSubmit = () => {
    // Combine skaterFormData and resultsFormData into a single previewData object
    const combinedData = {
      ...skaterFormData,
      ...results500FormData,
      ...results1000FormData,
      ...results1500FormData,
    };

    setPreviewData(combinedData);
  };

  const handlePreviousStep = () => {
    if (currentStep === 5) {
      setPreviewData(null); // Clear preview data when going back from the preview step
    }
    setCurrentStep(currentStep - 1);
  };

  const handleNextStep = () => {
    setCurrentStep(currentStep + 1);
  };

  return (
    <Container>
      <Row className="justify-content-center">
        <Col md={6}>
          {currentStep === 1 && (
            <AddSkater
              updateSkaterName={updateSkaterName}
              onSubmit={handleSkaterFormSubmit}
              //setSkaterName={setSkaterName}
              setSkaterFormData={setSkaterFormData}
            />
          )}
          {currentStep === 2 && (
            <AddResults
              distance="500"
              skaterName={skaterName}
              onSubmit={handleResultsFormSubmit}
              setResultsFormData={setResults500FormData}
            />
          )}
          {currentStep === 3 && (
            <AddResults
              distance="1000"
              skaterName={skaterName}
              onSubmit={handleResultsFormSubmit}
              setResultsFormData={setResults1000FormData}
            />
          )}
          {currentStep === 4 && (
            <AddResults
              distance="1500"
              skaterName={skaterName}
              onSubmit={handleResultsFormSubmit}
              setResultsFormData={setResults1500FormData}
            />
          )}

          {currentStep === 5 && (
            <PreviewData
              previewSkater={skaterFormData}
              preview500={results500FormData}
              preview1000={results1000FormData}
              preview1500={results1500FormData}
              setCurrentStep={setCurrentStep}
            />
          )}
        </Col>
      </Row>
    </Container>
  );
};

export default MultiStepForm;
