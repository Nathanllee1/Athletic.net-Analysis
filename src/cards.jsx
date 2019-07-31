import React from 'react';
import Card from './card';


class Cards extends React.Component {

  function createCard() {
    const cardData = this.props.data;
    console.log(cardData)

    


    var events;
    for (events in cardData ) {
      console.log(events)
      return(
        <div className="card" >
          <h2 className="card-title"><b>{events}</b></h2>
        </div>
      )
    }
  }

  render() {
    <div>{this.createCard}</div>
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
