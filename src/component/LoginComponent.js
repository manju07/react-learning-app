import React, { useState } from 'react'

export default function LoginComponent() {
  const [inputs, setInputs] = useState();

  function changeHandler(event) {
    console.log("changeHandler");
    setInputs({ ...inputs, [event.target.name]: event.target.value })
    console.log("inputs", inputs);
  }

  const submitForm = (event) => {
    event.preventDefault()
    console.log("submitForm", "inputs", inputs);
  }

  return (
    <form>
      <div>Login</div>
      <div>
        <label>Username </label>
        <input type='text' name="username" onChange={changeHandler} />
      </div>
      <div>
        <label>Password </label>
        <input type='password' name="password" onChange={changeHandler} />
      </div>
      <input type='submit' name="submit" value="submit" onClick={submitForm} />
    </form>
  )
}
