import React from "react"
import PropTypes from "prop-types"
class Sumo extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className="sumo" id={"sumo-" + this.props.sumo.id}>
          <p>Ring Name(s): {this.props.sumo.ring_name}</p>
          <p>Heya: {this.props.sumo.heya}</p>
          <p>Rank: {this.props.sumo.rank}</p> 
          <p>Date of Birth: {this.props.sumo.date_of_birth}, {this.props.sumo.year_of_birth}</p>
          <p>Place of Birth: {this.props.sumo.place_of_birth}</p>
          <p>Height: {this.props.sumo.height}</p>
          <p>Weight: {this.props.sumo.weight}</p>
        </div>
      </React.Fragment>
    );
  }
}

Sumo.propTypes = {
  sumo: PropTypes.object
};
export default Sumo
