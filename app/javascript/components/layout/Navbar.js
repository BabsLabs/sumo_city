import React from "react"
import sumoLogo from "../images/SumoLogo"
import { bubble as Menu } from 'react-burger-menu'

class Navbar extends React.Component {
  showSettings(event) {
    event.preventDefault();
  }

  render () {

    
    return (
      <nav className="navbar">
        <div id="hamburger-menu">
          <Menu>
            <a id="home" className="menu-item" href="/">Home</a>
            <a id="explorer" className="menu-item" href="/explorer">Explorer</a>
            <a id="wiki" className="menu-item" href="/terms">Wiki</a>
            <a id="about" className="menu-item" href="/about">About</a>
            <a id="stables" className="menu-item" href="/stables">Stables</a>
          </Menu>
        </div>

        <img src={sumoLogo} id="navbar-sumoLogo"/>
        <h1 id="navbar-sumoCity">SumoCity</h1>

        <div id="desktop-navbar">
          <ul>
            <li>
              <a href='/'>Home</a>
            </li>
            <li>
              <a href='/explorer'>Explorer</a>
            </li>
            <li>
              <a href='/terms'>Wiki</a>
            </li>
            <li>
              <a href='/about'>About</a>
            </li>
            <li>
              <a href='/stables'>Stables</a>
            </li>
          </ul>
        </div>
      </nav>
    )
  }
}

export default Navbar
