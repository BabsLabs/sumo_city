import React from "react"
import PropTypes from "prop-types"

class HeroSumo extends React.Component {
  render() {
    return (
      <div className="grid-wrapper" id="hero-sumo">
        <section className="flex-center centered-text">
          <h2>Professional sumo wrestlers are also known as Rikishi (力士).</h2>
          <p>Visit the <a href="/sumos">Sumo page</a> to learn more about all your favorite sumo wrestlers.</p>
        </section>
        <section className="hero-image">
            <div>
              <section className="flex-center">
                <a href={"/sumos/" + this.props.sumo.id}>
                  <img src={this.props.profile_photo} alt="featured sumo photo" className="profile-photo" style={{ "border": "20px solid" + this.props.stable.hexcolor }}/>
                </a>
              </section>
              <section className="flex-center">
                <h2>Featured Sumo</h2>
                <p>{this.props.sumo.name}</p>
              </section>
            </div>
        </section>
      </div>
    )
  }
}

HeroSumo.propTypes = {
  sumo: PropTypes.object,
  stable: PropTypes.object,
  profile_photo: PropTypes.string
};

export default HeroSumo
