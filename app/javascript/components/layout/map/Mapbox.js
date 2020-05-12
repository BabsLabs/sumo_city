import React from 'react'
import ReactMapboxGl, { Marker, GeoJSONLayer, Popup } from 'react-mapbox-gl'
import { Component } from 'react'
import stableLogo from '../../images/SumoLogo.png'
import stableGeoJSON from '../../../../../db/data/stableGeoJSON';

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
        <GeoJSONLayer
          data={stableGeoJSON}
          circleLayout={{
            "visibility": 'visible'
          }}
          circlePaint={{
            // color circles by stable title, using a match expression
            // https://docs.mapbox.com/mapbox-gl-js/style-spec/#expressions-match
            'circle-color':
                          [
                          'match',
                ['get', 'title'],
                          'Miyagino',
                          '#fbb03b',
                          'Arashio-beya',
                          '#223b53',
                          /* other */ '#ccc'
                          ],
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

export default Mapbox