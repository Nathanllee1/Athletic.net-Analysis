import React from 'react';
import Card from './card';


class Cards extends React.Component {
  render() {
    const cardData = this.props.data;
    console.log(cardData)
    var events;
    for (events in cardData ) {
      console.log(events)
      return(
        <div className="card" >
          <h5 className="card-title">{events}</h5>
            <table>


            </table>
        </div>



      )
    }
  }
}

export default Cards;
/*
8647967
<tr>
  cardData[events].map((event) =>
    <td>{event.meet}</td>
  )
</tr>
*/
