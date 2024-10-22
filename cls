[33mcommit 2cb782744ce2102781708e0dc154a37ca8437970[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: IamHussain0 <786shahnawajhussain07@gmail.com>
Date:   Tue Oct 22 12:36:33 2024 +0530

    login & register

[1mdiff --git a/src/App.css b/src/App.css[m
[1mindex 26e49fb..602c8b0 100644[m
[1m--- a/src/App.css[m
[1m+++ b/src/App.css[m
[36m@@ -145,6 +145,87 @@[m [mhtml {[m
     }[m
 }[m
 [m
[32m+[m
[32m+[m[32m/* Login & register css */[m
[32m+[m[32m.form-component {[m
[32m+[m[32m    padding-top: 40px;[m
[32m+[m[32m    padding-bottom: 60px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component h2 {[m
[32m+[m[32m    color: gray;[m
[32m+[m[32m    letter-spacing: 4px;[m
[32m+[m[32m    margin-bottom: 30px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component h4 {[m
[32m+[m[32m    color: gray;[m
[32m+[m[32m    font-weight: 700;[m
[32m+[m[32m    margin-bottom: 20px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component p {[m
[32m+[m[32m    max-width: auto;[m
[32m+[m[32m    color: gray;[m
[32m+[m[32m    margin-bottom: 20px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component form {[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    flex-direction: column;[m
[32m+[m[32m    gap: 30px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component form div {[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    gap: 30px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component form input,[m
[32m+[m[32m  .form-component form select,[m
[32m+[m[32m  .form-component form textarea {[m
[32m+[m[32m    flex: 1;[m
[32m+[m[32m    font-size: 24px;[m
[32m+[m[32m    padding: 10px 10px 10px 40px;[m
[32m+[m[32m    border-radius: 7px;[m
[32m+[m[32m    border: 1px solid gray;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component button {[m
[32m+[m[32m    padding: 10px 35px;[m
[32m+[m[32m    color: #fff;[m
[32m+[m[32m    font-weight: 700;[m
[32m+[m[32m    width: fit-content;[m
[32m+[m[32m    border: none;[m
[32m+[m[32m    border-radius: 8px;[m
[32m+[m[32m    font-size: 24px;[m
[32m+[m[32m    margin-bottom: 30px;[m
[32m+[m[32m    background: linear-gradient(140deg, #9083d5, #271776ca);[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component .wrapper {[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    gap: 50px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component .wrapper .banner {[m
[32m+[m[32m    flex: 1;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component .wrapper .banner:last-child {[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m    align-items: center;[m
[32m+[m[32m  }[m
[32m+[m[32m  .form-component .wrapper .banner:last-child img {[m
[32m+[m[32m    max-width: 450px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .login-form {[m
[32m+[m[32m    margin: 100px auto 20px auto;[m
[32m+[m[32m    max-width: 800px;[m
[32m+[m[32m    text-align: center;[m
[32m+[m[32m  }[m
[32m+[m[32m  .register-form {[m
[32m+[m[32m    max-width: 1200px;[m
[32m+[m[32m    margin: 100px auto 20px auto;[m
[32m+[m[32m  }[m
[32m+[m[32m  .login-form h2 {[m
[32m+[m[32m    color: #000;[m
[32m+[m[32m  }[m
[32m+[m[32m  .register-form h2 {[m
[32m+[m[32m    color: #000;[m
[32m+[m[32m  }[m
[32m+[m[32m/* ********************************************************************************************************************* */[m
 @keyframes moveUpDown {[m
     0% {[m
       transform: translateY(0px);[m
[1mdiff --git a/src/App.jsx b/src/App.jsx[m
[1mindex 0dfbfb9..d9f3297 100644[m
[1m--- a/src/App.jsx[m
[1m+++ b/src/App.jsx[m
[36m@@ -3,7 +3,9 @@[m [mimport './App.css';[m
 import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';[m
 import Home from './pages/Home';[m
 import Appointment from './pages/Appointment';[m
[31m-import Login from './pages/Login/login';[m
[32m+[m[32mimport Login from './pages/login';[m
[32m+[m[32mimport Register from './pages/Register';[m
[32m+[m
 [m
 const App = () => {[m
   return ([m
[36m@@ -12,6 +14,7 @@[m [mconst App = () => {[m
         <Route path="/" element={<Home />} />[m
         <Route path="/appointment" element={<Appointment />} />[m
         <Route path="/login" element={<Login />} />[m
[32m+[m[32m        <Route path="/register" element={<Register />} />[m
         </Routes>[m
     </Router>[m
   );[m
[1mdiff --git a/src/main.jsx b/src/main.jsx[m
[1mindex 89f91e5..ee366ea 100644[m
[1m--- a/src/main.jsx[m
[1m+++ b/src/main.jsx[m
[36m@@ -1,10 +1,32 @@[m
[31m-import { StrictMode } from 'react'[m
[31m-import { createRoot } from 'react-dom/client'[m
[31m-import App from './App.jsx'[m
[31m-import './index.css'[m
[32m+[m[32mimport React, { StrictMode, useState, createContext } from 'react';[m
[32m+[m[32mimport { createRoot } from 'react-dom/client'; // Correct import for createRoot[m
[32m+[m[32mimport App from './App.jsx';[m
[32m+[m[32mimport './index.css';[m
 [m
[31m-createRoot(document.getElementById('root')).render([m
[32m+[m[32mexport const Context = createContext({[m
[32m+[m[32m  isAuthenticated: false[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mconst AppWrapper = () => {[m
[32m+[m[32m  const [isAuthenticated, setIsAuthenticated] = useState(false);[m
[32m+[m[32m  const [user, setUser] = useState({});[m
[32m+[m[32m  return ([m
[32m+[m[32m    <Context.Provider[m
[32m+[m[32m      value={{[m
[32m+[m[32m        isAuthenticated,[m
[32m+[m[32m        setIsAuthenticated,[m
[32m+[m[32m        user,[m
[32m+[m[32m        setUser,[m
[32m+[m[32m      }}[m
[32m+[m[32m    >[m
[32m+[m[32m      <App />[m
[32m+[m[32m    </Context.Provider>[m
[32m+[m[32m  );[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mconst root = createRoot(document.getElementById("root")); // Fix createRoot[m
[32m+[m[32mroot.render([m
   <StrictMode>[m
[31m-    <App />[m
[31m-  </StrictMode>,[m
[31m-)[m
[32m+[m[32m    <AppWrapper />  {/* Wrap the App component in the Context Provider */}[m
[32m+[m[32m  </StrictMode>[m
[32m+[m[32m);[m
\ No newline at end of file[m
[1mdiff --git a/src/pages/Appointment.jsx b/src/pages/Appointment.jsx[m
[1mindex f86a298..c8a926e 100644[m
[1m--- a/src/pages/Appointment.jsx[m
[1m+++ b/src/pages/Appointment.jsx[m
[36m@@ -1,9 +1,11 @@[m
 import React from 'react';[m
 import AppointmentForm from '../components/AppointmentForm';[m
[32m+[m[32mimport Header from '../components/Header';[m
 [m
 const Appointment = () => {[m
   return ([m
     <div>[m
[32m+[m[32m      <Header/>[m
       <AppointmentForm />[m
     </div>[m
   );[m
[1mdiff --git a/src/pages/Login/login.css b/src/pages/Login/login.css[m
[1mdeleted file mode 100644[m
[1mindex 681ce75..0000000[m
[1m--- a/src/pages/Login/login.css[m
[1m+++ /dev/null[m
[36m@@ -1,282 +0,0 @@[m
[31m-.login-page {[m
[31m-    --bg: #edf2f0;[m
[31m-    --neu-1: #ecf0f3;[m
[31m-    --neu-2: #d1d9e6;[m
[31m-    --white: #f9f9f9;[m
[31m-    --gray: #a0a5a8;[m
[31m-    --black: #181818;[m
[31m-    --purple: #4b70e2;[m
[31m-    --transition: 1.25s;[m
[31m-  [m
[31m-    *,[m
[31m-    *::after,[m
[31m-    *::before {[m
[31m-      margin: 0;[m
[31m-      padding: 0;[m
[31m-      box-sizing: border-box;[m
[31m-      user-select: none;[m
[31m-    }[m
[31m-  [m
[31m-    body {[m
[31m-      width: 100%;[m
[31m-      height: 100vh;[m
[31m-      display: flex;[m
[31m-      justify-content: center;[m
[31m-      align-items: center;[m
[31m-      font-family: "Montserrat", sans-serif;[m
[31m-      font-size: 12px;[m
[31m-      background-color: var(--neu-1);[m
[31m-      color: var(--gray);[m
[31m-    }[m
[31m-  [m
[31m-    .main {[m
[31m-      position: relative;[m
[31m-      width: 1000px;[m
[31m-      min-width: 1000px;[m
[31m-      min-height: 600px;[m
[31m-      height: 600px;[m
[31m-      padding: 25px;[m
[31m-      background-color: var