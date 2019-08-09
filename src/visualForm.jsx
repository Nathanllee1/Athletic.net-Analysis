import React from 'react';

class VisualForm extends React.Component {
  render() {

    var gender;
    if (this.props.gender == 'm') {
      gender = 'Males'
    } else {
      gender = 'Females'
    }

    return(
      <div className="VisualForm">
        How does <b>{this.props.name}</b> stack up against <b>{gender}</b> in <button className='btn btn-outline-succes btn-lg' onClick={this.props.stateClick}>{this.props.location}</button> in the same <b>Age</b>?
      </div>
    )
  }

}

export default VisualForm;
