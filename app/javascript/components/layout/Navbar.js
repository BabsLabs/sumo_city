import React from "react"
import PropTypes from "prop-types"

class Navbar extends React.Component {
  render () {
    return (
        <nav className="navbar">
          <h2>LOGO</h2>
          <h1>SumoCity</h1>
          <ul>
            <li>
              Home
            </li>
            <li>
              About
            </li>
          </ul>
        </nav>
    );
  }
}

export default Navbar
