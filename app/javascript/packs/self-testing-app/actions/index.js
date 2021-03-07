export const FETCH_TESTS = "FETCH_TESTS"

const BASE_URL = 'https://self-testing-api-app.herokuapp.com/api/v1'
export const fetchTests = () => {
  const promise = fetch(`${BASE_URL}/tests`, {
    mode: "no-cors",
    headers: {
      "Content-Type": "application/json"
    }
  })
    .then(response => response.json())

  return {
    type: FETCH_TESTS,
    payload: promise
  }
}
