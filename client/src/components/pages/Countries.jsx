import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Table from "react-bootstrap/Table";
import Navbar from "../Navbar";
import Button from "react-bootstrap/Button";
import { getCode } from "iso-3166-1-alpha-2";

import "../stylingComponents/Countries.css";

function Countries() {
  const [countries, setCountries] = useState([]);
  const [column1, column2] = populateTableColumns(countries);
  const navigate = useNavigate();

  // function convertToCountryCode(countryName) {
  //   const country = countryList.getCode('Canada');
  //   return country ? country.code : "UNKNOWN";
  // }

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

  return (
    <>
      <Navbar />

      <Table borderless hover>
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
                        alt={country.name}
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
                            alt={column2[index].name}
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
    </>
  );
}

export default Countries;
