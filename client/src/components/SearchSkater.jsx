import { useState, useEffect } from "react";
import "../styling/searchSkater.css";
import EditSkater from "./EditSkater";

export default function SearchSkater() {
  const [value, setValue] = useState(""); //value in the search bar
  const [skaters, setSkaters] = useState([]); //list of skaters
  const [tableSkaters, setTableSkaters] = useState([]); //list of skaters to show after searching
  const [showTable, setShowTable] = useState(false); //to show or not show table
  const [showDropdown, setShowDropdown] = useState(true); //the dropdown list of skaters while you search
  const [successMessage, setSuccessMessage] = useState(""); //message after deleting skater
  const [failureMessage, setFailureMessage] = useState("");

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
      const response = await fetch(`http://localhost:5000/skaters/${id}`, {
        method: "DELETE",
      });

      if (response.status === 200) {
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
      console.error(err.message);
    }
  };

  const clearBar = () => {
    setValue("");
    setShowTable(false);
  };

  const onChange = (e) => {
    setValue(e.target.value);
    setShowDropdown(true);
  };

  const getSkaters = async () => {
    try {
      const response = await fetch("http://localhost:5000/skaters");
      const jsonData = await response.json();

      console.log(response);
      setSkaters(jsonData);
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

  const onSearch = (skater_name) => {
    setValue(skater_name);

    const filteredSkaters = skaters.filter(
      (skater) => skater.skater_name === skater_name
    );

    setTableSkaters(filteredSkaters); //dont need to slice should be one value
    setShowTable(true);
    setShowDropdown(false);
  };

  const handleSearchClick = () => {
    //onSearch(value);

    if (value !== "") { //ensures user has box input
      performSearch();
    }
  };

  return (
    <div className="searchSkater">
      <h1>Search for a Skater</h1>

      <div className="search-container">
        <div className="search-inner">
          <input type="text" value={value} onChange={onChange} />
          <button onClick={handleSearchClick}> Search </button>
          <button type="button" onClick={clearBar} className="btn btn-danger">
            Clear
          </button>
        </div>

        <div className="dropdown">
          {showDropdown &&
            skaters
              .filter((skater) => {
                const searchTerm = value.toLowerCase();
                const fullName = skater.skater_name.toLowerCase();

                return searchTerm && fullName.includes(searchTerm);
              })
              .slice(0, 10) //renders only first 10 elements
              .map((skater) => (
                <div
                  onClick={() => onSearch(skater.skater_name)}
                  className="dropdown-row"
                  key={skater.skater_id}
                >
                  {skater.skater_name}
                </div>
              ))}
        </div>

        {showTable && (
          <table className="table mt-5 text-center table-header-spacing">
            <thead>
              <tr>
                <th>Name</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              {tableSkaters.map((skater) => (
                <tr key={skater.skater_id}>
                  <td>{skater.skater_name}</td>
                  <td>
                    {/* <button className="btn"> */}
                    <EditSkater skater={skater} />
                    {/* </button> */}
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
          </table>
        )}
      </div>

      {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
      {failureMessage && <p style={{ color: "red" }}>{failureMessage}</p>}
    </div>
  );
}
