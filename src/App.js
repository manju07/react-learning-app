import logo from './logo.svg';
import './App.css';
import NewComponent from './component/NewComponent';
import NewComponent2 from './component/NewComponent2';
// import FunctionComponent from './component/FunctionComponent';
import LoginComponent from './component/LoginComponent';

function App(props) {

  let loggedIn = props.loggedIn;
  let component = null;
  if (loggedIn) {
    component = <NewComponent2 color='blue' model="2021" country="IND" state="KA" />
  } else {
    component = <LoginComponent/>;
  }


  return (
    <div className="App">
      <header className="App-header">
        {/* <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
        <button>test button</button> */}
        {/* <NewComponent color='blue' /> */}
        {component}
      </header>
    </div>
  );
}

export default App;