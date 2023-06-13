import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { getCode } from "iso-3166-1-alpha-2";

import Table from "react-bootstrap/Table";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Container from "react-bootstrap/esm/Container";
import Row from "react-bootstrap/esm/Row";
import Col from "react-bootstrap/esm/Col";

import Navbar from "../Navbar";
import SearchResults from "../SearchResults";

import "../stylingComponents/Countries.css";

function Countries() {
  const [countries, setCountries] = useState([]);
  const [column1, column2] = populateTableColumns(countries);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedCheckboxes, setSelectedCheckboxes] = useState([]);
  const [searchResultsVisible, setSearchResultsVisible] = useState(false);

  const navigate = useNavigate();

  useEffect(() => {
    const getCountries = async () => {
      try {
        const response = await fetch("http://localhost:5000/countries");
        const jsonData = await response.json();

        let countryData = await jsonData.map((country) => ({
          name: country.country,
          code: getCode(country.country), // Convert country name to country code
        }));

        countryData.push({ name: "UNKNOWN", code: "UNKNOWN" }); // ensures it's the last element
        setCountries(countryData);
      } catch (err) {
        console.error(`Error fetching countries: ${err.message}`);
      }
    };
    getCountries();
  }, []);

  function populateTableColumns() {
    const numRows = Math.ceil(countries.length / 2);
    const column1 = [];
    const column2 = [];

    countries.forEach((country, index) => {
      if (index < numRows) {
        column1.push(country);
      } else {
        column2.push(country);
      }
    });

    return [column1, column2];
  }

  function handleClick(e) {
    e.preventDefault();
    const country = e.target.textContent;
    navigate(`/athletes/${country}`);
  }

  const handleQueryChange = (e) => {
    setSearchQuery(e.target.value);
  };

  const handleCheckboxChange = (e) => {
    const checkboxValue = e.target.value;
    if (e.target.checked) {
      setSelectedCheckboxes((prevCheckboxes) => [
        ...prevCheckboxes,
        checkboxValue,
      ]);
    } else {
      setSelectedCheckboxes((prevCheckboxes) =>
        prevCheckboxes.filter((checkbox) => checkbox !== checkboxValue)
      );
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    if (searchQuery.trim() === "" && selectedCheckboxes.length === 0) {
      setSearchResultsVisible(false);
    } else {
      setSearchResultsVisible(true);
      // Perform search and update the searchResults state
      // Example:
    }
  };

  const handleClear = () => {
    setSearchResultsVisible(false);
  };

  return (
    <>
      <Navbar />

      <div className="wrapper-container">
        <Table borderless hover className="country-table">
          <thead>
            <tr>
              <th colSpan={2}>
                <h1>Search by Country</h1>
              </th>
            </tr>
          </thead>
          <tbody>
            {column1.map((country, index) => (
              <tr key={index}>
                <td>
                  <Button variant="light" onClick={handleClick}>
                    <span style={{ display: "flex", alignItems: "center" }}>
                      {country.code !== "UNKNOWN" && country.code !== null && (
                        <img
                          src={`https://flagsapi.com/${country.code}/flat/16.png`}
                          alt=""
                          style={{ marginRight: "5px" }}
                        />
                      )}
                      {country.name}
                    </span>
                  </Button>
                </td>
                <td>
                  {column2[index] ? (
                    <Button variant="light" onClick={handleClick}>
                      <span style={{ display: "flex", alignItems: "center" }}>
                        {column2[index].code !== "UNKNOWN" &&
                          column2[index].code !== null && (
                            <img
                              src={`https://flagsapi.com/${column2[index].code}/flat/16.png`}
                              alt=""
                              style={{ marginRight: "5px" }}
                            />
                          )}
                        {column2[index].name}
                      </span>
                    </Button>
                  ) : (
                    ""
                  )}
                </td>
              </tr>
            ))}
          </tbody>
        </Table>

        <Table borderless className="search-table">
          <thead>
            <tr>
              <th colSpan={2}>
                <h1>Search by Name</h1>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colSpan={2}>
                <Form onSubmit={handleSubmit}>
                  <Form.Group className="mb-3">
                    <Form.Label>Name</Form.Label>
                    <Form.Control
                      placeholder="First Last"
                      onChange={handleQueryChange}
                    />
                  </Form.Group>
                  <br />

                  <Form.Group className="mb-3" controlId="formBasicCheckbox">
                    <Form.Label>Select Filters</Form.Label>
                    <div className="checkbox-group">
                      <Form.Check
                        type="checkbox"
                        label="Check me out"
                        value="checkbox1"
                        onChange={handleCheckboxChange}
                      />
                      <Form.Check
                        type="checkbox"
                        label="Check me out"
                        value="checkbox2"
                        onChange={handleCheckboxChange}
                      />
                      <Form.Check
                        type="checkbox"
                        label="Check me out"
                        value="checkbox3"
                        onChange={handleCheckboxChange}
                      />
                      <Form.Check
                        type="checkbox"
                        label="Check me out"
                        value="checkbox4"
                        onChange={handleCheckboxChange}
                      />
                    </div>
                  </Form.Group>
                  <Button variant="primary" type="submit">
                    Search
                  </Button>
                  <Button variant="danger" type="reset" onClick={handleClear}>
                    Clear
                  </Button>
                </Form>
              </td>
            </tr>
            {searchResultsVisible && (
              <tr>
                <td colSpan={2}>
                  <div className="search-results-container">
                    <SearchResults
                      searchQuery={searchQuery}
                      selectedCheckboxes={selectedCheckboxes}
                    />
                  </div>
                </td>
              </tr>
            )}
          </tbody>
        </Table>
      </div>
    </>
  );
}

export default Countries;
