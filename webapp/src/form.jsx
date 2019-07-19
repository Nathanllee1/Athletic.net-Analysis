import React from 'react';
import Cards from './cards';
import { connect } from 'react-redux'

class AIDForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      value: '',
      status: '',
      form: {aid:'', form:{"state":"", "grade":"True", "gender":''}},
      results: '',
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    console.log(event.target.value)
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
    console.log('submitted')
    /*
    alert('Aid submitted # ' + this.state.value);
    event.preventDefault();
    this.setState({form.aid : this.state.value})
    console.log(this.state.form)
    cardData = get_data(this.state.value, this.state.form,'card')
    console.log(cardData)
    this.setState({results: cardData, status: 'rendered'})
    */
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

function mapStateToProps(state) {
  return {
    count: state.count
  };
}


export default connect(mapStateToProps)(AIDForm);
