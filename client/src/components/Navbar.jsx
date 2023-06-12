import React from "react";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import BootstrapNavbar from "react-bootstrap/Navbar";

function Navbar() {
  return (
    <>
      <BootstrapNavbar bg="dark" variant="dark">
        <Container>
          <BootstrapNavbar.Brand href="/">Welcome!</BootstrapNavbar.Brand>
          <Nav className="me-auto">
            <Nav.Link href="/">Home</Nav.Link>
            <Nav.Link href="/athletes">Athletes</Nav.Link>
            <Nav.Link href="/compare">Compare</Nav.Link>
            <Nav.Link href="/login">Login</Nav.Link>
          </Nav>
        </Container>
      </BootstrapNavbar>
      <br />
    </>
  );
}

export default Navbar;
