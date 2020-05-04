import React from "react"
import PropTypes from "prop-types"
import ReactDOM from 'react-dom';
import mapboxgl from 'mapbox-gl';

mapboxgl.accessToken = 'pk.eyJ1IjoiYmFic2xhYnMiLCJhIjoiY2s4bHM1N2psMGJydTNsbjJmazk1ZDV4cyJ9.Cbx2hJteIro3S_hV480UVQ';

class Application extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      lng: 5,
      lat: 34,
      zoom: 2
    };
  }

  render () {
    return (
      <div>
        <div ref={el => this.mapContainer = el} className="mapContainer" />
      </div>
    )
  }

  componentDidMount() {
    const map = new mapboxgl.Map({
      container: this.mapContainer,
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [this.state.lng, this.state.lat],
      zoom: this.state.zoom
    });
  }
}

export default Application

ReactDOM.render(<Application />, document.getElementById('app'));
