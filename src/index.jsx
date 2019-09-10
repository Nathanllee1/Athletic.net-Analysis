import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

import AIDForm from './AIDForm.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';
import VisualForm from './visualForm'
import Cards from './cards';
import Instructions from './instructions'

class App extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      cardResults: '',
      graphResults: '',
      status: '',
      aid: '',

      location: '',
      stateStatus: '',

      grade: '',

      gender: '',
      genderStatus: '',

      name: '',
    };
    this.onSubmit = this.onSubmit.bind(this);
    this.onChange = this.onChange.bind(this);
    this.getData = this.getData.bind(this);
    this.stateClick = this.stateClick.bind(this);
  }

  componentDidMount() {
    this.setState({stateStatus:'False', grade:'True', genderStatus:'True'})
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
      )
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

  stateClick() {
    console.log('state Clicked')
    if(this.state.stateStatus == 'True') {
      this.setState({ stateStatus:'False', location: 'Everywhere'});
      console.log('setting false')
    } else {
      this.setState({ stateStatus:'True'})
      console.log('setting true')
    }
    console.log(this.state)
    this.getData()
  }

  onChange(event) {
    this.setState({aid : event.target.value})
  };

  render() {
    if(this.state.results) {
      //console.log(this.state)
      return  (
        <div>
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
          <VisualForm location={this.state.location} gender={this.state.gender} name={this.state.name} stateClick={this.stateClick}/>

          <Cards data={this.state.cardResults}/>


        </div>

      )
    } else {
      return (
        <div>
          <AIDForm onSubmit={this.onSubmit} onChange={this.onChange} />
          <Instructions />
        </div>
      )
    }

  }


}

ReactDOM.render(<App />, document.getElementById('app'));
//<Cards data={this.state.cardData}/>
