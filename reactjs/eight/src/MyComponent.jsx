import React, { useState } from 'react';

function MyComponent() {
  const [cars, setCars] = useState([]);
  const [year, setYear] = useState(new Date().getFullYear());
  const [make, setMake] = useState("");
  const [model, setModel] = useState("");

  function handleAddCar() {
    const newCar = {
      year: year,
      make: make,
      model: model
    }
    setCars(c => [...c, newCar]);
    console.log(cars)
    setYear(new Date().getFullYear());
    setMake('');
    setModel('');
  }

  function handleRemoveCar(index) {
    setCars(c => c.filter((_, i) => i !== index))
  }

  function handleYearChange(event) {
    setYear(event.target.value)
  }

  function handleMakeChange(event) {
    setMake(event.target.value)
  }

  function handleModelChange(event) {
    setModel(event.target.value)
  }

  return (
    <>
      <h2>List of car Objects</h2>
      <ul>
        {
          cars.map((car, index) => {
            <li key={index} onClick={() => handleRemoveCar(index)}>
              {car.year}
              {car.make}
              {car.model}
            </li>
          })
        }
      </ul><br />
      <input type='number' value={year} onChange={handleYearChange}></input><br></br>
      <input type='text' value={make} onChange={handleMakeChange} placeholder='make'></input><br></br>
      <input type='text' value={model} onChange={handleModelChange} placeholder='model'></input><br></br>
      <button type='button' onClick={handleAddCar}>Add</button>
    </>
  )
};

export default MyComponent;