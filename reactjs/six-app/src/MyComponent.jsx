import { useState } from "react";

function MyComponent() {
  const [car, setCar] = useState({ year: 2024, make: "Ford", model: "Mustang" });

  function changeYear(event) {
    setCar(c => ({ ...c, year: event.target.value }))
  }

  function changeMake(event) {
    setCar({ ...car, make: event.target.value })
  }

  function changeModel(event) {
    setCar({ ...car, model: event.target.value })
  }

  return (
    <>
      {car.year} <br></br>
      {car.make} <br></br>
      {car.model} <br></br>

      <input type="number" value={car.year} onChange={changeYear} /><br />
      <input type="text" value={car.make} onChange={changeMake} /><br />
      <input type="text" value={car.model} onChange={changeModel} /><br />

    </>
  )

}

export default MyComponent;