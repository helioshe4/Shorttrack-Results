import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { getCode } from "iso-3166-1-alpha-2";

import Table from "react-bootstrap/Table";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";

import Navbar from "../Navbar";
import SearchResults from "../SearchResults";

import "../stylingComponents/Countries.css";

// Countries Component
// This component fetches and displays a list of countries from a server.
// It allows users to search for athletes by country and provides a form for
// searching by name and applying filters.
function Countries() {
  const [countries, setCountries] = useState([]);
  const [column1, column2] = populateTableColumns(countries);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedCheckboxes, setSelectedCheckboxes] = useState([]);
  const [selectedAge, setSelectedAge] = useState("");
  const [searchResultsVisible, setSearchResultsVisible] = useState(false);

  const navigate = useNavigate();

  useEffect(() => {
    const getCountries = async () => {
      try {
        const response = await fetch("http://localhost:5000/countries");
        const jsonData = await response.json();

        let countryData = await jsonData.map((country) => {
          let code = getCode(country.country);

          if (country.country === "Czechia") {
            code = "cz";
          } else if (country.country === "Russia") {
            code = "ru";
          } else if (country.country === "Korea") {
            code = "kr";
          } else if (country.country === "Taiwan") {
            code = "tw";
          } else if (country.country === "North Korea") {
            code = "kp";
          }
          return {
            name: country.country,
            code: code ? code.toLowerCase() : null, // Convert country name to country code
          };
        });

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

  // useEffect(() => {
  //   console.log(selectedCheckboxes);
  // }, [selectedCheckboxes]);

  const handleSelect = (e) => {
    setSelectedAge(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    if (
      searchQuery.trim() === "" &&
      selectedCheckboxes.length === 0 &&
      selectedAge === ""
    ) {
      setSearchResultsVisible(false);
    } else {
      setSearchResultsVisible(true);
    }
  };

  const handleClear = () => {
    setSearchQuery("");
    setSelectedCheckboxes([]);
    setSelectedAge("");
    setSearchResultsVisible(false);
  };

  return (
    <>
      <Navbar />

      <div className="wrapper-container">
        <Table borderless hover className="country-table condensed-table">
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
                  <Button
                    variant="light"
                    onClick={handleClick}
                    className="text-nowrap"
                  >
                    <span style={{ display: "flex", alignItems: "center" }}>
                      {country.code !== "UNKNOWN" && country.code !== null && (
                        <img
                          src={require(`/src/src/images/country_flags/${country.code}.png`)}
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
                    <Button
                      variant="light"
                      onClick={handleClick}
                      className="text-nowrap"
                    >
                      <span style={{ display: "flex", alignItems: "center" }}>
                        {column2[index].code !== "UNKNOWN" &&
                          column2[index].code !== null && (
                            <img
                              src={require(`/src/src/images/country_flags/${column2[index].code}.png`)}
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
                      placeholder="Search by name ..."
                      onChange={handleQueryChange}
                    />
                  </Form.Group>

                  <Form.Group className="mb-3" controlId="formBasicCheckbox">
                    <Form.Label>Select Filters</Form.Label>
                    <div className="checkbox-group">
                      <Form.Check
                        type="checkbox"
                        label="Male"
                        value="Male"
                        onChange={handleCheckboxChange}
                      />
                      <Form.Check
                        type="checkbox"
                        label="Female"
                        value="Female"
                        onChange={handleCheckboxChange}
                      />
                      <Form.Select
                        className="form-select"
                        aria-label="Default select example"
                        onChange={handleSelect}
                      >
                        <option>Age Group</option>
                        <option value="Senior">Senior</option>
                        <option value="Junior A2 (18)">Junior A2 (18)</option>
                        <option value="Junior A1 (17)">Junior A1 (17)</option>
                        <option value="Junior B2 (16)">Junior B2 (16)</option>
                        <option value="Junior B1 (15)">Junior B1 (15)</option>
                        <option value="Junior C1 (14)">Junior C1 (14)</option>
                        <option value="Junior C2 (13)">Junior C2 (13)</option>
                        <option value="Junior D1 (12)">Junior D1 (12)</option>
                        <option value="Junior D2 (11)">Junior D2 (11)</option>
                        <option value="Other">Other</option>
                      </Form.Select>
                    </div>
                  </Form.Group>

                  <br />

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
                      selectedAge={selectedAge}
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
