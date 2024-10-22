import React, { StrictMode, useState, createContext } from 'react';
import { createRoot } from 'react-dom/client'; // Correct import for createRoot
import App from './App.jsx';
import './index.css';

export const Context = createContext({
  isAuthenticated: false
});

const AppWrapper = () => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [user, setUser] = useState({});
  return (
    <Context.Provider
      value={{
        isAuthenticated,
        setIsAuthenticated,
        user,
        setUser,
      }}
    >
      <App />
    </Context.Provider>
  );
}

const root = createRoot(document.getElementById("root")); // Fix createRoot
root.render(
  <StrictMode>
    <AppWrapper />  {/* Wrap the App component in the Context Provider */}
  </StrictMode>
);