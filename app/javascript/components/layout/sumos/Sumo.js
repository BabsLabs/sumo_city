import React from "react"
import PropTypes from "prop-types"
import placeHolderImage from "../../images/SumoLogo.png"
class Sumo extends React.Component {
  render () {
    return (
      <div className="hero">
        <div id={"card-" + this.props.sumo.id} className="card">
          <img src={placeHolderImage} alt="" style={{
            "border": "20px solid" + this.props.stable.hexcolor,
            "padding": "5px"
          }}/>
        </div>
        <div className="heroText" id={"sumo-" + this.props.sumo.id}>
          <p>Ring Name(s): {this.props.sumo.ring_name}</p>
          <p>Heya (Stable): <a href={"/stables/" + this.props.stable.id}>{this.props.stable.title}</a></p>
          <p>Rank: {this.props.sumo.rank}</p> 
          <p>Date of Birth: {this.props.sumo.date_of_birth}, {this.props.sumo.year_of_birth}</p>
          <p>Place of Birth: {this.props.sumo.place_of_birth}</p>
          <p>Height: {this.props.sumo.height}</p>
          <p>Weight: {this.props.sumo.weight}</p>
        </div>
      </div>
    );
  }
}

Sumo.propTypes = {
  sumo: PropTypes.object,
  stable: PropTypes.object
};
export default Sumo
