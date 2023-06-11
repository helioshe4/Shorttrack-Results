import React from "react";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Image from "react-bootstrap/Image";

import logoImage from "../images/Shorttrack.png";
import "./stylingComponents/Banner.css";

function Banner() {
  return (
    <>
      <Image src={logoImage} fluid rounded className="banner-image"/>
    </>
  );
}

export default Banner;
