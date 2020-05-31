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
            <a id="home" className="menu-item" href="/"><i className="fas fa-home"></i>Home</a>
            <a id="explorer" className="menu-item" href="/explorer"><i className="fas fa-map-marked-alt"></i>Explorer</a>
            <a id="stables" className="menu-item" href="/stables"><i className="fas fa-store-alt"></i>Stables</a>
            <a id="stables" className="menu-item" href="/sumos"><i className="fas fa-id-badge"></i>Sumo</a>
            <a id="wiki" className="menu-item" href="/terms"><i className="fas fa-book"></i>Wiki</a>
            <a id="about" className="menu-item" href="/about"><i className="fas fa-info-circle"></i>About</a>
          </Menu>
        </div>

        <img src={sumoLogo} id="navbar-sumoLogo"/>
        <h1 id="navbar-sumoCity">SumoCity</h1>

        <div id="desktop-navbar">
          <ul>
            <li><a href='/'><i className="fas fa-home fa-2x"></i><p>Home</p></a></li>
            <li><a href='/explorer'><i className="fas fa-map-marked-alt fa-2x"></i><p>Explorer</p></a></li>
            <li><a href='/stables'><i className="fas fa-store-alt fa-2x"></i><p>Stables</p></a></li>
            <li><a href='/sumos'><i className="fas fa-id-badge fa-2x"></i><p>Sumo</p></a></li>
            <li><a href='/terms'><i className="fas fa-book fa-2x"></i><p>Wiki</p></a></li>
            <li><a href='/about'><i className="fas fa-info-circle fa-2x"></i><p>About</p></a></li>
          </ul>
        </div>
      </nav>
    )
  }
}

export default Navbar
