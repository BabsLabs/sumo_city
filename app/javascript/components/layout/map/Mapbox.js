import React, { Component } from 'react'
import PropTypes from "prop-types"
import ReactMapboxGl, { GeoJSONLayer, Marker, Popup } from 'react-mapbox-gl'
import sumoMarker from "../../images/SumoMarker.png"

const Map = ReactMapboxGl({
  minZoom: 5,
  maxZoom: 18,
  accessToken: process.env.MAPBOX_ACCESS_TOKEN
});


class Mapbox extends React.Component {
    state = {
      stables: this.props.stables,
      selectedMarker: null,
      lat: 35.6528,
      lon: 139.8394,
      zoom: 8
    }
  
  loadStables = () => {
    return this.state.stables.map(stable => {
      return (
        <Marker
          key={stable.title}
          coordinates={[stable.lon, stable.lat]}
          anchor="bottom">
          <img src={sumoMarker} style={{
            "height": "30px",
            "borderRadius": "50%",
            "backgroundColor": stable.hexcolor
          }}
          onClick={() => {
            this.setSelectedMarker(stable)
          }} />
        </Marker>
      )
    })
  };

  setSelectedMarker = object => {
    this.setState({
      selectedMarker: object,
      lon: object.lon,
      lat: object.lat,
      zoom: 15
    });
  };

  closePopup = () => {
    this.setState({
      selectedMarker: null
    });
  };

  
  render() {
    const mapbox_geojson_data = {
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
        center={[this.state.lon, this.state.lat]}
        zoom={[this.state.zoom]}
        maxBounds={
          [[127.5571, 30.5969], // Southwest coordinates
          [151.6734, 46.4156]] // Northeast coordinates;
        }
        onClick={this.closePopup}
      > 
        {this.loadStables()}
        {this.state.selectedMarker !== null ? (
          <Popup
            style={{ borderTop: "5px solid", borderColor: this.state.selectedMarker.hexcolor }}
            coordinates={[this.state.selectedMarker.lon, this.state.selectedMarker.lat]}
            offset={{
              'bottom-left': [12, -38], 'bottom': [0, -38], 'bottom-right': [-12, -38]
            }}>
            <h1>{this.state.selectedMarker.title}</h1>
            <p>Address: {this.state.selectedMarker.address}</p>
            <p>{this.state.selectedMarker.address_jp}</p>
            <p>Founded: {this.state.selectedMarker.founded}</p>
            <p>Ichimon: {this.state.selectedMarker.ichimon}</p>
            <p>Website: {this.state.selectedMarker.website}</p>
          </Popup>
        ) : null}
        <GeoJSONLayer
          data={mapbox_geojson_data}
          symbolLayout={{
            "text-field": "{title}",
            "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
            "text-offset": [0, 0.6],
            "text-anchor": "top",
          }}
        />
        </Map>
    )
  }
}

Mapbox.propTypes = {
  geojson_features: PropTypes.array,
  stables: PropTypes.array
};

export default Mapbox