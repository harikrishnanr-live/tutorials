/**
 * Props= read only properties that are shared between components. A parent component can send data to child components 
 * <Component key=value />
 */

/* 
PropTypes = a mechanism that ensures that the passed value is of the correct datatype
age= PropTypes.number
*/

/**
 * defaultProps = default values for props in case they are not passed from the parent component
 * name="Guest"
 */
import PropTypes from 'prop-types';

function Student(props){
  return(
    <>
      <div>
        <p>
          name: {props.name}
        </p>
        <p>
        age: {props.age}
        </p>
        <p>
        Student: {props.isStudent ? "True" : "False"}
        </p>
      </div>
    </>
  )
}

Student.propTypes = {
  name: PropTypes.string,
  age: PropTypes.number,
  isStudent: PropTypes.bool,
}

Student.defaultProps = {
  name: "Guest",
  age: 0,
  isStudent: false
}

export default Student;