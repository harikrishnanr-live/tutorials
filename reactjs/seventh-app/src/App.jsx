import { useState } from 'react'
import './App.css'

function App() {
  const [foods, setFoods] = useState(['Apple', 'Orange', 'Banana']);

  function handleAddFood() {
    const newFood = document.getElementById("foodInput").value;
    document.getElementById("foodInput").value = "";
    setFoods(food => [...food, newFood]);
  }

  function handleRemoveFood(index) {
    setFoods(foods.filter((_, i) => i !== index))
  }

  return (
    <>
      <h3>List Food</h3>
      <ul>
        {foods.map((food, index) => <li key={index} onClick={() => handleRemoveFood(index)}>{food}</li>)}
      </ul>
      <input type='text' id='foodInput' placeholder='Food' />
      <button onClick={handleAddFood}>Add</button>
    </>
  )
}

export default App
