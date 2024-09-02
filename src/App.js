import logo from './logo.svg';
import './App.css';
import NewComponent from './component/NewComponent';
import NewComponent2 from './component/NewComponent2';

function App() {
  return (
    <div className="App"> 
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
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
        <button>test button</button>
        <NewComponent color='blue'/>
        <NewComponent2 color='blue' model="2021" country="IND" state="KA" />
      </header>
    </div>
  );
}

export default App;
