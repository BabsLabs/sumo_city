import React from 'react'
import ReactMapboxGl, { Marker, GeoJSONLayer, Popup } from 'react-mapbox-gl'
import { Component } from 'react'
import stableLogo from '../../images/SumoLogo.png'

const Map = ReactMapboxGl({
  accessToken: process.env.MAPBOX_KEY
});

// const geojson = {
//   type: 'FeatureCollection',
//   features: [{
//     type: 'Feature',
//     geometry: {
//       type: 'Point',
//       coordinates: [139.825096, 35.715732]
//     },
//     properties: {
//       title: 'Mapbox',
//       description: 'Washington, D.C.',
//       icon: 'monument'
//     }
//   }]
// };

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
    return (
      <Map
        style="mapbox://styles/mapbox/streets-v11"
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
        <Marker
          coordinates={[139.825096, 35.715732]}
          anchor="bottom"
          // onClick={() => event_to_take_place_on_click }
          >
          <img src={stableLogo} style={{ height: "35px", backgroundColor: "mediumPurple", borderRadius: "3px" }} />
        </Marker>
        <Popup
          coordinates={[139.825096, 35.715732]}
          offset={{
            'bottom-left': [12, -38], 'bottom': [0, -38], 'bottom-right': [-12, -38]
          }}
          >
          <h2>Miyagino stable</h2>
        </Popup>
        {/* <GeoJSONLayer
          data={geojson}
          symbolLayout={{
            "text-field": "{place}",
            "text-font": ["Open Sans Bold", "Arial Unicode MS Bold"],
            "text-offset": [0, 0.6],
            "text-anchor": "top",
            'text-color': 'red'
          }}
          symbolPaint = {{
            'text-color': 'red'
          }}
          circleLayout={{
            "visibility": 'visible'
          }}
          circlePaint={{
            'circle-color': 'red'
          }} */}
          />
      </Map>
    )
  }
}

export default Mapbox