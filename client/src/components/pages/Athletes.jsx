import React, { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";
import Navbar from "../Navbar";
import Table from "react-bootstrap/Table";
import Button from "react-bootstrap/esm/Button";

import styles from "../stylingComponents/Athletes.module.css";

function Athletes() {
  const { country } = useParams();
  const navigate = useNavigate();

  const [maleAthletes, setMaleAthletes] = useState([]);
  const [femaleAthletes, setFemaleAthletes] = useState([]);
  const [nullAthletes, setNullAthletes] = useState([]);

  useEffect(() => {
    const getMaleAthletes = async () => {
      try {
        const response = await fetch(
          `http://localhost:5000/countries/${country}/Male`
        );
        const jsonData = await response.json();
        console.log(jsonData);
        setMaleAthletes(jsonData);
      } catch (err) {
        console.error(`Error fetching countries: ${err.message}`);
      }
    };

    const getFemaleAthletes = async () => {
      try {
        const response = await fetch(
          `http://localhost:5000/countries/${country}/Female`
        );
        const jsonData = await response.json();
        console.log(jsonData);
        setFemaleAthletes(jsonData);
      } catch (err) {
        console.error(`Error fetching countries: ${err.message}`);
      }
    };

    const getNullAthletes = async () => {
      try {
        const response = await fetch(
          `http://localhost:5000/countries/${country}/null`
        );
        const jsonData = await response.json();
        console.log(jsonData);
        setNullAthletes(jsonData);
      } catch (err) {
        console.error(`Error fetching countries: ${err.message}`);
      }
    };
    getMaleAthletes();
    getFemaleAthletes();
    getNullAthletes();
  }, []);

  const handleBack = () => {
    navigate("/athletes");
  };

  return (
    <div className={styles.athletesContainer}>
      <Navbar />
      <br />
      <Button variant="dark" onClick={handleBack}>
        Back
      </Button>

      <h1>{country}</h1>

      <Table borderless hover>
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
            <tr key={index}>
              <td>{athlete.skater_name}</td>
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
            <tr key={index}>
              <td>{athlete.skater_name}</td>
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
            <tr key={index}>
              <td>{athlete.skater_name}</td>
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
