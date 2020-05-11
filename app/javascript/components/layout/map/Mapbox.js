import React from 'react'
import ReactMapboxGl, { Layer, Feature } from 'react-mapbox-gl';
import { Component } from 'react';

const token = process.env.MAPBOX_KEY

const Map = ReactMapboxGl({
  accessToken: token
});

class Mapbox extends Component {
  
  constructor(props) {
    super(props);
    this.state = {
      lng: 139.8394,
      lat: 35.6528,
      zoom: 6
    };
  }

render() {
  return (
    <Map
      style="mapbox://styles/mapbox/streets-v11"
      containerStyle={{
        height: '84.5vh',
        width: '100vw'
      }}
      center={[this.state.lng, this.state.lat]}
      zoom={[this.state.zoom]}
    >
      <Layer type="symbol" id="marker" layout={{ 'icon-image': 'marker-15' }}>
        <Feature coordinates={[this.state.lng, this.state.lat]} />
      </Layer>
    </Map>
  )
  }
}

export default Mapbox