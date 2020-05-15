import React from "react"
import DemoMapboxImage from "../../images/DemoMapboxImage"
import Mapbox from "../map/Mapbox";

class HeroStableExplorer extends React.Component {
  render() {
    return (
      <div className="hero" id="heroStableExplorer">
          <section className="heroMap">
            <Mapbox geojson_features={this.props.geojson_features} className="homepageMap"/>
          </section>
          <section className="heroText">
            <h1>Stable Explorer</h1>
            <p>The place where Sumos train is called a Stable.</p>
            <p>Use the interactive Stable Explorer to learn more about the stables of all your favorite sumo wrestlers.</p>
          </section>
      </div>
    )
  }
}

export default HeroStableExplorer
