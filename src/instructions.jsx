import React from 'react'

class Instructions extends React.Component {
  render() {
    return (
      <div id="instructionList">
        <div>
          1) Got to your athletic.net profile
          <br></br>
          2) Look at the URL and get the number at the very end
          <br></br>
          Example: https://www.athletic.net/TrackAndField/Athlete.aspx?AID=<b>8647967</b>
        </div>
      </div>

    )
  }
}


export default Instructions;
