import React from "react"
import Mapbox from "../map/Mapbox"
import PropTypes from "prop-types"
import 'mapbox-gl/dist/mapbox-gl.css';

class HeroExplorer extends React.Component {
  render() {
    return (
      <div className="grid-wrapper" id="hero-explorer">
        <div className="flex-center">
            <h2>SumoCity Explorer</h2>
            <p>Use the interactive <a href="/explorer">SumoCity Explorer</a> to learn more about the stables of all your favorite sumo wrestlers.</p>
          </div>
          <div id="hero-map">
            <Mapbox geojson_features={this.props.geojson_features} stables={this.props.stables} height={this.props.height} width={this.props.width} className="homepageMap"/>
          </div>
      </div>
    )
  }
}

HeroExplorer.propTypes = {
  geojson_features: PropTypes.array,
  stables: PropTypes.array
}

export default HeroExplorer
