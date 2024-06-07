import React, { useEffect } from 'react';
import { BrowserRouter as Router, Route, Routes, useLocation } from 'react-router-dom'; // Importe o useLocation
import PopupLogin from './pages/PopupLogin';
import HomePage from './pages/HomePage';
import AboutPage from './pages/AboutPage';
import ProfilePage from './pages/ProfilePage';
import AcoesPage from './pages/AcoesPage'; // Importe a nova página de ações
import AcoesDetailPage from './pages/AcoesDetailPage'; // Importe a nova página de detalhes de ação
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
            <Route path="/acoes" element={<AcoesPage />} /> {/* Adicione a rota para a página de ações */}
            <Route path="/acoes/:code" element={<AcoesDetailPage />} /> {/* Adicione a rota para a página de detalhes de ação */}
          </Routes>
          <Footer />
        </div>
      </AuthProvider>
    </Router>
  );
};

export default App;