import React from "react"
import Mapbox from "../map/Mapbox"
import PropTypes, { object } from "prop-types"
import 'mapbox-gl/dist/mapbox-gl.css';

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

class Stable extends React.Component {
  render() {

    const stable = this.props.selectedMarker;

    return (
      <div className="hero">
          <div className="heroText">
            <div id={'stable-' + stable.id} className="stable">
              <hr className={"colorbar-" + stable.hexcolor} style={{
                "display": "block",
                "height": "1px",
                "border": "0",
                "borderTop": "5px solid",
                "borderColor": stable.hexcolor,
                "margin": "1em 0",
                "padding": "0",
              }}></hr>
              <h3>Address: {stable.address}</h3>
              <h3>{stable.address_jp}</h3>
              <p>Website: <a href={stable.website}>{stable.website}</a></p>
              <p>Phone: {stable.phone}</p>
              <p>Ichimon: {stable.ichimon}</p>
              <p>Founded: {stable.founded}</p>
              <p>Closest Stations: {stable.closest_stations}</p>
              <p>Other Info: {capitalizeFirstLetter(stable.other_info)}</p>
            </div>
          </div>
          <div className="stableMap">
            <Mapbox geojson_features={this.props.geojson_features} 
                    stables={this.props.stables} 
                    height={this.props.height} 
                    width={this.props.width} 
                    selectedMarker={this.props.selectedMarker} 
                    className="homepageMap"/>
          </div>
      </div>
    )
  }
}

Stable.propTypes = {
  geojson_features: PropTypes.array,
  stables: PropTypes.array,
  selectedMarker: object
}

export default Stable

