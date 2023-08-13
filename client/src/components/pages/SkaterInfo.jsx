import React, { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";
import Button from "react-bootstrap/esm/Button";
import Table from "react-bootstrap/esm/Table";

import Navbar from "../Navbar";
import NoPage from "./NoPage";

import styles from "../stylingComponents/SkaterInfo.module.css";

// SkaterInfo Component
// This component fetches and displays a skater's information and personal bests.
// Rendered when you click on a skater's name in Athletes.jsx
function SkaterInfo() {
  const { skater_id } = useParams();
  const navigate = useNavigate();

  const [skaterExists, setSkaterExists] = useState(true);
  const [skater, setSkater] = useState({});
  const [results_500, setResults_500] = useState({});
  const [results_1000, setResults_1000] = useState({});
  const [results_1500, setResults_1500] = useState({});

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

  useEffect(() => {
    const fetchData = async (distance) => {
      try {
        const response = await fetch(
          `http://localhost:5000/results_${distance}/${skater_id}`
        );
        const jsonData = await response.json();

        if (distance === "500") {
          setResults_500(jsonData);
        } else if (distance === "1000") {
          setResults_1000(jsonData);
        } else {
          setResults_1500(jsonData);
        }
      } catch (err) {
        console.error(`Error fetching athletes: ${err.message}`);
      }
    };

    fetchData("500");
    fetchData("1000");
    fetchData("1500");
  }, [skater_id]);

  if (!skaterExists) {
    return <NoPage />;
  }

  const handleBack = () => {
    //navigate(`/athletes/${skater.country}`, { replace: true });
    navigate(-1);
  };

  return (
    <div className={styles.skaterinfoContainer}>
      <Navbar />
      <br />
      <Button variant="dark" onClick={handleBack}>
        Back
      </Button>

      <h1>{skater.skater_name}'s Information</h1>

      <Table borderless hover className={styles.skaterInfo}>
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
            <td>{skater.dob ? skater.dob.substring(0, 10) : "N/A"}</td>
          </tr>
          <tr>
            <td>
              <strong>Gender</strong>
            </td>
            <td>{skater.gender ? skater.gender : "N/A"}</td>
            <td>
              <strong>Home Club</strong>
            </td>
            <td>{skater.home_club ? skater.home_club : "N/A"}</td>
          </tr>
          <tr>
            <td>
              <strong>Country</strong>
            </td>
            <td>{skater.country ? skater.country : "N/A"}</td>
            <td>
              <strong>Region</strong>
            </td>
            <td>{skater.region ? skater.region : "N/A"}</td>
          </tr>
        </tbody>
      </Table>

      <h2>Personal Bests</h2>
      <div className={styles.tableContainer}>
        <Table borderless hover>
          <colgroup>
            <col style={{ width: "25%" }} />
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
              <td>{results_500.all_time_best ? results_500.all_time_best : "N/A"}</td>
              <td>{results_500.season_best ? results_500.season_best : "N/A"}</td>
            </tr>
            <tr>
              <td>{results_500.all_time_location ? results_500.all_time_location : "N/A"}</td>
              <td>{results_500.season_location ? results_500.season_location : "N/A"}</td>
            </tr>
            <tr>
              <td>{results_500.all_time_competition_name ? results_500.all_time_competition_name : "N/A"}</td>
              <td>{results_500.season_competition_name ? results_500.season_competition_name : "N/A"}</td>
            </tr>
          </tbody>
        </Table>
        <Table borderless hover>
          <colgroup>
            <col style={{ width: "25%" }} />
            <col style={{ width: "35%" }} />
          </colgroup>
          <thead>
            <tr>
              <th colSpan={4}>
                <strong>1000m</strong>
              </th>
            </tr>
            <tr>
              <th>All Time Best</th>
              <th>Season Best</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>{results_1000.all_time_best ? results_1000.all_time_best : "N/A"}</td>
              <td>{results_1000.season_best ? results_1000.season_best : "N/A"}</td>
            </tr>
            <tr>
              <td>{results_1000.all_time_location ? results_1000.all_time_location : "N/A"}</td>
              <td>{results_1000.season_location ? results_1000.season_location : "N/A"}</td>
            </tr>
            <tr>
              <td>{results_1000.all_time_competition_name ? results_1000.all_time_competition_name : "N/A"}</td>
              <td>{results_1000.season_competition_name ? results_1000.season_competition_name : "N/A"}</td>
            </tr>
          </tbody>
        </Table>
        <Table borderless hover>
          <colgroup>
            <col style={{ width: "25%" }} />
            <col style={{ width: "35%" }} />
          </colgroup>
          <thead>
            <tr>
              <th colSpan={4}>
                <strong>1500m</strong>
              </th>
            </tr>
            <tr>
              <th>All Time Best</th>
              <th>Season Best</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>{results_1500.all_time_best ? results_1500.all_time_best : "N/A"}</td>
              <td>{results_1500.season_best ? results_1500.season_best : "N/A"}</td>
            </tr>
            <tr>
              <td>{results_1500.all_time_location ? results_1500.all_time_location : "N/A"}</td>
              <td>{results_1500.season_location ? results_1500.season_location : "N/A"}</td>
            </tr>
            <tr>
              <td>{results_500.all_time_competition_name ? results_1500.all_time_competition_name : "N/A"}</td>
              <td>{results_1500.season_competition_name ? results_1500.season_competition_name : "N/A"}</td>
            </tr>
          </tbody>
        </Table>
      </div>
    </div>
  );
}

export default SkaterInfo;
