import { useState } from "react";
// https://pusher.com/tutorials/todo-app-react-hooks/#running-the-application

function MyComponent() {
  const [count, setCount] = useState(0);
  function increment(){
    setCount(c => c+1)
  }

  // let [tasks, se]
  return (<div>
    <p>Count: {count}</p>
    <button onClick={increment}>Increment</button>
  </div>)
}

export default MyComponent;