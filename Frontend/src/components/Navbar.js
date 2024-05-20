import React from 'react';
import { Link } from 'react-router-dom';
import '../styles/Navbar.css'; // Atualize o caminho de importação

const Navbar = () => {
  return (
    <nav className="navbar">
      <ul className="navbar-list">
        <li className="navbar-item">
          <Link to="/" className="navbar-link">Home</Link>
        </li>
        <li className="navbar-item">
          <Link to="/about" className="navbar-link">About</Link>
        </li>
        <li className="navbar-item">
          <Link to="/login" className="navbar-link">Log In</Link>
        </li>
      </ul>
    </nav>
  );
};

export default Navbar;
