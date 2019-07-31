import React from 'react';

class AIDForm extends React.Component {

  render() {
    return (
      <div className='mainForm'>
        <form onSubmit={ this.props.onSubmit } className="form" id="aidform">
          <input className="form-control" name='aid' type="number" placeholder='Enter Athletic.net ID #' onChange={this.props.onChange}/>
          <button type="submit" className="btn btn-primary">Submit</button>
        </form>
      </div>

    )
  }
}

export default AIDForm;
