import React from 'react';



class EventList extends React.Component {
  render() {
    const eventData = this.props.eventData
    console.log(eventData)
    const results = []
    for (var resultList in eventData) {
      console.log(resultList)
      const keyedResult = eventData[resultList]
      results.push(
        <tr>
          <td key={keyedResult.meet}>{keyedResult.meet}</td>
          <td key={keyedResult.date}>{keyedResult.date}</td>
          <td key={keyedResult.result}>{keyedResult.result}</td>
          <td key={keyedResult.percentile}>{keyedResult.percentile}</td>
        </tr>

      )
    }
    return(
      <table>
        <tbody>
          <tr>
            <th>Meet</th>
            <th>Date</th>
            <th>Result</th>
            <th>Percentile</th>

          </tr>
          {results}
        </tbody>

      </table>
    )
  }
}

export default EventList
