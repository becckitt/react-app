import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import App from './App';
import Members from './Members';

const Router = () => (
  <BrowserRouter>
    <Switch>
      <Route exact path='/' component={App} />
      <Route exact path='/x/:referralCode' component={App} />
      <Route exact path='/members' component={Members} />
    </Switch>
  </BrowserRouter>
)

export default Router;