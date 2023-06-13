import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/esm/Table";

import "./stylingComponents/SearchResults.css";

const SearchResults = ({ searchQuery, selectedCheckboxes }) => {
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

        for (let i = 0; i < sortedSkaters.length; i++) {
          console.log(sortedSkaters[i].skater_name);
        }
        setFilteredSkaters(sortedSkaters);
      } catch (err) {
        console.error(`Error fetching skaters: ${err.message}`);
      }
    };
    filterSkaters();
  }, [searchQuery, skaters]);

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
