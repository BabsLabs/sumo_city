import React from "react"
import Mapbox from "../map/Mapbox"
import PropTypes, { object } from "prop-types"
import 'mapbox-gl/dist/mapbox-gl.css';

class Stable extends React.Component {
  
  capitalizeFirstLetter = (string) => {
    return string.charAt(0).toUpperCase() + string.slice(1);
  }
  
  render() {

    const stable = this.props.selectedMarker;

    return (
      <div className="grid-wrapper">
        <div className="flex-center">
          <div id={'stable-' + stable.id}>
            <hr className={"colorbar-" + stable.hexcolor} style={{
              "display": "block",
              "height": "1px",
              "border": "0",
              "borderTop": "5px solid",
              "borderColor": stable.hexcolor,
              "margin": "1em 0",
              "padding": "0",
            }}></hr>
            <p>Address: {stable.address}</p>
            <p>{stable.address_jp}</p>
            <p>Website: <a href={stable.website}>{stable.website}</a></p>
            <p>Phone: {stable.phone}</p>
            <p>Ichimon: {stable.ichimon}</p>
            <p>Founded: {stable.founded}</p>
            <p>Closest Stations: {stable.closest_stations}</p>
            <p>Other Info: {this.capitalizeFirstLetter(stable.other_info)}</p>
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
  geojson_features: PropTypes.object,
  stables: PropTypes.array,
  selectedMarker: object
}

export default Stable

