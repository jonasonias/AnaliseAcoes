import React, { useEffect } from 'react';
import { BrowserRouter as Router, Route, Routes, useLocation } from 'react-router-dom';
import PopupLogin from './pages/PopupLogin';
import HomePage from './pages/HomePage';
import AboutPage from './pages/AboutPage';
import ProfilePage from './pages/ProfilePage';
import AcoesPage from './pages/AcoesPage';
import AcoesNotaPage from './pages/AcoesNotaPage';
import AcoesDetailPage from './pages/AcoesDetailPage';
import NotFoundPage from './pages/NotFoundPage';
import Footer from './components/Footer';
import { AuthProvider } from './contexts/AuthContext';
import './styles/General.css';

const ScrollToTop = () => {
  const location = useLocation();

  useEffect(() => {
    window.scrollTo(0, 0);
  }, [location.pathname]);

  return null;
};

const App = () => {
  return (
    <Router>
      <AuthProvider>
        <ScrollToTop />
        <div>
          <PopupLogin />
          <Routes>
            <Route exact path="/" element={<HomePage />} />
            <Route path="/About" element={<AboutPage />} />
            <Route path="/Profile" element={<ProfilePage />} />
            <Route path="/Acoes" element={<AcoesPage />} />
            <Route path="/Acoes/Nota" element={<AcoesNotaPage />} />
            <Route path="/Acoes/:code" element={<AcoesDetailPage />} />
            <Route path="*" element={<NotFoundPage />} />
          </Routes>
          <Footer />
        </div>
      </AuthProvider>
    </Router>
  );
};

export default App;
