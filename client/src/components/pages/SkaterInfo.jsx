import React, { useState, useEffect } from "react";
import { json, useNavigate, useParams } from "react-router-dom";
import Button from "react-bootstrap/esm/Button";
import Table from "react-bootstrap/esm/Table";

import Navbar from "../Navbar";
import NoPage from "./NoPage";

import styles from "../stylingComponents/SkaterInfo.module.css";

function SkaterInfo() {
  const { skater_id } = useParams();
  const navigate = useNavigate();

  const [skaterExists, setSkaterExists] = useState(true);
  const [skater, setSkater] = useState({});
  const [results, setResults] = useState({});

  useEffect(() => {
    const getSkater = async () => {
      try {
        const response = await fetch(
          `http://localhost:5000/skaters/${skater_id}`
        );
        const jsonData = await response.json();
        setSkater(jsonData);
      } catch (err) {
        setSkaterExists(false);
        console.error(`Error fetching skater: ${err.message}`);
      }
    };
    getSkater();
  }, [skater_id]);

  if (!skaterExists) {
    return <NoPage />;
  }

  const handleBack = () => {
    navigate("/athletes");
  };

  return (
    <div className={styles.skaterinfoContainer}>
      <Navbar />
      <br />
      <Button variant="dark" onClick={handleBack}>
        Back
      </Button>

      <h1>{skater.skater_name}'s Information</h1>

      <Table borderless hover>
        <colgroup>
          <col style={{ width: "10%" }} />
          <col style={{ width: "35%" }} />
          <col style={{ width: "30%" }} />
          <col style={{ width: "45%" }} />
        </colgroup>
        <tbody>
          <tr>
            <td>
              <strong>Name</strong>
            </td>
            <td>{skater.skater_name}</td>
            <td>
              <strong>Date of Birth</strong>
            </td>
            <td>{skater.dob ? skater.dob.substring(0, 10) : "Unknown"}</td>
          </tr>
          <tr>
            <td>
              <strong>Gender</strong>
            </td>
            <td>{skater.gender ? skater.gender : "Unknown"}</td>
            <td>
              <strong>Home Club</strong>
            </td>
            <td>{skater.home_club ? skater.home_club : "Unknown"}</td>
          </tr>
          <tr>
            <td>
              <strong>Country</strong>
            </td>
            <td>{skater.country ? skater.country : "Unknown"}</td>
            <td>
              <strong>Region</strong>
            </td>
            <td>{skater.region ? skater.region : "Unknown"}</td>
          </tr>
        </tbody>
      </Table>

      <h2>Personal Bests</h2>
      <Table borderless hover >
        <colgroup>
          <col style={{ width: "35%" }} />
          <col style={{ width: "35%" }} />

        </colgroup>
        <thead>
          <tr>
            <th colSpan={4}>
              <strong>500m</strong>
            </th>
          </tr>
          <tr>
            <th>All Time Best</th>
            <th>Season Best</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>{skater.skater_name}</td>
            <td>{skater.dob ? skater.dob.substring(0, 10) : "Unknown"}</td>
          </tr>
          <tr>
            <td>{skater.gender ? skater.gender : "Unknown"}</td>
            <td>{skater.home_club ? skater.home_club : "Unknown"}</td>
          </tr>
          <tr>
            <td>{skater.country ? skater.country : "Unknown"}</td>
            <td>{skater.region ? skater.region : "Unknown"}</td>
          </tr>
        </tbody>
      </Table>
      <Table borderless hover>
        <colgroup>
          <col style={{ width: "10%" }} />
          <col style={{ width: "35%" }} />
          <col style={{ width: "30%" }} />
          <col style={{ width: "45%" }} />
        </colgroup>
        <tbody>
          <tr>
            <td colSpan={4}>
              <strong>1000m</strong>
            </td>
          </tr>
          <tr>
            <td>
              <strong>Name</strong>
            </td>
            <td>{skater.skater_name}</td>
            <td>
              <strong>Date of Birth</strong>
            </td>
            <td>{skater.dob ? skater.dob.substring(0, 10) : "Unknown"}</td>
          </tr>
          <tr>
            <td>
              <strong>Gender</strong>
            </td>
            <td>{skater.gender ? skater.gender : "Unknown"}</td>
            <td>
              <strong>Home Club</strong>
            </td>
            <td>{skater.home_club ? skater.home_club : "Unknown"}</td>
          </tr>
          <tr>
            <td>
              <strong>Country</strong>
            </td>
            <td>{skater.country ? skater.country : "Unknown"}</td>
            <td>
              <strong>Region</strong>
            </td>
            <td>{skater.region ? skater.region : "Unknown"}</td>
          </tr>
        </tbody>
      </Table>
      <Table borderless hover>
        <colgroup>
          <col style={{ width: "10%" }} />
          <col style={{ width: "35%" }} />
          <col style={{ width: "30%" }} />
          <col style={{ width: "45%" }} />
        </colgroup>
        <tbody>
          <tr>
            <td colSpan={4}>
              <strong>1500m</strong>
            </td>
          </tr>
          <tr>
            <td>
              <strong>Name</strong>
            </td>
            <td>{skater.skater_name}</td>
            <td>
              <strong>Date of Birth</strong>
            </td>
            <td>{skater.dob ? skater.dob.substring(0, 10) : "Unknown"}</td>
          </tr>
          <tr>
            <td>
              <strong>Gender</strong>
            </td>
            <td>{skater.gender ? skater.gender : "Unknown"}</td>
            <td>
              <strong>Home Club</strong>
            </td>
            <td>{skater.home_club ? skater.home_club : "Unknown"}</td>
          </tr>
          <tr>
            <td>
              <strong>Country</strong>
            </td>
            <td>{skater.country ? skater.country : "Unknown"}</td>
            <td>
              <strong>Region</strong>
            </td>
            <td>{skater.region ? skater.region : "Unknown"}</td>
          </tr>
        </tbody>
      </Table>
    </div>
  );
}

export default SkaterInfo;
