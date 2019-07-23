import React from 'react';

class VisualForm extends React.Component {
  render() {
    return(
      <div className="VisualForm">
        How does {this.props.name} stack up against {this.props.gender}s in {this.props.state_} in the same Grade?
      </div>
    )
  }

}

export default VisualForm;
