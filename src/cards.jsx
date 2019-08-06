import React from 'react';
import Card from './card';
import EventList from './Eventlist'

class Cards extends React.Component {


  render() {
    const cardData = this.props.data;
    console.log(cardData)

    let cards = []

    var events;
    for (events in cardData ) {
      console.log(events)
      const eventResults = cardData[events]
      cards.push(
        <div className="card" key={events}>
          <h2 className="card-title"><b>{events}</b></h2>
          <EventList eventData={eventResults}/>
        </div>
      )
    }

    return(
      <div>{cards}</div>
    )

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
