import React from "react"

export class Cards extends React.Component {
  render() {
    const data = this.props.data
    return (
      data.map(cardObject =>
        <h1>{cardObject}</h1>
      )
    )
  }
}


export default Cards;
