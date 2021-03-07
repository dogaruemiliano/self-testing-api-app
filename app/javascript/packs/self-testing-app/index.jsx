import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { BrowserRouter as Router, Route, Redirect, Switch } from 'react-router-dom'
import { createBrowserHistory as history } from 'history'

import TestIndex from './containers/TestIndex';
// import '../../../assets/stylesheets/application.scss'

import configureStore from './store/configureStore'

const initialState = {
  tests: []
}

ReactDOM.render(
  <div>
  HelloMotherFuckers
  </div>,
  document.getElementById('root')
);

// ReactDOM.render(
//   <Provider store={configureStore(initialState)}>
//     <Router histroy={history}>
//       <Switch>
//         <Route exact path='/' component={TestIndex} />
//       </Switch>
//     </Router>
//   </Provider>,
//   document.getElementById('root')
// );
