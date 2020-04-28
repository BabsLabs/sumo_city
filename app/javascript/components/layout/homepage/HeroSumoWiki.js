import React from "react"
import PropTypes from "prop-types"

class HeroSumoWiki extends React.Component {
  render() {
    return (
      <React.Fragment>
        <div className="hero" id="heroSumoWiki">
          <section className="heroText">
            <h1>Learn More About Everything Sumo</h1>
            <p>Use our Sumo Wiki to learn more about the rules, history, and vocab of Sumo.</p>
          </section>
          <section className="heroText">
            <h1>Featured Term</h1>
            <h3>{this.props.term.english_name}</h3>
            <h4>{this.props.term.japanese_name}</h4>
            <p>{this.props.term.definition}</p>
          </section>
        </div>
      </React.Fragment>
    )
  }
}

HeroSumoWiki.propTypes = {
  term: PropTypes.string
};

export default HeroSumoWiki
