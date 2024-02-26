import Student from "./Student.jsx"

function App() {

  return (
    <>
      <Student name="Harikrishnan" age={25} isStudent={false}/>
      <Student name="Roshni" age={20} isStudent={true}/>
      <Student />
    </>
  )
}

export default App
