function Button(){
  const handleClick = () =>{
    console.log("hello");
  }

  const handleClick2 = (e) =>{
    console.log(`${e}`);
    console.log(e)
  }
  return(<button onClick={(e) => handleClick2(e)}>Click</button>)
}
export default Button;