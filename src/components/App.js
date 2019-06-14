import React from 'react';
import Header from './Header';
import Signup from './Signup';
import Footer from './Footer';
import '../css/styles.scss';

function App() {
  return (
    <div className="App">
      <Header></Header>
      <Signup></Signup>
      <Footer></Footer>
    </div>
  );
}

export default App;
