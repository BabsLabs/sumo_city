import React, { Component } from 'react'
import PropTypes from "prop-types"
import customSumoMarker from "../../images/CustomSumoMarker.png"
import 'mapbox-gl/dist/mapbox-gl.css';
import MapGL, { Marker, Popup, Source, Layer } from '@urbica/react-map-gl';

class Mapbox extends React.Component {
    state = {
      viewport : {
        latitude: 35.6528,
        longitude: 139.8394,
        zoom: 8
      },
      selectedMarker: null
    }
  
  loadStables = () => {
    return this.props.stables.map(stable => {
      return (
        <Marker
          key={stable.title}
          latitude={stable.lat}
          longitude={stable.lon}>
          <img src={customSumoMarker} 
            style={{
              "height": "30px",
              "borderRadius": "50%",
              "backgroundColor": stable.hexcolor
            }}
            className="custom-marker" 
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
      viewport: {
        latitude: object.lat,
        longitude: object.lon,
        zoom: 15
      }
    });
  };

  closePopup = () => {
    this.setState({
      selectedMarker: null
    });
  };

  checkForMarker = () => {
    if (this.props.selectedMarker) {
      this.setSelectedMarker(this.props.selectedMarker)
      this.closePopup()
    } else {
      {this.state.selectedMarker === null}
    }
  }

  
  render() {
    const mapbox_geojson_data = {
      type: 'FeatureCollection',
      features: this.props.geojson_features
    };

    return (
      <MapGL
        style={{ width: this.props.width, height: this.props.height }}
        mapStyle='mapbox://styles/mapbox/light-v10?optimize=true'
        accessToken={process.env.MAPBOX_ACCESS_TOKEN}
        latitude={this.state.viewport.latitude}
        longitude={this.state.viewport.longitude}
        zoom={this.state.viewport.zoom}
        onViewportChange={viewport => this.setState({ viewport })}
        {...this.state.viewport}
        maxBounds={
          [[127.5571, 30.5969], // Southwest coordinates
          [151.6734, 46.4156]] // Northeast coordinates;
        }
        minZoom={5}
        maxZoom={18}
        viewportChangeMethod={"flyTo"}
        onClick={this.closePopup}
        onLoad={this.checkForMarker}
        > 
        {this.loadStables()}
        {this.state.selectedMarker !== null ? (
          <Popup
            style={{ borderTop: "5px solid", borderColor: this.state.selectedMarker.hexcolor }}
            latitude={this.state.selectedMarker.lat}
            longitude={this.state.selectedMarker.lon}
            offset={{
              'bottom-left': [12, -38], 'bottom': [0, -38], 'bottom-right': [-12, -38]
            }}>
            <hr style={{
              "display": "block",
              "height": "1px",
              "border": "0",
              "borderTop": "5px solid",
              "borderColor": this.state.selectedMarker.hexcolor,
              "margin": "1em 0",
              "padding": "0",
              }}></hr>
            <h1>{this.state.selectedMarker.title}</h1>
            <p>Address: {this.state.selectedMarker.address}</p>
            <p>{this.state.selectedMarker.address_jp}</p>
            <p>Founded: {this.state.selectedMarker.founded}</p>
            <p>Ichimon: {this.state.selectedMarker.ichimon}</p>
            <p>Website: {this.state.selectedMarker.website}</p>
            <p><a href={"/stables/" + this.state.selectedMarker.id}>More Info</a></p>
          </Popup>
        ) : null}
        <Source id='stables' type='geojson' data={mapbox_geojson_data} />
        <Layer
          id='stables'
          type='symbol'
          source='stables'
          layout={{
            "text-field": "{title}",
            "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
            "text-offset": [0, 0.6],
            "text-anchor": "top",
          }}
        />
        </MapGL>
    )
  }
}


Mapbox.propTypes = {
  geojson_features: PropTypes.array,
  stables: PropTypes.array,
  height: PropTypes.string,
  width: PropTypes.string,
  selectedMarker: PropTypes.object
};

export default Mapbox