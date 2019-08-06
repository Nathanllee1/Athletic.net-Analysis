import React from 'react';

class AIDForm extends React.Component {

  render() {
    return (
      <form onSubmit={ this.props.onSubmit } className="form" id="aidform">
        <div class='mainForm'>
          <input className="form-control" name='aid' type="number" placeholder='Enter Athletic.net ID #' onChange={this.props.onChange}/>
          <button type="submit" className="btn btn-primary">Submit</button>
        </div>
      </form>

    )
  }
}

export default AIDForm;
