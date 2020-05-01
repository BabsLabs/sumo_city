import React from "react"
import PropTypes from "prop-types"
class Term extends React.Component {
  render () {
    return (
        <div id={ `term-${this.props.term.id}` } className="term">
          <h3>{ this.props.term.english_name } { this.props.term.japanese_name }</h3>
          <p>{ this.props.term.definition }</p >
        </div>
    );
  }
}

Term.propTypes = {
  term: PropTypes.object
};
export default Term
