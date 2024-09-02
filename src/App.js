import logo from './logo.svg';
import './App.css';
import NewComponent from './component/NewComponent';
import NewComponent2 from './component/NewComponent2';
// import FunctionComponent from './component/FunctionComponent';
import LoginComponent from './component/LoginComponent';
import SelectComponent from './component/SelectComponent';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Layout from './component/Layout';
import NoPage from './component/NoPage';

function App(props) {


  return (
    <div className="App Test-class">
      <header className="App-header">
        <LoginComponent />
        {/* <BrowserRouter>
          <Routes>
            <Route path="/" element={<Layout />}>
              <Route index path="login" element={<LoginComponent />} />
              <Route path="select" element={<SelectComponent />} />
              <Route path="*" element={<NoPage />} />
            </Route>
          </Routes>
        </BrowserRouter> */}
      </header>
    </div>
  );
}

export default App;