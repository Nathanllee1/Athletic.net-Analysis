import React from 'react';
import Card from './card';


class Cards extends React.Component {
  constructor(props) {
    super(props)
    this.createCard = this.createCard.bind(this)
  }

  createCard() {
    const cardData = this.props.data;
    console.log(cardData)

    let cards = []

    var events;
    for (events in cardData ) {
      console.log(events)
      cards.push(
        <div className="card" >
          <h2 className="card-title"><b>{events}</b></h2>
        </div>
      )
    }
    console.log(cards)
    return cards
  }

  render() {
    return(
      <div>{this.createCard}</div>
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
