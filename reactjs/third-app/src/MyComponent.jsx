import React, { useState } from 'react';

function MyComponent() {
  let [name, setName] = useState("Guest ");
  let [age, setAge] = useState(0);
  let [isEmpStatus, setisEmpStatus] = useState(false);

  const handleClick = (e) => {
    setName("hari")
  }

  const handleChangeAge = (e) =>{
    age += 1;
    setAge(age); 
  }

  const handleChangeEmpStatus = (e) =>{
    setisEmpStatus(!isEmpStatus)
  }

  return (
    <>
      Name: {name} <br />
      <button onClick={handleClick}>Click</button>

      <br />
      Age: {age} <br />
      <button onClick={handleChangeAge}>Click Age</button>

      <br />
      Emp Status: {isEmpStatus ? "Yes" : "No"} <br />
      <button onClick={handleChangeEmpStatus}>Change Emp Status</button>
    </>
  )
}

export default MyComponent;