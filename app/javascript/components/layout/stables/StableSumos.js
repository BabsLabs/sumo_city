import React from "react"
import PropTypes from "prop-types"

class StableSumos extends React.Component {
  
  loadSumos = () => {
    return this.props.sumos.map(sumo => {
      return (
        <div key={sumo.id} className="sumo" id={"sumo-" + sumo.id}>
          <p><a href={"/sumos/" + sumo.id}>{sumo.name}</a></p>
          <p>{sumo.rank}</p>
        </div>
      )
    })
  }

  render () {
    return (
      <div className="sumo-list">
        <h2>This Stables Top Sumo:</h2>
        {this.loadSumos()} 
      </div>
    );
  }
}

StableSumos.propTypes = {
  sumos: PropTypes.array
};

export default StableSumos
