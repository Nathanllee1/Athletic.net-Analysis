import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import AIDForm from './form.jsx'
import 'bootstrap/dist/css/bootstrap.min.css';

class App extends React.Component {
    render() {
        return (
            <AIDForm />
        );
    }
}

ReactDOM.render(<App />, document.getElementById('app'));
