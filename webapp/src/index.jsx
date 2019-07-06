import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import AIDForm from './form.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';
import { createStore } from 'redux';
import { Provider } from 'react-redux'

const initialState = {
  form: {aid:'', form:{"state":"", "grade":"True", "gender":''}},
  cardResults: '',
  graphResults: '',
  status: 'initialpageload',
}

// status: initialpageload, loading, loaded


function reducer(state = initialState, action) {
  switch(action.type) {
    case 'ENTERAID': {
      const aid = action.text
      console.log($(aid))
      return {
        ...state,
        aid
      }
    }

    case 'RECIEVE_DATA': {
      const data = action.data;
      console.log(data);
      return {
        ...state,
        quotes
      }
    }
  }
  return state;
}


const store = createStore(reducer);

class App extends React.Component {
    render() {
        return (
          <Provider store={store}>
            <AIDForm />
          </Provider>

        );
    }
}

ReactDOM.render(<App />, document.getElementById('app'));
