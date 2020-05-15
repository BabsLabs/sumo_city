import React, { Component } from 'react'
import PropTypes from "prop-types"
import ReactMapboxGl, { GeoJSONLayer } from 'react-mapbox-gl'

const Map = ReactMapboxGl({
  accessToken: process.env.MAPBOX_KEY
});

class Mapbox extends Component {
  
  constructor(props) {
    super(props);
    this.state = {
      /* Note: Coordinates must be in longitude, latitude coordinate order (as opposed to latitude, longitude) 
      to match GeoJSON (source: https://www.mapbox.com/mapbox-gl-js/api/#lnglat). */
      lng: 139.8394,
      lat: 35.6528,
      zoom: 8
    };
  }

  render() {
    
    const mapbox_geojson = {
      type: 'FeatureCollection',
      features: this.props.geojson_features
    };

    return (
      <Map
        style="mapbox://styles/mapbox/light-v10"
        containerStyle={{
          height: '85.5vh',
          width: '100vw'
        }}
        center={[this.state.lng, this.state.lat]}
        zoom={[this.state.zoom]}
        maxBounds={
          [[127.5571, 30.5969], // Southwest coordinates
            [151.6734, 46.4156]] // Northeast coordinates;
        }
      >
        <GeoJSONLayer
          data={mapbox_geojson}
          symbolLayout={{
            "text-field": "{title}",
            "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
            "text-offset": [0, 0.6],
            "text-anchor": "top",
          }}
          circleLayout={{
            "visibility": 'visible'
          }}
          circlePaint={{
            // color circles by stable title, using a match expression
            // https://docs.mapbox.com/mapbox-gl-js/style-spec/#expressions-match
            'circle-color': ['get', 'color'],
            // make circles larger as the user zooms from z12 to z22
            'circle-radius': {
                          'base': 6,
                          'stops': [
                            [12, 7],
                            [22, 180]
                          ]
          }}}
          />
      </Map>
    )
  }
}

Mapbox.propTypes = {
  geojson_features: PropTypes.array
};

export default Mapbox