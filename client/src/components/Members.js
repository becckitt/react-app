import React from 'react';
import Header from './Header';
import MembersList from './MembersList';
import ReferralFooter from './ReferralFooter';

class Members extends React.Component {
  render() {
    return (
      <div className="App">
        <Header></Header>
        <MembersList></MembersList>
        <ReferralFooter></ReferralFooter>
      </div>
    )
  }
}

export default Members;