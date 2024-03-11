/**
 * onChange = event handler used primarily with form elements ex. <input>. Triggers a function every time the value of the input changes
 */

import React, { useState } from 'react';
function MyComponent() {
  const [name, setName] = useState("Hello");
  const [payment, setPayment] = useState("visa");
  const [shipping, setShipping] = useState("delivery")

  function handleNameChange(e) {
    setName(e.target.value)
  }

  function handleDropDownChnage(e){
    setPayment(e.target.value);
  }

  function handleShippingChange(e){
    setShipping(e.target.value)
  }

  return (<>
    <input type='text' value={name} onChange={handleNameChange}></input>
    <label>Name: {name}</label>
    <hr />

    <select value={payment} onChange={handleDropDownChnage}>
      <option value="" key="">Select</option>
      <option value="visa" key="visa">Visa</option>
      <option value="upi" key="upi">upi</option>
    </select>
    <label>Payment</label>:
    {payment}
    <hr></hr>

    <label>
      <input type='radio' value="pickup" checked={shipping == "pickup"} onChange={handleShippingChange}/> Pickup
    </label><br></br>
    <label>
      <input type='radio' value="delivery" checked={shipping == "delivery"} onChange={handleShippingChange}/> Delivery
    </label>
    Picked: {shipping}
    <hr />
  </>)
}

export default MyComponent;