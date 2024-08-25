import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../contexts/AuthContext';
import '../styles/Navbar.css';

const Navbar = ({ togglePopup }) => {
  const { userInfo } = useAuth();
  const [isSubmenuOpen, setSubmenuOpen] = useState(false);

  return (
    <nav className="navbar">
      <ul className="navbar-list">
        <li className="navbar-item">
          <Link to="/" className="nav-icon" aria-label="Home">
            <i className="fas fa-home"></i>
          </Link>
        </li>
        <li className="navbar-item">
          <Link to="/about" className="navbar-link">About</Link>
        </li>
        <li 
          className="navbar-item dropdown" 
          onMouseEnter={() => setSubmenuOpen(true)} 
          onMouseLeave={() => setSubmenuOpen(false)}
        >
          <span className="navbar-link">Ações</span>
          {isSubmenuOpen && (
            <ul className="submenu">
              <li><Link to="/acoes" className="submenu-link">Lista de Ações</Link></li>
              <li><Link to="/acoes/nota" className="submenu-link">Notas Ações</Link></li>
            </ul>
          )}
        </li>
        <li className="navbar-item">
          {userInfo ? (
            <Link to="/profile" className="navbar-link">{userInfo.name}</Link>
          ) : (
            <Link to="#" className="navbar-link" onClick={togglePopup}>Cadastrar / Logar</Link>
          )}
        </li>
      </ul>
    </nav>
  );
};

export default Navbar;
