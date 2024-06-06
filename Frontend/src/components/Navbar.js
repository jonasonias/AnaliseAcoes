// src/components/Navbar.js
import React from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../contexts/AuthContext';
import '../styles/Navbar.css';

const Navbar = ({ togglePopup }) => {
  const { userInfo } = useAuth();

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
        <li className="navbar-item">
          <Link to="/acoes" className="navbar-link">Ações</Link> {/* Adicione o novo link para Ações */}
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