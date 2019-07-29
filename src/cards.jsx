import React from 'react';
import Card from './card';


class Cards extends React.Component {
  render() {
    const cardData = this.props.data;
    var events;
    for (events in cardData ) {
      console.log(events)
      return(
        <div className="card" style="width: 18rem;">
          <h5 className="card-title">{events}</h5>
            <table>
              <tr>
                cardData[events].map((event) =>
                  <td>{event.meet}</td>
                )
              </tr>

            </table>
        </div>



      )
    }
  }
}

export default Cards;
/*

*/
