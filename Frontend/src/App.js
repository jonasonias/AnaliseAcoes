// App.js

import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Header from './components/Header';
import HomePage from './pages/HomePage';
import AboutPage from './pages/AboutPage';
import LoginPage from './pages/LoginPage';
import Footer from './components/Footer';
import { AuthProvider } from './contexts/AuthContext'; // Importe o provedor de contexto de autenticação

const App = () => {
  return (
    <Router>
      <AuthProvider> {/* Envolve os componentes em AuthProvider */}
        <div>
          <Header />
          <Routes>
            <Route exact path="stocksSiteAWS/" element={<HomePage/>}/>
            <Route path="stocksSiteAWS/about" element={<AboutPage/>}/>
            <Route path="stocksSiteAWS/login" element={<LoginPage/>}/>
          </Routes>
          <Footer />
        </div>
      </AuthProvider>
    </Router>
  );
};

export default App;
