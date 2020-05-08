import React from "react"
import PropTypes from "prop-types"
import ReactDOM from 'react-dom'
import mapboxgl from 'mapbox-gl'

mapboxgl.accessToken = process.env.MAPBOX_KEY;

class Map extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      lng: 139.8394,
      lat: 35.6528,
      zoom: 6
    };
  }

  componentDidMount()
  {
    this.map = new mapboxgl.Map({
      container: this.mapContainer,
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [this.state.lng, this.state.lat],
      zoom: this.state.zoom
    });
    this.map.on('move', () => {
      this.setState({
        lng: this.map.getCenter().lng.toFixed(4),
        lat: this.map.getCenter().lat.toFixed(4),
        zoom: this.map.getZoom().toFixed(2)
      });
    });
  }

  render () {
    return (
      <div>
        {/* Coordinate display */}
        <div style={{
          display: 'inline-block',
          position: 'absolute',
          top: '70px',
          left: '0',
          margin: '12px',
          backgroundColor: '#404040',
          color: '#ffffff',
          zIndex: '1',
          padding: '6px',
          fontWeight: 'bold'}}>
          <div>Longitude: {this.state.lng} | Latitude: {this.state.lat} | Zoom: {this.state.zoom}</div>
        </div>
        {/* Map display */}
        <div style={{
          height: '84.5%',
          position: 'absolute',
          top: '20px',
          bottom: '0',
          margin: 'auto',
          width: '100%'
        }} ref={el => this.mapContainer = el} />
      </div>
    )
  }

}

export default Map

ReactDOM.render(<Map />, document.getElementById('map'));
