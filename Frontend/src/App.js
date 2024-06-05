// App.js

import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Header from './components/Header';
import HomePage from './pages/HomePage';
import AboutPage from './pages/AboutPage';
import ProfilePage from './pages/ProfilePage';
import Footer from './components/Footer';
import { AuthProvider } from './contexts/AuthContext'; // Importe o provedor de contexto de autenticação
import './styles/General.css';

const App = () => {
  return (
    <Router>
      <AuthProvider> {/* Envolve os componentes em AuthProvider */}
        <div>
          <Header />
          <Routes>
            <Route exact path="/" element={<HomePage/>}/>
            <Route path="/about" element={<AboutPage/>}/>
            <Route path="/profile" element={<ProfilePage/>}/>
          </Routes>
          <Footer />
        </div>
      </AuthProvider>
    </Router>
  );
};

export default App;
