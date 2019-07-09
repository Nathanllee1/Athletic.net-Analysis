import React from 'react';
import { connect } from 'react-redux';
import { reduxForm, Field } from 'redux-form';

let AIDForm = props => {
  const { handleSubmit } = props;
  return (
    <form onSubmit={ handleSubmit } className="form">
      <div class_='field'>
        <div className="control">
          <Field className='input' name="Aid" type="text" placeholder='Enter Athletic.net ID #' />

        </div>
        <div className="control">
          <button class_="btn btn-primary" type="button" value="Submit">Submit</button>
        </div>

      </div>
    </form>
  )
}



/*

class AIDForm extends React.Component {

  render() {
    return (


    )
  }
}
*/
const numberForm = reduxForm({
  form: 'AIDForm'
})(AIDForm);

export default numberForm;
