import { useState, useEffect } from "react";
import "../styling/searchSkater.css";

export default function SearchSkater() {
  const [value, setValue] = useState("");
  const [skaters, setSkaters] = useState([]);

  const onChange = (e) => {
    setValue(e.target.value);
  };

  const onSearch = (searchTerm) => {
    setValue(searchTerm);
    //api to fetch the search result
    console.log("search ", searchTerm);
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

  return (
    <div className="searchSkater">
      <h1>Search</h1>

      <div className="search-container">
        <div className="search-inner">
          <input type="text" value={value} onChange={onChange} />
          <button onClick={() => onSearch(value)}> Search </button>
        </div>
        <div className="dropdown">
          {skaters
            .filter((skater) => {
              const searchTerm = value.toLowerCase();
              const fullName = skater.skater_name.toLowerCase();

              return (
                searchTerm &&
                fullName.includes(searchTerm) &&
                fullName !== searchTerm
              );
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
      </div>
    </div>
  );
}
