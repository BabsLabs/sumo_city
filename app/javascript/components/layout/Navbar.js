import React from "react"
import sumoLogo from "../images/SumoLogo"

class Navbar extends React.Component {
  render () {
    return (
        <nav className="navbar">
          <img src={sumoLogo} id="navbar-sumoLogo"/>
          <h1 id="navbar-sumoCity">SumoCity</h1>
          <ul>
            <li>
              <a href='/'>Home</a>
            </li>
            <li>
              <a href='/about'>About</a>
            </li>
          </ul>
        </nav>
    )
  }
}

export default Navbar
