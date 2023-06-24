import { useState, useEffect, useRef } from "react";
import EditSkater from "./EditSkater";

import Table from "react-bootstrap/Table";
import { Typeahead } from "react-bootstrap-typeahead";

import "./stylingComponents/SearchSkater.css";

export default function SearchSkater() {
  const [value, setValue] = useState(""); //value in the search bar
  const [skaters, setSkaters] = useState([]); //list of skaters
  const [tableSkaters, setTableSkaters] = useState([]); //list of skaters to show after searching
  const [showTable, setShowTable] = useState(false); //to show or not show table
  const [showDropdown, setShowDropdown] = useState(true); //the dropdown list of skaters while you search
  const [successMessage, setSuccessMessage] = useState(""); //message after deleting skater
  const [failureMessage, setFailureMessage] = useState("");
  const [currentPage, setCurrentPage] = useState(1); // current page number
  const skatersPerPage = 5; // number of skaters to display per page

  const typeaheadRef = useRef();

  useEffect(() => {
    document.addEventListener("click", clearMessages);

    return () => {
      document.removeEventListener("click", clearMessages);
    };
  }, []);

  const clearMessages = () => {
    setSuccessMessage("");
    setFailureMessage("");
  };

  const deleteSkater = async (id) => {
    try {
      const response500 = await fetch(
        `http://localhost:5000/results_500/${id}`,
        {
          method: "DELETE",
        }
      );

      const response1000 = await fetch(
        `http://localhost:5000/results_1000/${id}`,
        {
          method: "DELETE",
        }
      );

      const response1500 = await fetch(
        `http://localhost:5000/results_1500/${id}`,
        {
          method: "DELETE",
        }
      );

      const responseSkater = await fetch(
        `http://localhost:5000/skaters/${id}`,
        {
          method: "DELETE",
        }
      );

      if (
        responseSkater.status === 200 &&
        response500.status === 200 &&
        response1000.status === 200 &&
        response1500.status === 200
      ) {
        setFailureMessage("");
        setSuccessMessage(`Successfully deleted!`);

        setSkaters(
          skaters.filter((skater) => skater.skater_id !== parseInt(id))
        );
        setTableSkaters(
          tableSkaters.filter((skater) => skater.skater_id !== parseInt(id))
        );
      } else {
        setSuccessMessage("");
        setFailureMessage("Something went wrong! Try again please.");
      }
    } catch (err) {
      console.error(`error: ${err.message}`);
    }
  };

  const clearBar = () => {
    setValue("");
    setShowTable(false);
    typeaheadRef.current.clear();
  };

  // const onChange = (e) => {
  //   setValue(e.target.value);
  //   setShowDropdown(true);
  // };

  const getSkaters = async () => {
    try {
      const response = await fetch("http://localhost:5000/skaters");
      const jsonData = await response.json();

      const sortedSkaters = jsonData.sort((a, b) =>
        a.skater_name.localeCompare(b.skater_name)
      ); // Sort skaters alphabetically by name

      //console.log(jsonData);
      setSkaters(sortedSkaters);
    } catch (err) {
      console.error(err.message);
    }
  };

  useEffect(() => {
    getSkaters();
  }, []);

  const performSearch = () => {
    const searchTerm = value.toLowerCase();
    const filteredSkaters = skaters.filter((skater) =>
      skater.skater_name.toLowerCase().includes(searchTerm)
    );

    setTableSkaters(filteredSkaters.slice(0, 10));
    setShowTable(true);
    setShowDropdown(false);
  };

  const handleSearchClick = () => {
    if (value !== "") {
      performSearch();
    }
  };

  const handleShowAllClick = () => {
    setCurrentPage(1);
    setTableSkaters(skaters.slice(0, skatersPerPage));
    setShowTable(true);
    setShowDropdown(false);
  };

  const handleNextPageClick = () => {
    const nextPage = currentPage + 1;
    const startIndex = (nextPage - 1) * skatersPerPage;
    const endIndex = startIndex + skatersPerPage;
    setCurrentPage(nextPage);
    setTableSkaters(skaters.slice(startIndex, endIndex));
  };

  const handlePreviousPageClick = () => {
    const previousPage = currentPage - 1;
    const startIndex = (previousPage - 1) * skatersPerPage;
    const endIndex = startIndex + skatersPerPage;
    setCurrentPage(previousPage);
    setTableSkaters(skaters.slice(startIndex, endIndex));
  };

  return (
    <div className="searchSkater">
      <h1>Search for a Skater</h1>

      <div className="search-container">
        <div className="search-inner">
          <div className="typeahead-container">
            <Typeahead
              id="typeahead-skater"
              labelKey="skater"
              onChange={(selected) => setValue(selected[0])} //selected from dropdown
              onInputChange={(input) => setValue(input)} //input box
              options={skaters.map((skater) => skater.skater_name)}
              placeholder="Skater Name"
              minLength={1}
              ref={typeaheadRef}
              value={value}
            />
          </div>
          <div className="button-container">
            <button
              type="button"
              onClick={handleSearchClick}
              className="btn btn-primary"
            >
              Search
            </button>
            <button type="button" onClick={clearBar} className="btn btn-danger">
              Clear
            </button>
            <button
              type="button"
              onClick={handleShowAllClick}
              className="btn btn-secondary"
            >
              Show All
            </button>
          </div>
        </div>

        {showTable && (
          <>
            <Table
              striped
              bordered
              hover
              className="table mt-5 text-center table-header-spacing"
            >
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tbody>
                {tableSkaters
                  .sort((a, b) => a.skater_name.localeCompare(b.skater_name))
                  .map((skater) => (
                    <tr key={skater.skater_id}>
                      <td>{skater.skater_name}</td>
                      <td>
                        <EditSkater skater={skater} />
                      </td>
                      <td>
                        <button
                          className="btn btn-danger"
                          onClick={() => deleteSkater(skater.skater_id)}
                        >
                          Delete
                        </button>
                      </td>
                    </tr>
                  ))}
              </tbody>
            </Table>

            <div className="pagination-buttons">
              <button
                type="button"
                onClick={handlePreviousPageClick}
                className="btn btn-secondary"
                disabled={currentPage === 1}
              >
                Previous Page
              </button>
              <button
                type="button"
                onClick={handleNextPageClick}
                className="btn btn-secondary"
                disabled={tableSkaters.length < skatersPerPage}
              >
                Next Page
              </button>
            </div>
          </>
        )}
      </div>

      {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
    </div>
  );
}
