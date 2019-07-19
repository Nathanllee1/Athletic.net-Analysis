import React from 'react';

class AIDForm extends React.Component {

  render() {
    return (
      <form onSubmit={ this.props.onSubmit } className="form">
        <input name='aid' type="number" placeholder='Enter Athletic.net ID #' onChange={this.props.onChange}/>
        <button type="submit">Submit</button>
      </form>
    )
  }
}

export default AIDForm;
