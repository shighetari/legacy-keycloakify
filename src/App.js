import logo from './logo.svg';
import './App.css';

import {keycloakThemeBuildingDirPath} from "keycloakify/bin/build-keycloak-theme";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          keycloak theming demo
        </p>
      </header>
    </div>
  );
}

export default App;
