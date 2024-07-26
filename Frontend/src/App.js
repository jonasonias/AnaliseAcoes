import React, { useEffect } from 'react';
import { BrowserRouter as Router, Route, Routes, useLocation } from 'react-router-dom';
import PopupLogin from './pages/PopupLogin';
import HomePage from './pages/HomePage';
import AboutPage from './pages/AboutPage';
import ProfilePage from './pages/ProfilePage';
import AcoesPage from './pages/AcoesPage';
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
            <Route path="/about" element={<AboutPage />} />
            <Route path="/profile" element={<ProfilePage />} />
            <Route path="/acoes" element={<AcoesPage />} />
            <Route path="/acoes/:code" element={<AcoesDetailPage />} />
            <Route path="*" element={<NotFoundPage />} />
          </Routes>
          <Footer />
        </div>
      </AuthProvider>
    </Router>
  );
};

export default App;
