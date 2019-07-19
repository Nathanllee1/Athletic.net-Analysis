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
      grade: 'True',
      gender: ''
    };
    this.onSubmit = this.onSubmit.bind(this);
    this.onChange = this.onChange.bind(this);
    this.getData = this.getData.bind(this);
  }

  getData(_package, endpoint) {
    console.log(_package);
    console.log(endpoint);
    //const package = "/api/" + endpoint
    fetch("/api/cards", {method: 'post', body: '_package'})
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

  onSubmit(value) {
    value.preventDefault()
    const submitForm = {
      aid: this.state.aid,
      form: {
        state_: this.state.state_,
        grade: this.state.grade,
        gender: this.state.gender
      }
    }
    const cardData = this.getData(submitForm, 'cards')
    console.log(cardData)
  }
  ///////////////////////////////////////////////////////////Fix this
  onChange(event) {
    this.setState({aid : event.target.value})
  }
  ///////////////////////////////////////////////////////////////



  render() {
      return (
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
      );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
