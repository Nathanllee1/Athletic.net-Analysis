import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import AIDForm from './AIDForm.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';

class App extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      cardResults: '',
      graphResults: '',
      status: 'initialpageload',
      aid: '',

      state_: '',
      stateStatus: 'True',

      grade: 'True',

      gender: '',
      genderStatus: 'True'
    };
    this.onSubmit = this.onSubmit.bind(this);
    this.onChange = this.onChange.bind(this);
    this.getData = this.getData.bind(this);
  }

  getData() {
    const _package = this.state

    //const package = "/api/" + endpoint
    fetch(("/api/"), {
      method: 'post',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(_package)

      })
      .then(function (response) {
        return response.json()
      })
      .then(function (json) {
        console.log(json)
      });
  }

  onSubmit(value) {
    value.preventDefault()
    /*
    const submitForm = {
      aid: this.state.aid,
      form: {
        state_: this.state.state_,
        grade: this.state.grade,
        gender: this.state.gender
      }
    }
    */
    const cardData = this.getData()
    console.log(cardData)
  }

  onChange(event) {
    this.setState({aid : event.target.value})
  }



  render() {
      return (
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
      );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
