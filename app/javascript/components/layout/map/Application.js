import React from "react"
import PropTypes from "prop-types"
import ReactDOM from 'react-dom';
import mapboxgl from 'mapbox-gl';

mapboxgl.accessToken = process.env.MAPBOX_KEY;

class Application extends React.Component {
  componentDidMount()
  {
    this.map = new mapboxgl.Map({
      container: this.mapContainer,
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [-104.9966, 39.7508],
      zoom: 19
    });
  }

  render () {
    return (
      <div style={{
        height: '84.5%',
        position: 'absolute',
        top: '20px',
        bottom: '0',
        margin: 'auto',
        width: '100%'
      }} ref={el => this.mapContainer = el} />
    )
  }

}

export default Application

ReactDOM.render(<Application />, document.getElementById('map'));
