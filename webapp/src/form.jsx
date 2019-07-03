import React from 'react';
import Cards from './cards';


class AIDForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      aid: '',
      status: '',
      form: {aid:'', form:{"state":"", "grade":"True", "gender":'z   '}}
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  };

  get_data(athleticID, _package, endpoint) {
    fetch("/api/" +  endpoint, _package)
      .then(res => res.json())
      .then(
        (result) => {
          return result
        },

        (error) => {
          return 'error'
        }
      )
  }

  handleSubmit(event) {
    alert('Aid submitted # ' + this.state.value);
    event.preventDefault();
    cardData = get_data(this.state.value, this.state.form,'card')
    return <Cards data={cardData} />
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
