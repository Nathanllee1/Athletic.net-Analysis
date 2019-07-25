import React from 'react';
import Card from './card';


class Cards extends React.Component {
  render() {
    const cardData = this.props.data;
    return(
        {cardData.map(event =>
          <div className="card">
            <h5 className="card">event.event</h5>
          </div>
        )}
    )
  }
}

export default Cards;
