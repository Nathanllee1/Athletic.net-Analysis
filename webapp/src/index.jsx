import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import AIDForm from './form.jsx'

class App extends React.Component {
    render() {
        return (
            <AIDForm />
        );
    }
}

ReactDOM.render(<App />, document.getElementById('app'));
