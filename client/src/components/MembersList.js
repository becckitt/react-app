import React from 'react';

class MembersList extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      members: []
    }
  }

  componentDidMount() {
    this.MemberList();
  }

  MemberList() {
    fetch('/api/users')
      .then(response => response.json())
      .then(data => this.setState({ members: data || [] }));
  }

  render() {
    return (
      <div className='members-list'>
        <h2>Members</h2>
        <ul>
          {this.state.members.map(member => (
            <li key={member.id}>{member.name}</li>
          )) }
        </ul>
      </div>
    )
  }
}

export default MembersList;
