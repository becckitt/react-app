import React from 'react';

const ReferralFooter = () => (
  <footer className='referral-footer'>
    <div className='inner-footer'>
      <h3>Referrals</h3>
      <p className='description'>Earn gold or platinum status when you refer your friends to join the club.</p>
      <div className='card'>
        <div className='inner-card'>
          <p className='share-text'>I just found out who paid 99&#162;. You could too! <span className='hashtag'>#SeeWhoPaid</span></p>
        </div>
        <div className='share-section'>
          <button className='social facebook'>Share on Facebook</button>
          <button className='social twitter'>Share on Twitter</button>
        </div>
      </div>
    </div>
  </footer>
);

export default ReferralFooter;
