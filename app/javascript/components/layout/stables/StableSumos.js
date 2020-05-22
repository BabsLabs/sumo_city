import React from "react"
import PropTypes from "prop-types"

class StableSumos extends React.Component {
  
  loadSumos = () => {
    return this.props.sumos.map(sumo => {
      return (
        <div key={sumo.id} className="sumo" id={"sumo-" + sumo.id}>
          <h3><a href={"/sumos/" + sumo.id}>{sumo.name}</a></h3>
          <p>Rank: {sumo.rank}</p>
        </div>
      )
    })
  }

  render () {
    return (
      <div className="sumo-list">
        <h2>{this.props.stableName}'s Top Sumo:</h2>
        {this.loadSumos()} 
      </div>
    );
  }
}

StableSumos.propTypes = {
  sumos: PropTypes.array,
  stableName: PropTypes.string
};

export default StableSumos
