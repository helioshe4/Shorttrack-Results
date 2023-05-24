import React from "react";
import { BrowserRouter, Route, Link } from "react-router-dom";

function Homebar() {
  return (
    <nav>
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
      </ul>
    </nav>
  );
}

export default Homebar;