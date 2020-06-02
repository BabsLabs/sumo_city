import React from "react"
import customSumoLogo from "../images/CustomSumoLogo"

class About extends React.Component {
  render() {
    return (
      <div>
          <div id="about-image">
            <img src={customSumoLogo} />
          </div>
          <div id="about">
            <h2>What is SumoCity?</h2>
            <p>Sumo city is your homepage for all things Sumo!</p>
            <p>SumoCity is a project designed to provide information on the sport of Sumo Wrestling, Sumos, and the Stables the sumo train in.</p>
            <br/>
            <h2 >Photo credits</h2>
            <p>Photos used in sumo city are sourced from the following places:</p>
            <ul>
              <li><a href="https://commons.wikimedia.org/w/index.php?curid=89831658">By Giorgi Abdaladze, Official Photographer of the Administration of the President of Georgia - This file has been extracted from another file: Zourabichvili with Tochinoshin.jpg, CC BY-SA 4.0</a></li>
              <li><a href="https://commons.wikimedia.org/w/index.php?curid=87412646">By NNDDD - Own work, CC BY-SA 4.0</a></li>
              <li><a href="https://commons.wikimedia.org/wiki/User:FourTildes">By FourTildes - Own work, CC BY-SA 3.0</a></li>
              <li><a href="https://commons.wikimedia.org/w/index.php?curid=79055031">By Ogiyoshisan - Own work, CC BY-SA 4.0</a></li>
              <li><a href="https://commons.wikimedia.org/w/index.php?curid=23325046">By 山の山手線 - Own work, CC BY-SA 3.0</a></li>
              <li><a href="https://commons.wikimedia.org/w/index.php?curid=78934692">By WhiteMon at Japanese Wikipedia - Transferred from ja.wikipedia to Commons., Public Domain</a></li>
            </ul>
            <br/>
            <h2>Term Credits</h2>
            <p>The terms found on the SumoCity <a href="/terms">Wiki Page</a> have been sourced from <a href="https://en.wikipedia.org/wiki/Glossary_of_sumo_terms">Wikipedia</a>.</p>
        </div>
      </div>
    )
  }
}

export default About
