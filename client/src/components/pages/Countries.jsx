import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Table from "react-bootstrap/Table";
import Navbar from "../Navbar";
import Button from "react-bootstrap/Button";

import "../stylingComponents/Athletes.css";

function Countries() {
  const [countries, setCountries] = useState([]);
  const [column1, column2] = populateTableColumns(countries);
  const navigate  = useNavigate();

  useEffect(() => {
    const getCountries = async () => {
      try {
        const response = await fetch("http://localhost:5000/countries");
        const jsonData = await response.json();
        const countryNames = jsonData.map((country) => country.country);
        setCountries(countryNames);
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

  return (
    <>
      <Navbar />

      <Table borderless hover>
        <thead>
          <tr>
            <th colSpan={2}>
              <h1>Countries</h1>
            </th>
          </tr>
        </thead>
        <tbody>
          {column1.map((country, index) => (
            <tr key={index}>
              <td>
                <Button variant="light" onClick={handleClick}>
                  {country}
                </Button>
              </td>
              <td>
                {column2[index] ? (
                  <Button variant="light" onClick={handleClick}>
                    {column2[index]}
                  </Button>
                ) : (
                  ""
                )}
              </td>
            </tr>
          ))}
        </tbody>
      </Table>
    </>
  );
}

export default Countries;
