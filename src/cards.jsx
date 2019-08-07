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
      const eventResults = cardData[events]['results']
      const averagePercent = cardData[events]['averagePercent']
      cards.push(
        <div className="card" key={events}>
          <div className="titleSlot">
            <h2 className="card-title"><b>{events}</b></h2>
            <h5 className="averagePercent" key={averagePercent}>Avg {averagePercent}</h5>
          </div>

          <EventList eventData={eventResults}/>
        </div>
      )
    }

    return(
      <div className='cards'>
        {cards}
      </div>
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
