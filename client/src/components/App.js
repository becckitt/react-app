import React from 'react';
import Header from './Header';
import Signup from './Signup';
import Footer from './Footer';
import '../css/styles.scss';

class App extends React.Component {
  state = {
    referralCode: ''
  }
  componentDidMount() {
    const { referralCode } = this.props.match.params;
    this.setState({ referralCode: referralCode });
  }
  render() {
    return (
      <div className='App'>
        <Header></Header>
        <Signup referralCode={this.state.referralCode}></Signup>
        <Footer></Footer>
      </div>
    );
  }
}

export default App;
