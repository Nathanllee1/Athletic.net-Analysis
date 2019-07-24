import React from 'react';
import Card from './card';


class Cards extends React.Component {
  render() {
    const cardData = this.props.data;
    return(
        cardData.map(event =>
          <Card event={event} />
        )
    )
  }
}

export default Cards;
