import { combineReducers } from 'redux'

// Import all of the reducers for this app
import testsReducer from './testsReducer'
const identityReducer = (state = null) => state
// Combine reducers
const rootReducer = combineReducers({
  tests: testsReducer
})

export default rootReducer
