import React from "react"
import customSumoLogo from "../images/CustomSumoLogo"
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
            <a id="mobile-nav-home" className="menu-item" href="/"><i className="fas fa-home"></i>Home</a>
            <a id="mobile-nav-explorer" className="menu-item" href="/explorer"><i className="fas fa-map-marked-alt"></i>Explorer</a>
            <a id="mobile-nav-stables" className="menu-item" href="/stables"><i className="fas fa-store-alt"></i>Stables</a>
            <a id="mobile-nav-stables" className="menu-item" href="/sumos"><i className="fas fa-id-badge"></i>Sumo</a>
            <a id="mobile-nav-wiki" className="menu-item" href="/terms"><i className="fas fa-book"></i>Wiki</a>
            <a id="mobile-nav-about" className="menu-item" href="/about"><i className="fas fa-info-circle"></i>About</a>
          </Menu>
        </div>
      
        <img src={customSumoLogo} id="navbar-sumoLogo" />
        <h1 id="navbar-sumoCity">SumoCity</h1>

        <div id="desktop-navbar">
          <ul>
            <li><a href='/'><i className="fas fa-home fa-lg"></i><p>Home</p></a></li>
            <li><a href='/explorer'><i className="fas fa-map-marked-alt fa-lg"></i><p>Explorer</p></a></li>
            <li><a href='/stables'><i className="fas fa-store-alt fa-lg"></i><p>Stables</p></a></li>
            <li><a href='/sumos'><i className="fas fa-id-badge fa-lg"></i><p>Sumo</p></a></li>
            <li><a href='/terms'><i className="fas fa-book fa-lg"></i><p>Wiki</p></a></li>
            <li><a href='/about'><i className="fas fa-info-circle fa-lg"></i><p>About</p></a></li>
          </ul>
        </div>
      </nav>
    )
  }
}

export default Navbar
