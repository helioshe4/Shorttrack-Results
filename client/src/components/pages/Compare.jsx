import React, { useState, useEffect, useRef } from "react";

import Form from "react-bootstrap/Form";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import Dropdown from "react-bootstrap/Dropdown";
import { Typeahead } from "react-bootstrap-typeahead";

import Navbar from "../Navbar";
import Chart from "../Chart";

import "../stylingComponents/Compare.css";

function Compare() {
  const [skaters, setSkaters] = useState([]); //list of skaters
  const [value1, setValue1] = useState(""); //skater1 in the search bar
  const [value2, setValue2] = useState(""); //skater2 in the search bar
  const [distance, setDistance] = useState("");
  const [showCharts, setShowCharts] = useState(false);
  const maxSkaters = 5; //max number of skaters in dropdown
  const typeaheadRef1 = useRef();
  const typeaheadRef2 = useRef();

  useEffect(() => {
    const getSkaters = async () => {
      try {
        const response = await fetch("http://localhost:5000/skaters");
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
    setShowCharts(true);

    if (distance === "All") {
      setDistance(["500", "1000", "1500"]);
    } else if (distance === "") {
      setDistance([]); // Set an empty array when distance is empty
    } else {
      setDistance([distance]);
    }
  };

  const handleDistanceChange = (e) => {
    setDistance(e.target.value);
  };

  const clearBar = () => {
    setValue1("");
    setValue2("");
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
              onChange={(selected) => setValue1(selected[0])}
              onInputChange={(input) => setValue1(input)}
              options={skaterNames.slice(0, maxSkaters)}
              placeholder="Skater 1"
              minLength={2}
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
              options={skaterNames.slice(0, maxSkaters)}
              placeholder="Skater 2"
              minLength={2}
              ref={typeaheadRef2}
              value={value2}
            />
          </Col>
          {/* <Col>
            <Form.Select
              aria-label="select distance"
              value={distance}
              onChange={handleDistanceChange}
            >
              <option>Select a distance</option>
              <option value="500">500m</option>
              <option value="1000">1000m</option>
              <option value="1500">1500m</option>
              <option value="All">All</option>
            </Form.Select>
          </Col> */}
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
        <Chart skater1Name={value1} skater2Name={value2} />
      )}
    </div>
  );
}

export default Compare;
