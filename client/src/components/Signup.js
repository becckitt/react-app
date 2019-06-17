import React from 'react';
import { Redirect } from 'react-router';

class Signup extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      firstName: '',
      lastName: '',
      email: '',
      payment: '',
      redirectToMembers: false
    }

    this.createUser = this.createUser.bind(this);
  }

  createUser = event => {
    event.preventDefault();
    fetch('/api/user', {
      method: 'post',
      headers: {'Content-Type':'application/json'},
      body: JSON.stringify({
        first_name: this.state.firstName,
        last_name: this.state.lastName,
        email: this.state.email
      })
    }).then(response => {
      this.setState({ redirectToMembers: true });
    }).catch(error => {
      console.log("couldnt create user: ", error);
    });
  }
  render() {
    if (this.state.redirectToMembers) {
      return <Redirect to='/members' />
    }
    return (
      <form className='signup-form' onSubmit={this.createUser}>
        <div className='full-name'>
          <div className='first-name'>
            <label htmlFor='firstName' className='required'>First name</label>
            <input required
              name='firstName'
              type='text'
              placeholder='Margaret'
              value={this.state.firstName}
              onChange={e => this.setState({firstName: e.target.value})}
            />
          </div>
          <div className='last-name'>
            <label htmlFor='lastName' className='required'>Last name</label>
            <input required
              name='lastName'
              type='text'
              placeholder='Hamilton'
              value={this.state.lastName}
              onChange={e => this.setState({lastName: e.target.value})}
            />
          </div>
        </div>
        <p className='description'>The following information needs to be real for your payment to be processed.</p>
        <div className='email-input'>
          <label htmlFor='email'>Email</label>
          <input
            name='email'
            type='text'
            placeholder='margaret@nasa.gov'
            value={this.state.email}
            onChange={e => this.setState({email: e.target.value})}
          />
        </div>
        <div className='payment-input'>
          <label htmlFor='payment'>Saved payment</label>
          <input name='payment' type='text' placeholder='xxxx xxxx xxxx 4242' disabled/>
        </div>
        <button type='submit'>See who paid 99&#162;</button>
      </form>
    )
  }
}

export default Signup;
