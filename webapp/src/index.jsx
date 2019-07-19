import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import AIDForm from './AIDForm.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';
import { createStore, combineReducers } from 'redux';
import { Provider } from 'react-redux'
import { reducer as formReducer } from 'redux-form'

function get_data(athleticID, _package, endpoint) {
  console.log(_package);
  console.log(endpoint);
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


const initialState = {
  form: {aid:'', form:{"state":"", "grade":"True", "gender":''}},
  cardResults: '',
  graphResults: '',
  status: 'initialpageload',
}

// status: initialpageload, loading, loaded
function reducer(state = initialState, action) {
  switch(action.type) {
    case 'SUBMITAID': {
      const data = action.data;
      console.log('Yeet $(data)')
    }

    case 'RECIEVE_DATA': {
      const data = action.data;
      console.log(data);
      return {
        ...state,
        data
      }
    }
  }
  return state;
}

function onSubmit(value) {
  console.log(value)
  const form = initialStae.form;
  console.log(form)
  console.log(get_data(value, form, 'cards'))
  //store.dispatch()
}

const rootReducer = combineReducers({
  reducer,
  form: formReducer
})

const store = createStore(rootReducer);

class App extends React.Component {

  render() {
      return (
        <Provider store={store}>
          <AIDForm onSubmit={onSubmit}/>
        </Provider>

      );
  }
}
/*
function mapStateToProps(state) {
  return {
    form: state
  }
}
*/

ReactDOM.render(<App />, document.getElementById('app'));
