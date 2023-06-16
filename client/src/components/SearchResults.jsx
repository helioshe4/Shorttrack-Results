import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/esm/Table";

import "./stylingComponents/SearchResults.css";

const SearchResults = ({ searchQuery, selectedCheckboxes, selectedAge }) => {
  const [skaters, setSkaters] = useState([]);
  const [filteredSkaters, setFilteredSkaters] = useState([]);

  useEffect(() => {
    const getSkaters = async () => {
      try {
        const response = await fetch("http://localhost:5000/skaters");
        const jsonData = await response.json();
        setSkaters(jsonData);
      } catch (err) {
        console.error(`Error fetching skaters: ${err.message}`);
      }
    };
    getSkaters();
  }, []);

  useEffect(() => {
    const filterSkaters = async () => {
      try {
        const sortedSkaters = skaters
          .filter((skater) =>
            skater.skater_name.toLowerCase().includes(searchQuery.toLowerCase())
          )
          .filter((skater) => {
            if (selectedCheckboxes.length === 0) {
              return true; // Return all skaters if no gender filters are selected
            }
            return selectedCheckboxes.includes(skater.gender); // Filter skaters based on selected genders
          })
          .filter((skater) => {
            if (!selectedAge || selectedAge === "Age Group") {
              return true; // Return all skaters if no age group is selected
            }
            const skaterAgeGroup = getAgeGroup(skater.dob);
            console.log(skaterAgeGroup);
            return skaterAgeGroup === selectedAge; // Filter skaters based on selected age group
          })
          .sort((a, b) => {
            // Handle empty or null country values
            const countryA = a.country ? a.country.trim() : "";
            const countryB = b.country ? b.country.trim() : "";

            if (countryA === "" && countryB === "") {
              return a.skater_name.localeCompare(b.skater_name); // Sort by name if both countries are empty or null
            }
            if (countryA === "") return 1; // Move a to the end if its country is empty or null
            if (countryB === "") return -1; // Move b to the end if its country is empty or null

            // Sort by country, then by name
            if (countryA !== countryB) {
              return countryA.localeCompare(countryB); // Sort by country if they are different
            }
            return a.skater_name.localeCompare(b.skater_name); // Sort by name if countries are the same
          });
        setFilteredSkaters(sortedSkaters);
      } catch (err) {
        console.error(`Error fetching skaters: ${err.message}`);
      }
    };
    filterSkaters();
  }, [searchQuery, selectedCheckboxes, selectedAge, skaters]);

  const getAgeGroup = (dob) => {
    if (dob === null || dob === "") {
      return "Other";
    }
    const currentDate = new Date();
    const birthDate = new Date(dob);

    let age = currentDate.getFullYear() - birthDate.getFullYear();
    console.log(`age: ${age}`);

    // Check if the skater's birthday has occurred this year
    const currentMonth = currentDate.getMonth();
    const birthMonth = birthDate.getMonth();
    const currentDay = currentDate.getDate();
    const birthDay = birthDate.getDate();

    if (
      birthMonth > 6 ||
      (birthMonth === 6 && currentDate.getDate() < birthDate.getDate())
    ) {
      age--; // Reduce the age by 1 if the birthday is after June 30th
    }

    console.log(`Age: ${age}`);

    if (age > 18) {
      return "Senior";
    } else if (age === 18) {
      return "Junior A2 (18)";
    } else if (age === 17) {
      return "Junior A1 (17)";
    } else if (age === 16) {
      return "Junior B2 (16)";
    } else if (age === 15) {
      return "Junior B1 (15)";
    } else if (age === 14) {
      return "Junior C1 (14)";
    } else if (age === 13) {
      return "Junior C2 (13)";
    } else if (age === 12) {
      return "Junior D1 (12)";
    } else if (age === 11) {
      return "Junior D2 (11)";
    } else {
      return "Other";
    }
  };

  return (
    <>
      <Table borderless className="search-result-table">
        <thead>
          <tr>
            <th>Name</th>
            <th>Country</th>
            <th>DOB</th>
            {/* Add more table headers as needed */}
          </tr>
        </thead>
        <tbody>
          {filteredSkaters.map((skater) => (
            <tr key={skater.skater_id}>
              <td>{skater.skater_name}</td>
              <td>{skater.country}</td>
              <td>{skater.dob ? skater.dob.substring(0, 10) : ""}</td>
              {/* Add more table cells as needed */}
            </tr>
          ))}
        </tbody>
      </Table>
    </>
  );
};

export default SearchResults;
