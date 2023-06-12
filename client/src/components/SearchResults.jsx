import React, { useState, useEffect } from "react";
import Table from "react-bootstrap/esm/Table";

const SearchResults = ({ searchQuery, selectedCheckboxes }) => {
  const [skaters, setSkaters] = useState([]);

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

  return (
    <>
      <Table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Country</th>
            <th>Age</th>
            {/* Add more table headers as needed */}
          </tr>
        </thead>
        <tbody>
          {skaters.map((skater) => (
            <tr key={skater.id}>
              <td>{skater.name}</td>
              <td>{skater.country}</td>
              <td>{skater.age}</td>
              {/* Add more table cells as needed */}
            </tr>
          ))}
        </tbody>
      </Table>
    </>
  );
};

export default SearchResults;
