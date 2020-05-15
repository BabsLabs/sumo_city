import React from "react"
import PropTypes from "prop-types"
import babsLabsLogo from "../images/babslabs-monkey-logo-no-bg"
class Footer extends React.Component {
  render () {
    return (
        <footer className="footer">
          <p>BabsLabs Software 2020</p>
          <img src={babsLabsLogo} id="babslabs-logo" alt="babslabs monkey logo"/>
        </footer>
    );
  }
}

export default Footer
