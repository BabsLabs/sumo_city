import React from "react"
import DemoMapboxImage from "../../images/DemoMapboxImage"

class HeroFindStable extends React.Component {
  render() {
    return (
      <div className="hero heroFindStable">
          <section className="heroText">
            <h1>Stable Explorer</h1>
            <p>The place where Sumos train is called a Stable.</p>
            <p>Use the interactive Stable Explorer to learn more about the stables of all your favorite sumo wrestlers.</p>
          </section>
          <section className="heroImage">
            <img src={DemoMapboxImage} alt="MapboxImage"/>
          </section>
      </div>
    )
  }
}

export default HeroFindStable
