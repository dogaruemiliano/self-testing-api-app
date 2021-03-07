import React, { Component } from 'react'
import { bindActionCreators } from 'redux'
import { connect } from 'react-redux'

import { fetchTests } from '../actions'

class TestIndex extends Component {
  componentDidMount() {
    this.props.fetchTests()
  }

  render() {
    return (
      <div>
        Hello from TestIndex
        {this.props.tests}
      </div>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    tests: state.tests
  }
}

const mapDispatchToProps = (dispatch) => {
  return bindActionCreators({ fetchTests }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(TestIndex)
