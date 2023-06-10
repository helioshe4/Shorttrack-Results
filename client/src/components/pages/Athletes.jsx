import React, { useState, useEffect } from "react";
import { json, useParams } from "react-router-dom";
import Navbar from "../Navbar";

function Athletes() {
  const { country } = useParams();

  const [athletes, setAthletes] = useState([]);

  useEffect(() => {
    const getAthletes = async () => {
      try {
        const response = await fetch(`http://localhost:5000/countries/${country}`);
        const jsonData = await response.json();
        console.log(jsonData);
        setAthletes(jsonData);
      } catch (err) {
        console.error(`Error fetching countries: ${err.message}`);
      }
    };
    getAthletes();
  }, []);


  return (
    <>
      <Navbar />
      <h1>Country: {country}</h1>
      <h1>Athletes page</h1>
    </>
  );
}
export default Athletes;
