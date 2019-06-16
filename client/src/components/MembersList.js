import React from 'react';

class MembersList extends React.Component {
  members = [
    'Annie Easley',
    'Ada Lovelace',
    'Adele Mildred Koss',
    'Margaret Hamilton',
    'Grace Hopper',
    'Anna Winlock',
    'Annie Jump Cannon',
    'Mary Clem',
    'Clara Froelich',
    'Mary K. Hawes',
    'Kathryn Peddrew',
    'Katherine Johnson'
  ];
  render() {
    return (
      <div className='members-list'>
        <h2>Members</h2>
        <ul>
          {this.members.map(member => (
            <li>{member}</li>
          )) }
        </ul>
      </div>
    )
  }
}

export default MembersList;
