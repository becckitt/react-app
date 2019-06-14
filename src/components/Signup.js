import React from 'react';

class Signup extends React.Component {
  render() {
    return (
      <form action='' className='signup-form'>
        <div className='full-name'>
          <div className="first-name">
            <label htmlFor="firstName">First name</label>
            <input name='firstName' type='text' placeholder='Margaret'/>
          </div>
          <div className="last-name">
            <label htmlFor="lastName">Last name</label>
            <input name='lastName' type='text' placeholder='Hamilton'/>
          </div>
        </div>
        <p className='form-warning'>The following information needs to be real for your payment to be processed.</p>
        <div className="email-input">
          <label htmlFor="email">Email</label>
          <input name='email' type='text' placeholder='margaret@nasa.gov'/>
        </div>
        <div className="payment-input">
          <label htmlFor="payment">Saved payment</label>
          <input name='payment' type='text' placeholder='xxxx xxxx xxxx 4242' disabled/>
        </div>
        <button type='submit'>See who paid 99&#162;</button>
      </form>
    )
  }
}

export default Signup;
