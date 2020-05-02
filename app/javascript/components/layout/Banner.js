import React from "react"
import PropTypes from "prop-types"
class Banner extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className="banner">
          <h1>{this.props.text}</h1>
        </div>
      </React.Fragment>
    );
  }
}

Banner.propTypes = {
  text: PropTypes.string
};
export default Banner
