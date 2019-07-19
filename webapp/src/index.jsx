import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import AIDForm from './AIDForm.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';

class App extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      form: {aid:'', form:{"state":"", "grade":"True", "gender":''}},
      cardResults: '',
      graphResults: '',
      status: 'initialpageload',
      aid: ''
    };
    this.onSubmit = this.onSubmit.bind(this);
    this.onChange = this.onChange.bind(this);
  }

  onSubmit(value) {
    value.preventDefault()

  }
  ///////////////////////////////////////////////////////////Fix this
  onChange(event) {
    this.setState(prevState =>({
      ...prevState.form,
      [aid] : event.target.value

    });
  }
  ///////////////////////////////////////////////////////////////
  get_data(athleticID, _package, endpoint) {
    console.log(_package);
    console.log(endpoint);
    /*
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
      */
  }


  render() {
      return (
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
      );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
