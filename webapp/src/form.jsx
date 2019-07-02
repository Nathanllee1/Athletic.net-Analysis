import React from 'react';

class AIDForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      aid: '',
      status: '',
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  }

  handleSubmit(event) {
    alert('Aid submitted # ' + this.state.value);
    event.preventDefault();
    this.setState({status: 'entered1', formData: this.state.value})
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div class_='form-group'>
          <input type='number' value={this.state.value} onChange={this.handleChange} class_='form-control' placeholder='Enter Athletic.net ID #'></input>
          <button class_="btn btn-primary" type="submit" value="Submit">Submit</button>
        </div>
      </form>

    )
  }
}

export default AIDForm;
