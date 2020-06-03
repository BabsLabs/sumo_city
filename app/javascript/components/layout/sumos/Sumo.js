import React from "react"
import PropTypes from "prop-types"
import CustomSumoLogo from "../../images/CustomSumoLogo"

class Sumo extends React.Component {

  CheckForProfilePhoto() {
    const profile_photo = this.props.profile_photo
    if (profile_photo) {
      return (
        <img src={this.props.profile_photo} alt={this.props.sumo.name + "profile photo"} className="profile-photo" style={{ "border": "20px solid" + this.props.stable.hexcolor }} />
      )
    }
    return (
      <img src={CustomSumoLogo} alt="palceholder profile photo" className="profile-photo" style={{ "border": "20px solid" + this.props.stable.hexcolor }} />
    )
  }

  render () {
    return (
      <div className="grid-wrapper">
        <div className="flex-center">
          {this.CheckForProfilePhoto()}
        </div>
        <div className="flex-center" id={"sumo-" + this.props.sumo.id}>
          <h3>{this.props.sumo.name}'s Stats</h3>
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
  stable: PropTypes.object,
  profile_photo: PropTypes.string
};

export default Sumo