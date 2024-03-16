// updater functions = a function passed as an argument to setState() usually ex. setYear(i+1). 
// Allow for safe updates based on the previous state used with multiple state updates and 
// asynchronous functions. So for good practice we use updater functions

import { useState } from 'react'
import MyComponent from './MyComponent'

function App() {

  return (
    <>
      <MyComponent />
    </>
  )
}

export default App
