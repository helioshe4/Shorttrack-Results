import React, { useState, useEffect, useRef } from "react";

import Form from "react-bootstrap/Form";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import { Typeahead } from "react-bootstrap-typeahead";

import Navbar from "../Navbar";
import Chart from "../Chart";
import { skatersURL } from "../../apiEndpoints";

import "../stylingComponents/Compare.css";

// Compare Component
// This component allows users to compare two athletes.
// It fetches a list of skaters from server and provides input boxes for users to select two skaters.
// Once the form is submitted, comparison charts for the selected skaters are displayed.
// There's also a clear button that resets the form and hides the chart.
function Compare() {
  const [skaters, setSkaters] = useState([]); //list of skaters
  const [value1, setValue1] = useState(""); //skater1 in the search bar
  const [value2, setValue2] = useState(""); //skater2 in the search bar
  const [showCharts, setShowCharts] = useState(false);
  //const maxSkaters = 5; //max number of skaters in dropdown
  const typeaheadRef1 = useRef();
  const typeaheadRef2 = useRef();

  useEffect(() => {
    const getSkaters = async () => {
      try {
        //const response = await fetch("http://localhost:5000/skaters");
        const response = await fetch(skatersURL);
        const jsonData = await response.json();

        setSkaters(jsonData);
      } catch (err) {
        console.error(`Error fetching countries: ${err.message}`);
      }
    };
    getSkaters();
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (value1 !== "" || value2 !== "") {
      setShowCharts(true);
    }
  };

  const clearBar = () => {
    setValue1("");
    setValue2("");
    setShowCharts(false);
    typeaheadRef1.current.clear();
    typeaheadRef2.current.clear();
  };

  const skaterNames = skaters.map((skater) => skater.skater_name);

  return (
    <div className="compare">
      <Navbar />

      <h1 className="compare-title">Compare Two Athletes!</h1>
      <br />

      <Form className="compare-form" onSubmit={handleSubmit}>
        <Row>
          <Col>
            <Typeahead
              id="typeahead-skater1"
              labelKey="skater1"
              onChange={(selected) => setValue1(selected[0])} //selected from dropdown
              onInputChange={(input) => setValue1(input)} //input box
              options={skaterNames}
              placeholder="Skater 1"
              minLength={1}
              ref={typeaheadRef1}
              value={value1}
            />
          </Col>
          <Col>
            <Typeahead
              id="typeahead-skater2"
              labelKey="skater2"
              onChange={(selected) => setValue2(selected[0])}
              onInputChange={(input) => setValue2(input)}
              options={skaterNames}
              placeholder="Skater 2"
              minLength={1}
              ref={typeaheadRef2}
              value={value2}
            />
          </Col>
        </Row>
        <br />
        <Row>
          <Col>
            <Button className="form-button" variant="primary" type="submit">
              Compare
            </Button>
            <Button className="form-button" variant="danger" onClick={clearBar}>
              Clear
            </Button>
          </Col>
        </Row>
      </Form>
      {showCharts && (
        <div>
          <Chart skater1Name={value1} skater2Name={value2} />
        </div>
      )}
    </div>
  );
}

export default Compare;
