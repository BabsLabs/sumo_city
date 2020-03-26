import React from "react"
import PropTypes from "prop-types"
class Welcome extends React.Component {
  render () {
    return (
      <React.Fragment>
        {this.props.greeting}
      </React.Fragment>
    );
  }
}

Welcome.defaultProps = {
  greeting: "Welcome to my Sumo City app made with React on Rails!"
}

Welcome.propTypes = {
  greeting: PropTypes.string
};
export default Welcome
