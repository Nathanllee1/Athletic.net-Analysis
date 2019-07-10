import React from 'react';
import { connect } from 'react-redux';
import { reduxForm, Field } from 'redux-form';
import PropTypes from 'prop-types';


function onSubmit(value) {
  console.log(value)
}

const AIDForm = props => {
   const { handleSubmit, pristine, reset, submitting } = props;
  return (
    <form onSubmit={ handleSubmit } className="form">
      <Field name='aid' component="input" name="Aid" type="text" placeholder='Enter Athletic.net ID #' />
      <button type="submit">Submit</button>
    </form>
  )
}


export default reduxForm({
  form: 'AID_Form',
})(AIDForm);
