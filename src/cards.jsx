import React from 'react';
import Card from './card';


class Cards extends React.Component {
  render() {
    const cardData = this.props.data;
    console.log(cardData)
    return(
        cardData.map((event) =>
          <div className="card">
            <h5 className="card">cardData.event</h5>
          </div>
        )
    )
  }
}

export default Cards;
