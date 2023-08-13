import React, { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";
import Table from "react-bootstrap/Table";
import Button from "react-bootstrap/esm/Button";

import Navbar from "../Navbar";
import NoPage from "./NoPage";

import styles from "../stylingComponents/Athletes.module.css";

// Athletes Component
// This component fetches and displays a list of athletes from a specific country.
// It categorizes athletes by gender and provides a button to navigate to each athlete's bio.
// Note: not what renders under the 'Athletes' tab in the navbar, that's Countries.jsx,
//       this is what renders after you select a country in Countries.jsx
function Athletes() {
  const { country } = useParams();
  const navigate = useNavigate();

  const [countries, setCountries] = useState([]);
  const [countryExists, setCountryExists] = useState(true); // Track if country exists
  const [maleAthletes, setMaleAthletes] = useState([]);
  const [femaleAthletes, setFemaleAthletes] = useState([]);
  const [nullAthletes, setNullAthletes] = useState([]);

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

  useEffect(() => {
    const fetchData = async (gender) => {
      try {
        const response = await fetch(
          `http://localhost:5000/countries/${country}/${gender}`
        );
        const jsonData = await response.json();

        if (gender === "Male") {
          setMaleAthletes(jsonData);
        } else if (gender === "Female") {
          setFemaleAthletes(jsonData);
        } else {
          setNullAthletes(jsonData);
        }
      } catch (err) {
        console.error(`Error fetching athletes: ${err.message}`);
      }
    };

    if (
      countries.length > 0 &&
      !countries.includes(country) &&
      country !== "UNKNOWN"
    ) {
      setCountryExists(false); // Update the state variable if country doesn't exist
    } else {
      fetchData("Male");
      fetchData("Female");
      fetchData("null");
    }
  }, [country, countries]);

  if (!countryExists) {
    return <NoPage />; // Render NoPage component if country doesn't exist
  }

  const handleBack = () => {
    navigate("/athletes");
    //navigate(-1);
  };

  function handleClick(e, skater_id) {
    e.preventDefault();
    navigate(`/skaterbio/${skater_id}`);
  }

  return (
    <div className={styles.athletesContainer}>
      <Navbar />
      <br />
      <Button variant="dark" onClick={handleBack}>
        Back
      </Button>

      <h1>{country}</h1>

      <Table borderless hover>
        <colgroup>
          <col style={{ width: "30%" }} />
          <col style={{ width: "30%" }} />
          <col style={{ width: "30%" }} />
        </colgroup>
        <thead>
          <tr>
            <th className={styles.headerCell}>Name</th>
            <th className={styles.headerCell}>Region</th>
            <th className={styles.headerCell}>Date of Birth</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td colSpan={3}>
              <strong>Men</strong>
            </td>
          </tr>
          {maleAthletes.map((athlete, index) => (
            <tr key={athlete.skater_id}>
              <td>
                <Button
                  variant="light"
                  onClick={(e) => handleClick(e, athlete.skater_id)}
                >
                  {athlete.skater_name}
                </Button>
              </td>
              <td>{athlete.region}</td>
              <td>{athlete.dob ? athlete.dob.substring(0, 10) : ""}</td>
            </tr>
          ))}
          <tr>
            <td colSpan={3}>
              <strong>Women</strong>
            </td>
          </tr>
          {femaleAthletes.map((athlete, index) => (
            <tr key={athlete.skater_id}>
              <td>
                <Button
                  variant="light"
                  onClick={(e) => handleClick(e, athlete.skater_id)}
                >
                  {athlete.skater_name}
                </Button>
              </td>
              <td>{athlete.region}</td>
              <td>{athlete.dob ? athlete.dob.substring(0, 10) : ""}</td>
            </tr>
          ))}
          <tr>
            <td colSpan={3}>
              <strong>No Gender</strong>
            </td>
          </tr>
          {nullAthletes.map((athlete, index) => (
            <tr key={athlete.skater_id}>
              <td>
                <Button
                  variant="light"
                  onClick={(e) => handleClick(e, athlete.skater_id)}
                >
                  {athlete.skater_name}
                </Button>
              </td>
              <td>{athlete.region}</td>
              <td>{athlete.dob ? athlete.dob.substring(0, 10) : ""}</td>
            </tr>
          ))}
        </tbody>
      </Table>
    </div>
  );
}

export default Athletes;
