import React from 'react';



class AIDForm extends React.Component {
  constructor(props) {
    this.state = {};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  }

  handleSubmit(event) {
    alert('Aid submitted # ' + this.state.value);
    event.preventDefault();
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div class='form-group'>
          <input type='aid' class='form-control' placeholder='Enter Athletic.net ID #'></input>
        </div>
      </form>
    )
  }
}

export default AIDForm;
