import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

import AIDForm from './AIDForm.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';
import VisualForm from './visualForm'
import Cards from './cards';


class App extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      cardResults: '',
      graphResults: '',
      status: 'initialpageload',
      aid: '',

      state_: '',
      stateStatus: 'True',

      grade: 'True',

      gender: '',
      genderStatus: 'True',

      name: '',
    };
    this.onSubmit = this.onSubmit.bind(this);
    this.onChange = this.onChange.bind(this);
    this.getData = this.getData.bind(this);

  }

  getData() {
    const _package = this.state;

    //const package = "/api/" + endpoint
    fetch(("/api/"), {
      method: 'post',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(_package)
      })
      .then(function(response) {
        return response.json()
      })
      .then((json) =>
        this.setState(json)

      );
  }

  onSubmit(value) {
    value.preventDefault();
    console.log('submitted')
    this.setState({ status:"loading" });
    const data = this.getData();

    //console.log(data);
    //this.setState({data});
    //this.state = data
    this.setState({ status:"loaded" });

  };

  onChange(event) {
    this.setState({aid : event.target.value})
  };

  render() {
    if(this.state.results) {
      console.log(this.state)
      return  (
        <div>
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
          <VisualForm state_={this.state.state_} gender={this.state.gender} name={this.state.name} />
          <Cards data={this.state.cardResults}/>
        </div>

      )
    } else {
      return (
        <div>
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
        </div>
      )
    }

  }


}

ReactDOM.render(<App />, document.getElementById('app'));
//<Cards data={this.state.cardData}/>
