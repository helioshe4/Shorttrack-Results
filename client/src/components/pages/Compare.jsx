import React, { useState, useEffect } from "react";

import Form from "react-bootstrap/Form";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import Dropdown from "react-bootstrap/Dropdown";
import { Typeahead } from "react-bootstrap-typeahead";

import Navbar from "../Navbar";

import "../stylingComponents/Compare.css";

function Compare() {
  const [skaters, setSkaters] = useState([]); //list of skaters
  const [value1, setValue1] = useState(""); //skater1 in the search bar
  const [value2, setValue2] = useState(""); //skater2 in the search bar
  const [dropdownSkaters, setDropdownSkaters] = useState([]); //list of skaters to show in dropdown
  const [showDropdown, setShowDropdown] = useState(false); //to show or not show dropdown
  const [singleSelections, setSingleSelections] = useState([]);
  const maxSkaters = 10; //max number of skaters in dropdown

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
  };

  const onSelect1 = async (skaterName) => {
    setValue1(skaterName);
  };

  const onChange1 = (e) => {
    setValue1(e.target.value);
    setShowDropdown(true);
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
            {/* <Form.Control
              placeholder="Skater 1"
              value={value1}
              onChange={onChange1}
            /> */}
            <Typeahead
              id="typeahead-skater1"
              labelKey="skater1"
              onChange={(selected) => setValue1(selected[0])}
              options={skaterNames.slice(0, maxSkaters)}
              placeholder="Skater 1"
              selected={singleSelections}
            />
            {/* {showDropdown && (
              <Dropdown className="dropdown-container">
                <Dropdown.Menu>
                  {skaters
                    .filter((skater) => {
                      const searchTerm = value1.toLowerCase();
                      const fullName = skater.skater_name.toLowerCase();

                      return searchTerm && fullName.includes(searchTerm);
                    })
                    .slice(0, maxSkaters)
                    .map((skater) => (
                      <Dropdown.Item
                        key={skater.skater_id}
                        onClick={() => onSelect1(skater.skater_name)}
                      >
                        {skater.skater_name}
                      </Dropdown.Item>
                    ))}
                </Dropdown.Menu>
              </Dropdown>
            )} */}
          </Col>
          <Col>
            <Form.Control placeholder="Skater 2" value={value2} />
          </Col>
          <Col>
            <Form.Select aria-label="Default select example">
              <option>Select a distance</option>
              <option value="500">500m</option>
              <option value="1000">1000m</option>
              <option value="1500">1500m</option>
              <option value="All">All</option>
            </Form.Select>
          </Col>
        </Row>
        <br />
        <Row>
          <Col>
            <Button variant="primary" type="submit">
              Compare
            </Button>
          </Col>
        </Row>
      </Form>
      {/* <div className="dropdown1">
        {showDropdown &&
          skaters
            .filter((skater) => {
              const searchTerm = value1.toLowerCase();
              const fullName = skater.skater_name.toLowerCase();

              return searchTerm && fullName.includes(searchTerm);
            })
            .slice(0, maxSkaters) //renders only first 10 elements
            .map((skater) => (
              <div
                onClick={() => onSelect1(skater.skater_name)}
                className="dropdown-row"
                key={skater.skater_id}
              >
                {skater.skater_name}
              </div>
            ))}
      </div> */}
    </div>
  );
}

export default Compare;
